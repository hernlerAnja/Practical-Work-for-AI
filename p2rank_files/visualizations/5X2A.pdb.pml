
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
        
        load "data/5X2A.pdb", protein
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
 
        load "data/5X2A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3576,3590,3686,3577,3578,3579,3580,3581,3591,2805,2807,3692,3693,3694,2627,2629,2631,3554,3826,3830,3849,3236,3207,3211,3212,3228,3264,4102,2604,2605,2606,2607,2611,2610,2614,2615,2618,2622,3822,9498,2623,2599,9534,4155,4152,4153,3817,3879,3864,4145,4162,3878,3815,3844,3850,3819,3820,3821,2790,3177,3160,3163,3605,3606,3685,3156,3157,3158,3159,3180,3181,3204,3205,3188,3045,3046,3050,2598,2600,2602,2657,2656,2658,2799,2803,2603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5251,6278,6279,6177,5250,5252,6287,5222,5388,5745,5386,5387,5746,5747,5209,5206,5207,5212,5215,5217,5218,5221,5401,5404,5238,5223,5224,5229,5397,5405,5728,5793,6193,5784,5796,5800,5801,6163,5769,5766,6192,5777,5210,5764,5822,5825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [351,364,366,354,213,214,215,360,165,610,1254,723,724,721,722,705,707,704,350,725,368,166,167,169,172,173,178,179,1255,1159,1262,1263,1148,745,769,159,161,163,164,611,746,1174,1175,1145,1146,776,772,777,160,801,742,728,740,729,749] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [8219,8220,8600,8603,8614,8615,8604,7641,7643,7646,7645,7649,7650,8718,7662,7665,8578,7653,8244,8709,8188,8215,8189,8629,8164,8630,7637,7685,7633,7634,7635,7639,7640,7684,7686,7838,7839,8212,8171,8185,7822] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [8438,8439,8414,9861,8032,8033,8437,8417,8664,8674,8675,2593,2595,8022,8023,8435,2668,8016,8021,8407,8436,8380,9867,8665,2575,2581,9854,9855,9841,8676,8678,2585,2589,2592] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3053,3047,3050,3051,3006,3007,3009,4920,3012,3010,3011,3017,3018,3167,3042,3045,3046,3670,3671,4924,3023,3156,3159,3160,3163,3164,3054,3055,3008,7402,7403,7406,4928,4925,7399,7401,7330,7369,3073,7370,7372,7373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4889,4890,4882,5754,5755,5757,4888,4891,4892,4895,7385,3168,7405,5761,5780,5779,5762,5772,6208,2770,7387,2775,7389,7377,3165,7383,7384,7390,4908,4910,7398,4903,7403,3190,3191,4894,3169,3173,3172,3176,5374,5375,5376,2776,2777,5765,2778,5373,5368,5369] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [336,737,755,756,337,338,339,730,731,733,1190,9822,9850,2379,2385,2388,2389,2391,7802,7807,7809,7810,7808,2387,331,332,8198,8199,2407,9828,9830,9831,9834,8173,8176,8180,8181,9826] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2277,2279,912,2273,2274,2275,2276,2278,875,1203,1204,812,7769,811,846,847,849,7761,908,909,910,911,913,871,877,7752,7753,7756,7749,2322,2319,2320,2321,7524,7525,7575,7576,7577,1213,2355,2357,2358,7746,7767,7731] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [9735,281,282,9716,8314,8315,8316,9709,8658,8659,296,298,8254,8255,8290,8292,290,8352,8353,8354,8355,8356,8668,9736,8351,8325,8324,278,47,96,285,9762,9763,9764,9761,9800,260,9801] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [619,618,620,616,638,9818,615,725,573,571,572,602,612,610,724,574,9775,9815,9814,2417,9844,9847,9848,9851,2413,1240,729,732,749,728,611,576,577,582] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3634,3635,5318,5335,3282,3284,3246,3247,3306,3309,3385,4785,3345,3347,4779,4780,3343,3344,3348,3307,3308,3319,3316] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [8009,2408,9860,8695,8172,8175,8006,8007,7508,8053,8054,8047,8051,8055,8050,8073,8008,2332,2371,2372,2375,2401,2374,2404,8012,8037] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [598,996,964,971,2428,2445,938,2434,2435,2436,2439] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3722,3749,3750,3751,3752,3721,3830,3849,3544,3755,3756,3792,3791,3793,3951,3973,3975,3950,3842] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [2621,2831,2832,3782,3835,9499,2830,3779,3780,9477,9478,9479,3824,9446,8950,8952,8485,8487,8939,8942,8526] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5935,7271,5895,5899,5906,5932,5934,7264,7268,2737,5835,5836,5903,5904,6221,6235,2724,5896,5871] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8711,8143,8145,7839,8717,8741,7837,8729,8728,7979,7981,7982,8722,8709,8164,8044,8712,8739,8740,8058,8059,8062,8064,8160] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [8008,2529,7991,8005,8004,3112,8503,8504,8505,8468,8470,3106,2570,2571,2815,2814,2816,3118] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [4173,4298,4450,4452,4454,4309] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        