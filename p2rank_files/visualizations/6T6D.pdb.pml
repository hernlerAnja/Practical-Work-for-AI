
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
        
        load "data/6T6D.pdb", protein
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
 
        load "data/6T6D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3419,3420,3421,2517,2753,2515,2630,2875,2391,2393,2387,2388,2389,2390,2392,2414,2516,2940,2944,3323,3351,3352,2366,2369,2372,2413,2509,2501,2499,2500,2504,2871,2513,2889,2894,2890,2913,2909,2911,2916,2360,2361,2365,2362,2363,2364,2920,3336,3312,3313,3324,3335,3296,3427,3574,3575,2584,2585,2383,2561,3424,3426,2945,2973,2937] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4647,4649,4697,4698,4648,5219,5590,5215,5589,5182,5184,5186,5191,5188,4783,4654,4657,4676,4678,4646,4651,1989,5246,5247,5248,5201,5206,5212,5220,5245,5561,5562,5573,5657,4699,4795,4797,4798,4791,5146,5148,5150,5020,5164,5165,4677,4799,5662,5663,5665,4908,5655,5656,5659] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [6828,6829,7789,6850,6950,6952,6954,7778,7426,7427,7766,7767,6799,6848,6849,6946,6802,6797,7804,7805,7806,7392,7395,7399,7428,7345,7197,7340,7341,7777,7873,7067,7874,7875,7878,7359,7361,7364,6937,6938,7367] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [112,115,114,130,131,132,87,88,86,234,236,235,232,113,696,82,83,84,85,1059,111,1151,461,608,220,1075,1076,632,609,663,635,660,626,628,667,1047,1143,1148,343] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [3788,4436,4449,4450,4444,3652,3653,4442,4443,3656,1451,1453,1433,1452,3711,3709,3758,3692,3697,3701,3704,3754,3757,4435,4437,910,914,917,1216,1199,1201,1480,978,1439,1442] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [7531,7561,7562,7563,8927,8922,7506,7526,7527,7587,7588,8899,2260,2257,7535,7536,7538,7534,2273,7508,7165,2259,7848,799,801,802,803,1118,804,806,777,8924,8939,444,829,830,831,832,833,794,798,797,795,855,856,2228,2249] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [3584,3702,3718,3703,3767,3769,3633,3662,3663,3796,3660,3585,3586,3447,3579,3281,3285,3282,3570,3286,3539] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [1489,2156,2157,1459,1405,1412,3751,3752,1409,1410,1411,2144,2143,2149,2150,2151,1393,1396,4481,3188,3191,3741,3743,3254,3474,3476,3487,3489,3488,4479,4480,3779,3777,3778,3169,3184,3177,3180,3181,3492] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [907,908,903,4435,4437,910,914,2183,2187,2189,2194,2186,2198,896,898,1480,1476,1478,1512,2188,4448,4436,4449,4450,1451,1453,1452] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [7750,7747,7021,7022,7891,7894,7899,7900,7766,7767,6997,7898,7901,6826,6828,7789,7879,7881,6972,6823,7880,6820,6819,6996,6998,7778,7780,7877] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [7778,7780,7781,7782,7417,7419,6808,6828,7789,7765,7766,7767,7974,7975,8004,7991,7992,7993,8391,8461,8462,8459,7774,7773] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [3325,3326,3328,3313,3609,3624,4083,4093,3595,3626,3594,3319,2962,2964,3327,3611,3612,3613,4078,4081,4082,4015,4016,4017] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [1049,1050,683,685,687,1051,1052,1035,1037,1043,1312,1313,1782,1783,1796,1780,1713,1296,1325,1712] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [6242,5767,6231,5763,5765,5766,6165,5565,5566,6164,5563,5564,5778,5237,5239,5557,6232,5749,5551,5549] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [8042,8043,7739,7740,8140,8142,7947,8080,8091,8092,8009,8013,7951,7735,7961,8169,8129,8138,7733,7736,8170] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [4674,4668,4669,4672,4843,5663,5664,5665,5675,4863,4862,4842,5684,5685,5678,5683,5551,5748,5550,5534,5573,5574,4676] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [1151,1169,1171,1149,1150,1161,109,304,280,105,1020,1059,111,1036,1037,236,113,1282,1295,1017,1170] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [436,1091,1092,614,615,616,640,641,623,449,618,462,463,1129] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [7198,7199,7349,7150,7180,7372,7373,7820,7821,7347,7348,7350,7346,7160,7822,7158] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [4479,4480,4491,3779,3170,3172,3775,3813,4486,3773,3774,3778,4476,4482,3177,3180,4494,3785,4481] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [5924,5925,5446,5447,5424,5455,5450,5921,5923,5448,6612,6601,6618,6621,6623,5931,5920,5957,5422,6624,6628,6629,6633] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [2710,2718,2720,2899,2922,2754,2755,2895,2896,2897,2898,2900,2921,3368,2736] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [489,601,12,175,177,3,4,178,179,180,480,483] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [5196,5197,5604,5605,5606,4995,5173,5175,5022,4985,5008,5021] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [7817,7437,7438,7439,7548,7472,7487,7389,7826,2281,7514,7515,7831,7837] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [1330,1497,1496,1005,1003,1006,1007,1009,1010,1466,1468,1264,1279,1284,1286,1334,1364] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [5521,5523,5911,5913,5817,5725,5737,5853,5852,5519,5942] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        