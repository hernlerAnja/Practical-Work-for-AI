
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
        
        load "data/7UKW.pdb", protein
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
 
        load "data/7UKW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7368,7412,7367,7411,7413,7564,7395,8423,7566,7909,7910,7913,7917,7918,8312,8282,8285,8286,7378,7382,7383,7386,7390,7391,7942,7366,7372,7373,7376,7886,7370,7549,7883,7865,8311,7752,8296,8391,8392,8393,8394,8400,8398,7688,7869,7862,7751,7765,7768,7864,7848,7887,7888,8260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [3557,2611,2612,2749,2762,2763,3089,3090,2613,2764,2765,2766,3645,2748,3527,3528,3532,2585,2596,3091,3156,3158,3162,3163,3131,3132,3155,3128,2560,2561,2562,2564,2565,2567,3187,2044,2045,2599,2572,2573,2576,2577,2578,3556,3107,3108,3109,3110,3636,3637,3644,3541,3015,3093,3667] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [5594,5595,5014,5016,5017,5012,5013,5586,5590,5587,5619,6069,5988,5989,5959,5204,5205,5206,5207,5058,5057,5059,5208,5018,5019,5542,6068,6070,6071,6076,5973,5546,5560,5191,5540,5541,5563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [733,736,740,1135,1215,741,1105,138,139,144,145,146,147,765,709,142,327,140,190,692,706,711,1134,1106,1108,151,1214,344,1222,189,191,341,343,177,669,686,687,688,671,668,336,340,326,1223,1119,150,154,155] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [5726,5728,5730,5731,5689,262,7019,7027,5692,266,261,5691,5693,7048,275,5628,5630,5666,6018,6028,5727,5729,6017,5695,5699,5702,236,254,7111,7112,30,7075,259,7073,7074,7076,7046] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [8012,8341,8351,8049,8051,8053,8054,9371,9374,9381,9427,9428,9430,9466,9463,9465,9400,9397,2679,2697,2681,2682,2683,2684,7987,7989,8014,8015,8016,2658,2673] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [2736,3123,7534,7535,7536,7537,4819,7528,7529,3141,3142,2735,2737,2734,2730,7895,7896,7897,7881,7878,7879,2729,3116,3119,4815,9486,9487,9515,4807,4813,4814,4816,4817,9488,7874,9493,9495,9496,9499,4835] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [314,315,312,313,705,7133,7132,7162,695,697,701,2368,5177,5178,719,720,2374,2377,2380,5172,5179,718,2375,2376,5171,7139,7140,7141,7142,5566,6002,5573,5574,5555,307,5572,2396,6005,6004,5547,5176,5552,5556,5559,5550,2363] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [5125,2278,2282,2262,2252,2253,2254,835,837,839,2310,4904,4955,5122,5126,5129,2281,2308,2311,2309,2346,2347,5119,1163,1164,5143,847,812,1174,872,873,875,877,5104] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [3528,3817,2580,2584,3530,3531,3532,3765,3783,3818,4096,4099,3803,3804,3769,3767,3215,3179,4039,4077,4080,4081,4084,4085,4088,4089,4090,3759,2577,3786] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [3267,3268,3294,3295,3296,3299,3596,3298,4701,3257,4694,4785,3586,3585,4721,7497,7479,3231,3232,3234,3258,3197,3198] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [6093,6094,6095,5224,5225,5526,5366,6090,5367,5309,5308,5429,6081,5542,6068,6070,6071,6072,6073,6076,5041,5205,5207,5430,5447,5449,5524,5525,5434,5443,5444] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [3490,3788,3911,3746,3910,2595,3673,3672,3700,3887,3889,3502,3503,3505,3495,3493,3769,2593,3770,3776,3781,3707,3701,3703,3706,2584] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [7172,7175,5394,5396,5397,5402,5392,5393,5391,5382,4887,6054,5438,5440,5436,5550,5549,5551,7167,2397,7170,5422,2390,2393,2394,2357,2361,2364,2353,2321] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [4133,3789,3804,4143,4127,4139,3803,3805,3765,3778,3818,3794,3730,3762,1988,1989,3758,3759,4136] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [960,935,938,928,1180,1181,1169,1179,2388,2407,2413,902,550,551,561,562,1183,958] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [13,536,583,584,7086,531,580,7125,7126,7129,602,579,576,538,2402,7158,7161,696,7128,2405,540,541,546,566,1200] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [4746,7258,4783,4785,4747,3299,3596,4720,4748,4750,3586,4721,7497,7476,7479,7480,7458,7309,7473,7483] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [3622,2988,2998,3002,2957,2958,2959,2960,2962,2963,2968,3006,3004,3005,4841,4843,4844,4845,2969,9513,3024,9480,9482,9483,3001,3118,3573,9516] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [9521,9524,7712,7713,7714,7757,8377,7760,7759,7753,7715,7717,7718,7728,7723,7724,7729,4832,4833,4836,7761,7756,7779,7872,7873,4800,4802,4803] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [2996,3009,3109,3636,3638,3639,3644,3010,3013,3015,3093,2932,3667,3649,3666,3652,3654,2930,2995,2762,2763,3091] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [1109,1223,168,169,170,171,172,173,1083,1119,1321,154,155,158,162,177,344,1108,151] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [1250,1278,1279,1281,1072,1073,1251,1461,1462,1463,1316,1317,1333,1442,1285,1331,1284,1321,1340,1068] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [2972,2973,2984,3382,3591,3601,3602,3603,3604,3605,3606,2983,3358,3360,3357,4840,4827,4794] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [2924,3468,3469,3473,3470,3681,3682,2900,2901,3658] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [1949,1951,1952,1793,1352,1661,1804,1662,1554,1755,1754,1520,1375,1351,1344] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [8681,8789,8881,8925,9076,8920,9079,8647] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        