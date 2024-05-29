
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
        
        load "data/1Q4O.pdb", protein
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
 
        load "data/1Q4O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2667,2668,2671,2689,2950,2952,2953,2954,2672,3102,2666,2038,2043,2023,2041,2044,2046,2921,2924,2926,2920,2047,2902,2969,2970,2909,2918,2917,2908] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1194,1196,1201,1210,338,340,341,343,1216,1218,1068,344,979,980,1261,1262,320,968,335,964,1212,1242,1243,1245,1246] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [265,271,277,281,284,274,285,1313,1314,1304,259,1312,1291,1292,291,1155,1165,1288,1299,6,1151] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1452,1470,1476,1478,2229,2233,1453,1454,2093,2096,2097,2098,2520,2521,2522,2523,1504,2529,2106,2554,2214,2217,2234,2236,2531,2102,1320] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1994,1985,2863,1980,1988,1968,3000,1991,1974,1977,3021,3014,3012,2996,2999,3022,1962,2859] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [367,369,370,371,876,878,879,880,918,852,406,404,874,875,877,820] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1404,1366,1532,1531,1442,1444,1421,1422,1423,1347,1367,199,201,202,203,1349,1350,1368,1374,1376,1548,1547,235] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1499,2355,2357,2375,2376,2498,1514,1515,192,1508,172,191,2497,1507,2249,2358,1503,2504,2505] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3057,3240,3074,1906,3055,3131,1904,1905,3239,3129,3130] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1411,1409,1389,1358,1359,1260,977,978,1261,974,975,976,307,304] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1092,1094,1202,1205,1207,1604,1605,1606,1576,1577,1578,1567,1569,1236,1220,1224] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        