
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
        
        load "data/3GCV.pdb", protein
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
 
        load "data/3GCV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1445,1434,1435,2230,2233,1437,1438,1441,1467,1469,1490,1468,1444,1442,2243,2247,2248,1483,1484,1485,1486,1487,1489,1528,2256,1507,2255,1509,1765,1767,1768,1943,1911,1980,1982,1967,1743,1970,1972,1940,2232,2234,1843,1844,1876,1874,1873,2241,1877,1901,1903,1800,1801,1503,1516,1457,1522] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [251,264,369,371,1341,262,263,372,373,529,564,802,357,818,823,843,838,819,801,1332,1344,1352,1337,1356,1357,841,234,235,236,237,239,230,232,231,836,1330,1335,1331,1340,1312,642,1319] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1321,1323,1327,1156,1159,1161,1162,1307,1313,565,514,557,1143,1144,515,519,634,1105,1107,591,1300,1306,642,526,527,529,564,522,523,513,1106,1148,1154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2269,2292,2289,2290,2291,2297,2301,1540,1543,1529,1114,1538,1082,1112,1539,1534] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1247,1279,1275,615,604,605,1296,602,588,594,597,598,844,845,1294,1295,827,829,2718,2724,825,826,828,645,646,648,651,2719,600,663] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2671,2673,2676,2647,2682,693,696,675,683,171,669,671,670,21,22,23,39,41,7,10,11,13,707,12,2696] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1000,1002,1036,1038,628,627,1062,1063,1064,2432,1028,1029,2382,2384,2429,2388,2390,616] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [583,2487,569,601,2686,2695,2697,2700,2703,2704,2665,2667,584,2486,574,2666,2688,573,2485,2468,581] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        