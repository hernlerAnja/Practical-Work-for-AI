
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
        
        load "data/5GRN.pdb", protein
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
 
        load "data/5GRN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1134,1271,1274,1275,1276,1279,1283,1286,1277,1278,1282,492,490,493,571,1268,577,575,499,525,570,495,497,530,532,578,701,702,706,683,323,324,500,686,498,501,587,591,1205,135,1204,728,718,724,325,186,337,339,341,1288,469,470,471,333,328,468,185,1296,1297,757,763,132,753,754,133,720,136,727,1132,1128,1130,1082,1126,1117,1121,1083] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1150,1298,1153,1322,1340,1341,1391,1151,1299,1436,1285,1286,1321,1309,1307,1300,1301,1319,1138,1451,1458,1139] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [779,1177,1178,764,1176,778,1367,1380,1381,816,817,1741,786,787,1745,1486,1747,1751,1759,1704] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2147,1590,1591,1592,1598,1600,1087,1088,2152,2163,1061,2167,2151,2150,2131] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [562,1018,1020,1007,1009,1017,2286,2283,2285,555,1019,1248,1010,2231,2254] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1471,1472,1473,1805,1799,1798,1474,1792,1797,1752,1400,1380,1371] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        