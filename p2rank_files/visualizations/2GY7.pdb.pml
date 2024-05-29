
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
        
        load "data/2GY7.pdb", protein
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
 
        load "data/2GY7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1764,3626,3619,3620,3621,3622,3617,3486,3629,1753,1757,3628,4897,4928,3624,3465,3472,3461,3477,3458,3443,3453,3444,3475,3476,3481,3499,3520,3454,3456,3518,3508,3515,1755,1781,3782,1769,2453,2447,2449,3780,3781,2443,2450,2446,2440,2436,3774,3775,3469,3471,3470,3797,3415,3416,3417,3418,3419,3420,3437] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [3824,3826,3831,3988,3985,3986,3987,3801,2603,3814,3816,3817,2613,2618,2617,3404,3807,3808,3389,3393,3804,3806,3825,3979,3391,4001,2616,4003,3392,4002,2606,2610,2581,2590,3874,2580,2583,2584,2587,2588,2601,2596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3560,4134,4189,4190,4179,4182,4187,4188,4146,4135,4144,4141,4145,4287,4268,4909,4914,3558,4231,4267,4259,4265,4183,4167,3561,3564,3565,3385,4117,4121,4130,4140,3545,3547,3552,3553,3546,4194,3550,4191,4192] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [2193,3685,3740,3741,3742,3684,1896,1796,1797,2192,2168,2169,2170,2182,2183,2184,2239,2241,1882,1881,2254,1807,1810,1811] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4557,4883,4613,4614,4615,4632,4897,4895,4929,3629,1757,3454,3455,3456,3457,3526,3453,3461,4572,1745,1749,4536,4529,3525,4894,4538,4558] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [851,752,754,769,772,1703,853,855,836,842,843,840,841,1686,1687,767,768,770,370,394,789,390,278,372,262,264,125,126,128,277,279,291,301,302,303,298] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [4944,1924,4573,4870,4945,4871,4571,4572,4577,1745,1746,1747,1748,1750,1931,4599,1762,1920,1925,1758,1927,1926,4586,1928,3627] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2633,3261,2634,3258,3262,3391,2616,3392,3404,3393,3403,2618,2617,2619,3269,3364,3367,3267,3268,3360,3270,3350,3369,3396,3397,3409] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [4941,4944,1924,4870,4871,3637,3649,3650,3653,1765,1921,1922,3661,3662,1920,1919,1923,2203,1926,3638,3632,3621,4940,4960,4961] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2853,2862,1624,1630,1621,1631,1501,1632,1634,1613,1614,1620,1640,1581,2871,1583,2863,2865,2867,1509,1507,1508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [2809,2810,2843,3110,2791,2808,1505,1523,1526,1528,1290,3114,1536,1519,1530,1535,1537,3136,3138,3092,3137,1292,2832] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [3200,3193,3051,3194,3047,3048,3050,2046,2051,2052,2055,2030,2475,2476,2477,3049,2827,2828,2044,2045,3790,3211] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2804,2807,2061,2062,3134,2830,2832,2067,3136,3138,3092,3132,3135,2809] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [2892,2899,2895,2896,2903,2904,2905,2906,2907,2908,2779,1383,2883,2888,1594,1595,1093,2909,2913,1375,1384,1120,1124,1121,1098,1125,1126,1359,1360,1362] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3493,3599,3602,3589,3590,3575,3604,3843,3840,3836,3717] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [4367,4419,4421,4970,4972,4333,4437,4440,4431,4425,4341] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1427,1430,420,421,406,1419,1420,428,432,435,383,444,1425,1426,439,424] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4595,4597,4581,4582,4824,4832,4833,4607,4784,2420,2421,4596,4788,4783] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3120,3156,2753,3118,3095,3099,2752,2550,2544,2551,3155] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [329,737,1718,1720,736,1731,754,871,872,892] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4931,4925,4286,4935,3580,4287,3559,3514,3635,3642,3651,3652] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        