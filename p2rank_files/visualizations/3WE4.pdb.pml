
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/3WE4.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/3WE4.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1202,1206,1208,1218,1034,1209,1210,1058,1213,475,1329,1061,1294,1302,1376,1311,1026,1049,1050,1051,1021,1308,1204,1205,1101,1102,1078,1242,1251,1330,1241,1248,1077,414,415,416,417,418,439,1295,1225,1231,1235,1236,1230,1234,1221] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [738,740,1116,1117,1118,107,108,104,1200,1205,1089,1197,693,715,717,711,707,714,1194,1195,559,560,1196,1198,1242,1240,159,160,161,105,109,688,689,283,686,298,299,300,448,482,110] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [781,793,1605,787,1367,1577,1616,1578,1607,1617,1610,818,1084,782,784,780,1094,1085,1366,1339,1356,756,758] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [885,2123,858,879,2210,2211,2215,2234,2228,2117,2124,2128,880,859,860,862,2109,2110,2111,2113,856,861] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2021,2013,2016,2017,2008,2022,2023,941,944,2050,2049,947,962,963,964,998,1001,969,527,943,965] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1183,1182,1134,2193,1151,1152,1142,1144,697,702,568] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        