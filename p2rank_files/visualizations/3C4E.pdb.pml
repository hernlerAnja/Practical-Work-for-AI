
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
        
        load "data/3C4E.pdb", protein
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
 
        load "data/3C4E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2961,2962,2969,2960,3450,3360,2976,3361,2958,3002,3003,2762,2763,2765,3447,3449,2913,2920,2924,2936,2908,2909,2366,2365,2463,2321,2322,2315,2316,2317,2319,2659,3451,3452,3455,2343,2478,2346,2344,2345,2347,3438,3444,3344,2689,2348,3332,3333,3334,3337,2349,2993] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [237,89,90,91,93,95,96,138,139,140,682,683,540,1134,1223,1135,1224,1106,1118,1221,1225,743,747,750,536,539,463,119,120,121,122,123,117,118,252,433,1226,1229,1230,1232,94,730,732] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [7406,7407,7414,7777,7806,7895,7778,7789,7403,6767,6760,6766,6809,6810,6811,6762,6764,6765,6791,6792,6794,6789,6790,6793,7903,7421,7780,7782,6761,7381,7805,7892,7894,7211,7358,7369,6908,7353,7104,7896,7900,6925,7401,7405] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [5668,4584,4682,5669,4534,4535,4540,5195,5139,5579,5188,5175,5177,5180,5580,5222,4562,4585,4563,4565,4567,4564,4566,4568,4541,4536,4538,4539,5143,5657,5663,5666,5551,5670,5671,5674,5563,5677,5132,5127,4984,5128,4908,4982,4981] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [4235,4214,4193,4200,3748,3750,3756,3759,64,65,66,70,71,73,79,150,76,4198,83,86,3751,3752,3744,3508,3515,3734,3740,3746,3755,3760,151,3517,4233,4225,4230] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [5435,5439,5466,5468,5436,5442,5444,5474,8519,8546,8547,8550,8553,8555,5432,5410,4958,8517,8520,8521,8541,8543,8544,8579,8580,4921,4947,4948,4950,4954,4955,4956,8578,4945,8576,5406] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [6291,6294,6295,6293,3249,3246,3255,3223,3225,3191,6318,3217,3220,3207,3209,3216,3187,6320,6324,6327,6329,6321,2726,2735,2736,2738,2740,2731,2725,2741,6323,6350,6352,6353,6354,2737,2739] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [5207,5546,5547,5211,5213,5214,5247,5555,5240,6071,6097,5838,6112,6111,6113,6139,6105,6104,6140,5811,5829] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [1236,1245,1111,1231,1232,425,429,417,421,1246,1247,317,326,323,327,322,1355,120,122,109,110,111,112,113,114,432,254,270,310,301,314,1118,1107,1077,1253,1093,1094,1365,1358,1351] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [2992,2994,3327,3328,3885,2995,3336,3021,3878,3887,3852,3892,3894,3920,3921,3610,3619,3893,3592,2988,3028] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [766,768,1659,1667,1668,1384,1695,1110,1393,762,793,795,1102,1660,1652,1626,802,769] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [8339,8366,8055,8365,8337,8338,8064,7466,7773,8297,8323,8330,8332,7473,7439,7440,7433,7437,7780,7781] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [7764,7765,7748,7903,8022,8026,6791,6777,6780,6784,6793,6781,6782,6783,7778,7789,7780,7781,7782,7917,7924,7918,8036] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [4367,4376,4380,4381,6176,4383,6117,6129,6172,6173,6174,6175,4365,4368,4375,6227,6228,6211,6224,6212,3417,4373] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [2548,2549,2552,2553,3473,2651,2543,2541,2536,3471,3472,3479,2527,2540,2338,2341,2342,2496,2336,2337,2658,3457,3458,2340,2480,2339,2640] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [4183,4187,4194,4190,4195,4196,82,4197,4201,4202,86,104,3737,3647,3648,3710,3692,3709,3711,3714,3730,3719,89,90,95,96,102,99] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [5690,5691,5692,4762,4767,4746,4555,4556,4557,5676,5677,4699,4561,4715,4559,4560,5698,5522,4870,4874,4877,4760,4759,4859] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [8454,8456,5633,5407,5408,4967,4968,5634,5635,5636,5380,5383,5384,5386,5640,6593,5632,5382,4966,8439,8446,4960,5410,4958,8461] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [67,66,19,44,20,21,244,150,618,3519,3520,3521,263,264,151] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [8402,5636,8454,6586,6595,5616,6599,6600,6602,6584,6592,6593,6594,8355,8437,8450,8353,8395,8397,8398,8399,8438,8343,8400,8423,8424,8425] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [6972,6985,6986,6941,7924,7918,6998,7902,7916,7917,7100,6787,7103,7092,7096,6997,7748,7903,8026,6781,6782,6783,6784,6785] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [6274,3248,3236,4233,4247,4248,4251,4236,4240,3238,4243,4245,6288,6290,6294,6295,3212,6273,3211,3210,6301,6296,3750,3751,3749] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [5676,5538,5539,5563,5677,5556,5690,5691,4554,4555,4556,4565,4567,5522,5810,5796,5698] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [4374,6230,2737,6220,2739,3414,3161,3164,3165,3167,2741,3415,3416,2745,2749,3421,6213,2747,6228,6235,3191,3189,3188,3163,3190] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [3479,3577,3581,3303,3591,3457,3458,2340,2346,2339,2338,2336,2337,3344,3320,2335] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [6452,6466,6470,6462,8500,8514,6455,6459,5431,5432,8511,8516,8520,8521,8522,5425,5428,5455,5461,5462,5429] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [4690,5120,4488,4689,4469,5063,5103,4511,4708,4709,4512,4464,4465,4492] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [2918,2934,2935,2766,2914,2916,2919,2921,3416,3433,3434,2746,2917,6216,3400,6201,3401,2922,2931,3377] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [4535,5195,5221,5222,4567,4568,4541,5554,5556,5552,5210,5553] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [1924,2070,1883,1884,2035,1920,1921,1923,1918,2038] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [3766,3767,3770,3273,3241,3311,3275,3285,3286,3289,3763,3764,3287,3796,3797,3288,3743,3765] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [4264,4147,4149,4150,4109,4110,4144,4146] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [6934,6935,6694,7289,6915,6714,6715,6737,6738,6695,6693,6820,6822] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        