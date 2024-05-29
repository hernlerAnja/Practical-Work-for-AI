
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
        
        load "data/4UMP.pdb", protein
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
 
        load "data/4UMP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [715,716,7836,1104,165,1075,1088,182,184,1063,1047,1240,8048,704,705,713,714,703,203,205,161,162,167,170,183,1204,171,394,154,692,696,699,1103,204,1195,1193,1196,1197,1198,1201,1226,1203,7874,7870,7867,7833,150,156,149,155,164,180,151,152,673,540,671,674,314,316,429,430,431,299,1217,1076,1077,1078,1079,1080,7882,7725,7726,1070,1064,8334,1062,8333,8023,8024,8047,1241,1242,1243,1244,1247,1248,8322,8323,1566,1252,8040,8324,1255,722,725,743,740,742,744,717,772,1450,1448,1271,1269,1260,1495,1256,7834,7897,7878,7880,7881,8005,8007,8004,8017,8021,7702,7715,8325,7707,1494,1520,771] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3189,3190,2863,2579,2581,5878,5880,6427,6652,6651,6653,5877,5879,6219,6229,5918,6606,6608,5925,5917,5914,5920,5923,2878,2879,6406,2877,6405,3179,3181,2571,3178,6418,2873,2576,2615,2547,2548,2552,2553,2590,2554,6634,6636,6637,2550,5922,5936,5945,6196,6213,6353,2737,2738,6225,5320,5321,6237,6350,2860,2730,2734,2723,5319,2736,5322,6224,6345,2903,2904,6398,6399,6401,6352,5323,5327,5453,5454,5567,5531,5532,5533,5543] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [320,338,339,340,631,632,337,362,363,364,324,8445,323,8444,8775,8767,8768,8769,8781,8782,8784,8785,8776,9028,9006,9001,9003,9007,8443,5,6,35,22,23,25,36,24,355,357,620,621,622,623,9310,34,7,9019,9279,9305,9015,9351,9011,8097,8098,8752,8909,8931,197,198,8780,8793,7863,177,7855,194,190,7852,7857,7860,7861,8901,8906] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [1180,501,680,681,682,683,2454,545,546,568,549,512,2077,2076,2078,1132,2486,2453,2477,283,284,688,684,278,2446,2447,2425,2449,2444,2445,2450,2451,2421,2433,566,687,1131,1140,1142,1121,1123,511,691,1160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5818,5819,5820,6272,6329,5646,5648,5649,7228,7229,7230,6281,6289,6291,7605,7629,5828,6277,6279,6280,5421,5422,5416,5821,5824,5825,5817,5638,5682,7603,7606,7573,7596,7599,7601,7597,5683,5703,5705,7577] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [7846,7849,7852,7857,8000,7841,7843,7839,7840,8407,8808,8809,8895,8898,8900,8901,8902,8906,8401,8405,8406,8415,8424,8427,8780,144,146,8416,8417,8454,143,7888,7893,7983,8380,8242,7889,8375,8376,7998,8131,8133,8392,8398,8402,8394,7900,7892,7899] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [5179,5180,5768,5182,3881,4115,5759,3869,3877,5192,5166,5167,5168,5169,4141,5175,4146,5478,5769,3868,3890,3865,5477,3640,3641,3298,3300] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [2745,2696,2705,2744,5303,3756,3259,3663,3664,2695,2702,3263,3271,3272,3254,3258,3257,3261,3262,2700,5300,3250,2697,2708,2713,2854,2856,2987,2988,2989,3751,3754,3758,3757,3236,2839,3248,3098,3231,3232,3283,5301,5292] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [5475,5476,5478,5769,3625,5461,5471,5328,5458,3787,3608,3607,3861,3863,3862,3864,5332,5335,5336,5352,5350,5462,3636,3638,3639,3641,3299,3301,5191,5193,2708,2711,2713,2715,2720,3649,3757,3765,2954] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [5322,6345,2690,2692,5307,5859,5862,6253,5313,6252,5836,5837,5840,5842,5850,5851,2689,5308,5321,5343,6342,6344,5810,5811,5341,5342,5677,5808,5675,5676,5437,5311,5815,5829,5833,5309,5452,5454,5568,5567,6346] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [3124,3126,3234,3238,3242,5048,2823,3245,3239,3240,3241,5069,3741,3069,3070,4692,4693,2818,5100,5101,5068,5092,5098,3691,3692,3684,3693,3701,3703,2820,2824,3103,3104,3107,5066,5036,5059,5060,5065,3681,3722] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [8825,8828,8834,8847,8848,10232,8845,8865,8389,8247,8248,8382,8383,8384,8385,8885,8251,8213,9860,9861,9862,8214,8864,10200,10231,10196,10197,10199,10223,10190,10191,7962,8270,8268,10167,10168,10179,10171,10193,10195,9849] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [8414,8817,8818,8819,8820,6709,8589,6731,8580,8581,8857,8859,8854,8855,8856,8858,8841,8867,6471,8853,6708,6707,6730,6732,6712,6711,8461,8463,8464,8465,8497,8552,8554,6700,8456,8459,8460,8462,8550] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [8865,6474,6476,6485,6490,6491,6492,9815,8213,8214,8215,8218,9811,9812,8227,8226,8228,8640,8641,8617,8618,8866,8867,6477,6481,6479,6480,9808,9802,9806,8620,8608,8609,8603,8604,8605] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7528,7531,7535,7556,7368,7520,5396,7335,7555,7557,7355,7357,7353,7331,7359,7363,7364,7366,7538,7430,7455,7537] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [10124,7942,10149,10151,9984,10280,10122,10126,10129,9960,10131,9982,9990,9991,9993] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [525,526,2021,2018,2022,2025,1162,1161,912,1163,899,2070,2069,516,513,900,903] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [5662,5663,6023,6061,6312,6310,6311,7180,5653,5650,7183,7221,7222,6085,7179] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3722,4646,3083,3084,3721,3724,3473,3469,4643,3496,3497,3460,4637,4642,3069,3070,3071,3074,4684,4685] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2205,2206,2203,2214,2215,2216,2383,258,2403,2404,2373,2379,88,2376] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5663,6023,6061,6052,7139,7140,6053,7137,7159,7160,7176,6047,6048,6049,6056,7183,7179] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [173,181,171,394,1203,369,392,406,316,430,1217] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3002,3003,3806,3808,3571,2977,3036,3573,1127,2980,3796,3805,3800,2975,3832] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [4657,4659,4519,4656,3545,3548,4655,4658,3544,3513,3514,4484,4485] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [8657,8658,9688,8680,9654,9653,9824,9825,9826,9828,8688,8689,8692] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [2000,2001,2002,1163,1981,1979,876,1982,874,903,872] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        