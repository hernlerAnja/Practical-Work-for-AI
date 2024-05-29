
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
        
        load "data/5I9X.pdb", protein
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
 
        load "data/5I9X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1065,1096,1164,1167,1168,1169,426,428,452,453,660,678,181,274,655,672,674,526,656,681,682,683,1095,525,524,1170,427,1079,1256,1173,1174,1175,1176,1213,1214,1245,1246,1243,1249,1210,1253,289,290,164,295,403,154,291,305,182,287,275,277,283,398,401,640,156,159,1248,161,366,367,370,1247,363,365,393,397,361,396,165,166,137,140,143,131,125,127,126,128,129,1244,163,1066,1067,1068,711,704,707,689,1263,1254,1250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [841,871,863,864,865,866,888,896,898,904,905,925,1135,1140,501,510,511,1139,503,1141,1129] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [978,970,971,994,1460,1458,1459,1455,1457,1452,1453,1454,2038,2045,2030,2033,2035,1461,1462,1465,2036,2037,2042,979,2049,943] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [693,694,1108,1109,1111,1117,669,664,1155,661,534,555,1125,500,502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1821,1831,1832,1833,1834,1811,1816,2230,2256,1584,1586,1587,1589,1612,1613,1614,1656,1556] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        