
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
        
        load "data/6V66.pdb", protein
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
 
        load "data/6V66.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3754,3755,3659,3756,3757,3762,3763,3228,3674,3221,3225,3226,3227,3764,3051,3211,3767,3785,3209,2690,2691,3649,3650,2882,2884,2694,2867,2729,2730,2731,2866,2876,2880,2685,2686,2687,2688,3113,3768,3771,3246,3249,3250,3675,3276,3280,3281,3645,3257,3273,2682,2683,2679,2680,3305] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [8608,8622,8718,8719,8611,8612,8720,8724,8725,8726,7847,7672,7674,8189,8190,8191,8717,7830,8096,7843,7845,8748,8195,7692,7693,7643,7645,7646,7694,7648,7649,7650,7658,7641,7642,8174,8638,8239,8243,8244,8268,8207,8637,8209,8212,8213,8236,2824,8220,8227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [5201,5204,5202,5252,5206,5389,5750,6196,6197,5251,5253,5398,5402,5404,5405,5748,5749,6276,6167,6168,6170,6172,5406,6285,6284,6181,6277,5207,5208,5210,5212,5213,5216,5217,5388,5754,5730,5731,5768,5771,5795,5796,5772,5773,5827,5798,5802,5803] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [148,151,149,198,199,154,155,156,200,157,160,336,695,696,701,1143,1144,1224,1223,1117,1119,1114,1115,1128,349,159,163,164,351,353,1231,1232,742,743,745,750,774,749,718,715,719,720,4621,4622] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [3659,3636,3647,3648,3622,3623,3660,3763,3957,3958,3943,3923,3926,3918,2713,3909,2710,2712,2708,3649,3650,2884,2695,2696,2698,3900,3901,3892,3899,2702,2703,3905,3297,4239,4228,4229,4230,4231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [3234,9812,4956,7818,4959,3259,3260,3258,3241,7817,2853,2854,3245,7816,8197,8204,8205,8208,8221,8222,9818,9821,2855,9824,8223,4947,4975,4955,4953,4954,8198,8200,9819,9820,9825,9838,9840,3235,3237,7810,7811,7815,7798,2847,2852] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [5274,5375,5376,5767,5781,5782,5763,5377,323,2450,2451,2446,7414,2454,5757,5759,7394,7395,7396,706,710,2432,2433,2431,2435,1155,7416,727,728,729,5780,6210,321,711,703,704,7388,316,317,7397,7400,322,714,304,324,5369,5368,5374,5764,5756,2425] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [1699,1727,1729,1730,1413,1414,1731,1736,4567,1648,1425,1426,1427,1117,1118,1119,1115,1116,1705,1412,164,1374,1370,1360,1361,1367,1368,1362,1365,1752,4568,1387,1395,1386,1391,1392,1398,1402,1697,1698,765,766,802] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [2367,2368,2335,2319,2300,2309,2313,5144,5092,5316,5320,5324,2338,882,884,885,886,1172,1173,1183,2334,881,883,2403,2404,5319,821,5337,784,845,844,854,818,5313,5298] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [4925,4926,7757,3703,3704,7760,7778,3316,3314,3349,3350,3352,3375,3376,3385,7532,7739,4923,7754,7751,4857,4860,3414,3416,3417,4841,4887,3412,3413,3714,7533,7585,7583,7584,7559,7761,4838,4831,4834,4890] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [260,263,266,267,273,274,275,7331,5939,7282,7301,284,7366,7367,5838,6226,6236,5938,6225,5937,5897,5907,7275,7276,5934,5935,5936,5872,5874,5898,7272,5836,245,7328,39] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [8379,8380,9727,9706,9725,2801,8666,8667,8279,8677,2815,2570,9752,9753,9755,2776,9791,9790,8377,8351,8338,8344,9699,9700,9703,8277,8348,2791,2794,2797,2799,8315,8340,8341] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [5642,5644,5645,5646,5597,5598,5599,2418,2420,2421,5664,5641,2417,2378,6262,5628,5600,5602,5603,5638,5075,7419,7422,7425,7427,5758,2453,2450,2451,2447,2449] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [705,7381,7383,611,592,7384,546,588,575,1209,585,589,547,550,544,545,7341,7371,7372,7380,593,7342,22,591,2459,7417,2462,2456,2464,2467,7412,7410,7413,7414] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [9849,4976,9846,8198,8199,8703,4972,4973,4971,4931,4969,4940,4943,8085,8086,8087,4942,4930,4939,8083,8082,8069,8079,8196,8038,8039,9851,9854,8049,8043,8044,8040] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [9804,9765,3123,3124,3122,3106,3116,3120,3075,3076,3077,3078,3080,3081,3086,3233,9807,3140,3142,9808,3228,3232,3119,3225,9805,9836,4981,9837,9838,9841,4984,3236,3740,3253,4986,4989,4990,3091] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [136,137,5007,5008,5009,3498,3499,4624,3497,4651,141,143,3521,3522,3557,148,3520,134,135,3085,3495,3525,3073,3100,3493,3496,3091,3092] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3789,4050,3790,3818,3819,3820,3872,4026,4028,3821,3824,3825,3928,3788,3791,4051,3909,3920,4048,3613] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [180,1260,1259,1289,1290,1339,1341,1080,1519,1520,178,1499,1378,170,1381,1379,1385,1294,1390,182,1077,1397] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [351,1225,1226,1231,1233,1236,1254,1239,1241,1243,677,602,678,349,519,680,517,518,1253,695,696,697,1223] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [6391,6390,6158,6386,6389,6144,6356,6359,6376,6168,6169,6170,6171,5819,6612,6662,6664,6658,6661,6672] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [5188,5189,9874,9872,9873,9516,5187,8048,8490,8488,5194,8482,8520,8484,8485,9488,9489,8063,8458,8459,8460,8461,8055] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [487,1060,1267,1269,1050,1056,1057,488,1245,1247,486,483,510,518,511,512,520,1240,1053,1236,1244] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [8512,9468,9469,5213,5215,8519,8509,8510,8507,8932,5219,6346,6347,8537,8934] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [6294,6295,6296,5564,6094,6103,6109,6298,6300,6113,6110,5563,5541,6318,5538,6320,6322,5534,5565] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [6552,6398,6482,6480,6130] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [6682,6683,6969,6805,6766,6767,6575,6810,6972] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        