
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
        
        load "data/3GCS.pdb", protein
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
 
        load "data/3GCS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1443,1445,1446,1448,1449,1848,1893,1427,1428,1393,1394,1722,1723,2174,2187,2192,2198,2200,2199,1400,1401,1404,1485,1459,1721,1725,1826,1827,1861,1851,2185,1849,2176,2177,2178,1800,1801,1756,1757,1954,1930,1932,1892,1919,1921,1923,1467] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1302,1304,1319,1320,1322,1324,1321,1323,636,557,558,635,836,831,834,1317,1309,1315,1318,523,256,257,350,227,228,232,233,229,231,829,362,364,811,812,797,365,366] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1310,1309,522,549,558,635,627,550,583,584,1299,1300,1306,636,512,1313,1141,1147,1149,1150,1136,1137,1100,1152,1099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1019,1021,2328,2374,2351,1029,993,995,2332,612,2376,620,621,1057,1031,2326] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [819,1240,1272,821,822,837,1225,817,818,826,1286,1287,1288,1289,832,846,843,1237,839,1223,1224,1267,1281,1228,1233,1268,1229] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1490,1107,1073,2240,1111,1112,1105,1493,1075,1077,1079,1488,1115,2233,2234,2235,2241,2245,2236,1495,1501] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [637,638,1289,595,598,838,1287,820,822,2694,2695,655,644,606] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [170,663,664,17,18,668,2647,2649,673,676,36,686,2672] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        