
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
        
        load "data/7PG0.pdb", protein
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
 
        load "data/7PG0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [571,591,594,618,502,590,616,619,649,651,653,901,897,623,630,873,875,876,889,545,547,812,546,373,551,366,370,371,518,784,515,517,771,783,785,774,764,767,768,770,904,1033,1057,1058,1059,838,864,863,1079,1429,1078,1125,900,1430,1431,811,861,593,872,1426,1199,962,982,1096,1097,1099,928,96,97,277,158,278,185,260,261,628,418,159,401,398,443,133,300,301,360,501,506,499,500,675,186,1200,1056,1055,1247] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [2860,2862,2863,2845,2846,2936,2937,3183,3224,2843,2839,2814,2816,2993,2890,2887,2964,2965,2962,2652,2654,2637,2638,2789,2790,2610,2612,2670,2739,2914,2915,2737,2954,2952,2653,2668,2500,2542,2767,2769,2501,2502,2503,2504,2536,2568,2566,2506,2712,2507,2508,2710,2740,3116,3117,3362,3339,3111,3112,3113,3114,3115,3288,3479,3272,3018,3020,3287,3303,3103,3104,3106,3134,3157,3360,3416,3211] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [9199,9146,9221,9147,9401,9220,9494,9495,9644,9646,9506,9508,9763,9556,9555,8936,9129,9396,9397,9399,9130,9395,9302,9304,9587,9571,9572,9624,9054,9246,9248,9249,9243,9507,8953,8785,8787,8938,8937,9233,9234,9235,9237,8954,9023,9238,9100,9277,8788,8896,8921,9002,9024,8852,9191] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [7269,7466,7467,7244,7245,7764,7400,7202,7204,7205,7322,7441,7304,7110,7111,6843,7014,7016,7126,6968,6934,7374,7217,7216,6965] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [4135,4137,9165,4510,4211,3981,3982,3983,4000,4002,4494,3667,3668,3669,4500,4512,9432,9433,9434,8961,9164,9167,4533,4534,4535,4536,4515,4522,4518,4585,4592,9666,9664,9667,4527,3427,3430,3429,3606,3595,3596,3599,4214,4511,3959,4537,4141,4198,4199,3998,8963,3631,4118,4120,4117,3651,3655,4111,4496,4122,4123,4170,4125,4171,4104,4101,4480,3634,3619,3629,3626,3627,3648,3656,4175] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [10389,10391,10392,10730,10732,10747,10748,10749,9950,10870,10868,10869,10871,10867,10891,10893,9992,10393,10462,10448,10455,10459,10472,10745,10875,10297,10494,10496,10299,11477,11480,11481,11483,11485,9207,9206,10387,10394,10400,10402,10404,10403,10384,10401,9472,9473,9474,9475,9484,9485,9486,9729,9958,10388,10422,10425,10437] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [3150,10792,10793,10797,10821,3149,3165,3164,9951,9952,10840,10747,10748,9950,10870,10869,10871,10786,10784,10785,10787,10788,10789,10855,11518,11519,11524,11525,11554,11557,11528,11531,11530,10783,2883,2882,10280,10763,11523,11522,10745,10753,9939,9940,9941,3167] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [10795,10774,10775,10829,10776,10777,10830,10851,10852,2679,2872,10794,10782,2662,11616,10778,10208,10239,10240,10241,13019,13021,10211,10227,10230,10231,12991,13178,13020,10201,11625,11653,11586,11614,11617,11618,12989,12994,13023,13024,13028,10812] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [6111,6106,6141,6142,6100,6101,6107,12719,12732,12733,12734,12739,12730,5887,6112,6084,6087,6098,12519,12744,12772,12774,12520,12553,12743,12546,12574,12575,5868,5866,12501,12502,5917,5942,5943,12554,6082] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [3591,3604,3605,3607,3608,3592,3596,9912,9653,9655,9661,9651,9905,3582,3588,3597,3598,9903,9904,9635,3615] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [13398,13402,13406,13407,4383,4384,13409,4358,13412,13416,13419,4360,13417,13421,4367,13617,13619,13618,3816,4364,13379,13503,13508,13511,13512,13528,3801,13529,13413,13456,13381,4382,4363,4356,4221,13437,4345,13435,13422] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [9184,9447,9448,9682,9446,9683,9451,3644,9186,3380,3382,3383,3615,9681,9938,9939,9940,3167,3633,3635,3632,3397,3398,9678,9909,9932,9937,9663,9665,9910,9667,9907,9912] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [13212,13213,313,11713,11715,294,13235,527,529,12984,12985,11675,11678,11680,13204] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [7073,7075,7076,7077,13387,7072,7096,7097,7313,7311,7532,13536,13537,7136,7332,7331,13356,7071,7074,13534,13535,13532,13533,13385] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [11594,2685,2687,2690,2693,2712,2508,2713,2701,737,2669,2664,1172,11596,742,743,745,1163,2525,1168,1169,756,1159,1160,1187,1189,11598] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [6350,6351,7993,6984,6985,6986,7228,6349,7910,7226,6771,6764,7000,7234,7235,7236,7237] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [1956,1964,1965,1966,1981,1972,1786,1790,1792,1793,1803,1811,1804,1801,1890,55,56,57,41,54,23,22] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [702,703,704,705,2529,2532,11697,11662,722,251,269,270,491,493] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [895,896,1736,1740,1661,1741,1665,1664,1668,1669,1673,636,645,1577,451,4,14,1732,423,450] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [8297,8298,8299,8123,8125,6367,8288,8289,6397,6398,6363,6364,6355,8124,8126,6580] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [13187,999,11645,796,11642,11643,11644,11683,13180,13183,13184,13181,13182,13211,804,795,802,803,805,998,13213] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [13047,13044,13048,13091,13092,13015,13205,13154,13171,13227,13014,13149,13012,13042] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [9213,10398,9515,9516,9517,10384,10401,9227,9483,9484,10366,10412,10411,9546,9257,9544,9226] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [3379,3141,3142,3349,3351,3370,3372,3381,9900,9929,9932,3127,3128,9898,9901,10799] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [13516,13503,13508,13511,13512,13527,13528,3801,13529,13406,13407,4383,13555,3792,3799,4380,4382] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [8716,8874,8707,8712,8717,8702,8720,8440,8857,8868,8438,8539,8721] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [842,855,1038,1039,1047,1049,1279,1050,1446,1274,843,854,844] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [10627,10103,10106,10625,10650,10722,10102,10288,10605,10121] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        