
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
        
        load "data/6V5N.pdb", protein
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
 
        load "data/6V5N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3250,3253,2636,2628,2630,3192,2678,2626,2627,2632,2633,2092,2093,2091,2677,2679,2831,2828,2638,2639,2642,2643,3212,2815,3180,3622,3623,3174,3175,3702,3593,3594,3703,3711,3596,3607,2830,2832,3710,3159,3155,3156,3157,3224,3228,3229,3194,3197,3198,3221] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5344,5345,5354,5685,5686,5687,5358,5360,5361,5362,5704,5705,5706,6232,5689,5162,5207,5208,5209,5727,5751,5752,6152,6153,5722,5710,5724,5156,5157,5161,5158,5160,5168,5169,5172,5173,5195,6137,6233,6240,6241,5163,5164,5166,5754,5759,5783,5758,6123,6124,6126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [155,157,159,160,163,164,167,1114,1115,353,1232,1092,1128,349,351,151,199,198,200,147,149,153,154,156,696,1143,1144,1223,1224,1231,336,695,1117,176,178,180,172,745,749,750,148,774,715,718,742] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [8100,8542,7735,8094,8095,8622,7548,7550,7598,7547,7552,7599,7751,8075,8076,7748,8077,8079,7597,8096,8117,8118,8141,8543,8114,7553,7554,7559,8623,8513,7752,8630,8527,8629,8631,8144,8148,8149,8173] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [7620,323,324,2442,2444,8103,8105,9736,2424,710,712,729,727,728,221,322,714,9756,9728,9734,9737,706,316,321,703,711,704,2416,8102,7720,7721,7722,2426,7715,7723,7703,2422,2425,2428,7716,8109,8113,8128,8127,9740,8126,8558,8104,8110] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [7336,7342,7343,7344,7345,7346,3185,3190,3182,3183,3189,3199,3208,3637,5325,5326,5330,4895,4901,4903,4904,4905,5715,5712,5713,3207,4907,3634,2795,2800,3186,7364,3638,4923,2801,2802,2803,3193,5313,5331,5332,5333,3206,5720,5716,5719,5736,5737,5738,7348,5714] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [4177,4178,4176,4206,3892,3893,3281,3849,3847,3848,3840,3846,3850,3851,4227,4231,2650,3854,3594,3905,3596,3597,3598,3906,4184,3890,3891,3874,3871,3857,3866,3877,4187,3245,4127] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [885,2310,857,2303,844,848,7656,7659,7662,7665,2326,2356,2357,2329,2359,7644,2392,2394,2395,1172,1173,7683,7680,886,1183,882,854,821,881,883] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [9637,9638,9641,9643,266,8285,273,274,245,263,267,268,9668,9671,8582,9706,9707,284,8284,8571,8572,275,8243,8249,9615,8281,8283,8256,9622,9612,9619,8322,8183,8184,8280,8282,8253,8220,39] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [2724,2739,2742,2747,2745,2746,2518,2760,2761,2763,7314,7315,6182,7249,7276,7277,7278,7279,7245,7251,7246,6191,6181,2753,2754,7220,7227,7230,7223,5890,5891,5892,5894,5895,5856,5857,5831] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [3736,3737,3738,3741,3766,3767,3768,3769,3820,3773,3978,2657,2659,3556,3739,3857,3875,3876,3868,3914,3559,3998,3997,3999,3561,2648,2649,3856,3859,3861,2650] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [7992,2409,2411,2412,2404,2399,2400,2408,2369,9774,9762,9767,9771,2442,2445,2438,2440,7943,7944,7945,7946,7974,7988,7984,8101,7991,7990,7987,5133,9770,7948,7949,7954,7960,9764,9765,9766,8608,8607,8104] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [3651,3652,5293,3363,3365,3662,3333,3364,3323,4782,4873,4874,4779,4783,3360,3361,3362,4789,5275,3324,5284,3297,3298,3300,5290,3264,3263] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [591,592,611,593,585,588,589,1209,610,705,702,544,545,546,549,555,2453,547,550,9757,9681,9720,9721,9724,9723,575,580,583,22,2450,9752,9750,9753] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [2620,989,1026,2614,2616,2613,968,2476,2477,2478,964,994,554,990,991,962,561,569,967,2471,560,965,966] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [3090,3070,3071,3054,3064,3067,3068,7328,7329,7332,7289,3072,7290,4929,7358,7361,7362,7365,4932,3688,3025,7291,3024,3023,3035,3026,3028,3029,3034,2501,4926,4934,7360,4937,7331,3184] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5620,4887,4888,4848,4891,5602,5601,5031,5619,4920,4924,4917,4919,7367,7370,7375,5597,5584,5594,5598,5600,5544,5553,5554,5555,5556,5569,7373,5558,5559,5714,6218,5711] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [3652,5293,3662,5254,4873,4874,4835,5048,4837,4838,4805,4808,5272,5276,5277,5278,5275,5099,5279,5290] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1117,1118,1119,1370,1369,1427,1360,1361,1368,1426,1392,1412,167,1115,1374,1387,171,766,1648,1698,1708] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [5168,5169,5172,5173,5195,5176,5188,6137,6241,6138,5190,5180,6101,6126,6127,5360,5362,5209] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [1303,1341,1390,1397,1518,1519,1520,1259,1260,1378,1287,1289,1077,1081,1082] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3291,3292,2128,3248,2119,2126,2117,3205,3212,3250,3253,2627,2091,2088,2090,3254,3255,3260,3224,3221,3301,5300,5298] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [2830,2832,3705,3710,2998,3159,3079,3081,3157,3175,3176,3702,3704,3720,2996,2997,3722,3715,3061,2828] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [3716,3723,3724,3719,3539,3746,3748,2967,3747,3744,3529,3532,3535,3536,2989,2990,2991] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [2639,2643,2646,2650,2831,2651,3711,3596,3597,3607,3608,3571,2832,2658] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        