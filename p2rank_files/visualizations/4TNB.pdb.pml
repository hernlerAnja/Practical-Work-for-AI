
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
        
        load "data/4TNB.pdb", protein
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
 
        load "data/4TNB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2560,2561,2461,1529,1531,1637,1639,1640,2477,2568,2567,2569,2478,2449,1493,1481,1484,1486,3705,3706,1475,2078,1625,1478,2062,1530,1476,2036,2048,2051,1906,2031,1487,1494,1495,1496,1497,1498,1501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1881,1882,2508,2509,2510,2512,27,9,20,28,29,30,4049,4052,4084,4086,1597,1598,1599,1600,4085,4018,4016,14,3618,3620,3617,3614,1877,2544,2545,2524,2491,2494,2523,2054,2039,2043,1604,2046,2526,2507,1912,1914,4019,2038,1617,1911,2033,1879,1891,1893,2525,2528,3598] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1937,1939,3992,1409,1410,1385,1399,1405,4030,4033,1407,1563,1369,1386,1361,1360,1332,1362,141,143,146,155,1336,1587,4069,1580,147,1374,1379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1495,1496,1497,1498,1499,1501,2421,1508,1510,1511,1769,1507,1509,2587,2565,1639,1640,2566,2567,2569,1799,2578,2579] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2320,2323,3607,3608,3609,3610,2301,2321,2322,3478,3611,1017,3582,3583,3476,1014,3453,2354,3580,2330,2331,2300,1892] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2823,2826,2811,2822,2654,2617,2642,2653,2828,2834,2838,2839,3360,3403,3404,3405,3406,3362,2832,3441,3401,3440,3443,2864,3411,2830,2831,2375,2376] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [573,577,1090,440,574,576,321,1089,1087,1118,549,430,355,401,402,439,346,428] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2727,2728,2938,2978,2982,2452,2453,2454,2135,2095,2096,2136,3009,3008,3018,3021] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3635,3543,2238,2211,2237,3544,3555,3636,2247,3640,3633,3657,3658,2243,2245,2209,2214] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [356,573,577,1090,574,1089,1088,633,632,599,600,603,597,1058,1016,1038,1041,1042,355] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        