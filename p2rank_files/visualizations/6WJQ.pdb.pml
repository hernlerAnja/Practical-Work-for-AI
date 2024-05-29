
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
        
        load "data/6WJQ.pdb", protein
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
 
        load "data/6WJQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2416,4012,3995,3997,3660,3674,3675,3676,3658,4009,4013,2417,2723,3040,2418,2422,4343,4344,4347,2421,2415,2739,2740,2732,2735,2736,2742,3054,4016,4353,3977,3978,3979,3647,3656,3345,2432,2436,4365,2435,2439,2440,4364,4361,3394,3383,3389,3390,3393,3368,3681,3680,3691,3695,3697,3699,4019,3374,3384,3367,3369,3373,3059,3055,3356,3080,3081,3069,3070,3075,3076,3060,3352,3353,3349] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1108,1110,1111,1112,1404,1405,1107,1401,1409,1423,1429,1749,1387,1385,1095,1376,1428,797,798,801,802,483,803,1096,1099,783,1088,1092,166,170,2066,2070,2071,1741,1744,2067,1748,1709,1710,180,184,2076,2084,2087,484,163,164,165,169,486,480,1730,1731,467,4563,187,188,823,824,1116,1127,1133,1419,1420,1424,1426,819,818,812,813] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1537,1554,1555,1557,1553,1550,1551,1552,1232,1233,1228,1465,1479,1372,1219,1358,1466,1371,1478,1490,1491,1337,1338,1341,1342,1593,1252,1569,1572] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3482,3643,3626,3628,3629,3761,3762,3778,3806,3808,3826,3613,3600,3601,3828,3607,3608,3614,3495,3750,3822,3823,3824,3825,3603,3604] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2603,2604,2605,2618,1427,2637,501,504,505,483,187,188,2457,2459,2590,2593,819,822,1135,2475,823,824,1424,1426,2578,2579,2581,818,812] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4579,260,4571,259,449,257,4550,575,442,443] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4653,4660,2377,2511,2698,2699,2697,2509,2512,2375,2828,2831,4632,2696,2705,4633] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [513,2316,499,837,974,533,534,511,512,838,2315,535,686,4523,841,976,977,828,4522] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1147,1148,1281,4381,4371,4373,833,1140,1150,1153,817,854,847] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2471,2472,2474,2911,2647,2461,1433,2906,2646,2561,2638,2910,2914,2773,2782,2907,2908,2765,2449,2462] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3708,3725,3727,4194,4204,3700,3692,3693,4020,3815,4195,4017,4035] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4658,3469,4681,4683,4673,3154,3961,4635,4638,4640,3033,3035,3975,3980] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [778,4556,4558,1693,4576,4599,1696,776,897,4553,4578,4600,4590,4595,1206,4601] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1429,1752,1754,1926,1927,1749,1788,1936,1428,1792,1767,1790,1789,1436,1437,1421,1454,1456] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [391,658,309,651,390,379,517,526,209,217,220,219,222,197] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        