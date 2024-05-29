
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
        
        load "data/5XGI.pdb", protein
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
 
        load "data/5XGI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6368,6554,6564,5879,5134,5136,5137,4826,4813,4814,4815,4816,4790,6366,5102,1340,2125,6547,6404,6405,6403,5889,5891,5100,1341,5890,6344,6372,6373,6376,4854,6377,5182,5183,4821,5131,5132,5133,5135,6567,6569,6570,5883] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [6255,6275,6019,6020,6032,7231,7234,6340,7235,7236,7237,7130,6572,6638,6639,6276,6085,6704,6729,7147,6687,6685,7146,7226,7228,7229,7121,6084,6256,6559,6643,6561,6650,6656,6659,6660] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [7870,7871,4911,5241,7863,7862,4909,5240,5256,3525,5255,5257,3419,3239,3524,3435,3431,3434,3437,7914,3430,7873,3498,3499,3510,3515,3516,3519,3458,7855,7909,3513,7861,7911,5239,5231,5233] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [7333,7335,3445,3446,7334,9437,9476,9477,9467,10394,10396,10371,7297,7298,7299,7293,7301,7321,7326,7322,7323,7324,9404,9402,3464,3467,10393,3433,3438,3440,3442,3444,3447,3448,3426,9468,10372,10373,7886,7887,7885,7912,7913,3450,3454] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [9534,9536,9537,10277,10278,9540,9542,9568,10275,2622,10285,10252,9507,9543,9545,5242,5243,5246,5247,3549,3564,9569,3565,9603,3563,3562,3578,3589,2606,9567,9594,9595,9630,5251,5257,3416,3417,3419,3420,3421,3422,3404,3412,3414,3550,3405,3596,3597,3227,5240,10314,10350,3218,3423,10374,3426,9505,10315,2615] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [3534,3535,3537,3540,3541,1036,3523,3524,5254,4959,4961,5279,4960,3529,5284,5287,5288,1033,1034,1035,4936,4948,4950,1051,3266,3269,3372,3290,3293,3296,3297,3303,3305,3531,3528,3533,3384,3259,3530,3260,3265,3344] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [4618,4619,4620,4621,4334,4086,4089,4331,2775,2776,2777,2781,2782,2783,2784,2785,8742,8743,8744,4617,4363,4365,4099,4097,4143,4144,8749,4330,3514,7930,7926,7928,2774,8462,4093,8487,8488,8489,4090,8486,8746,8750,8753,8769,7919,7924,7925,7932,4078,4067,4072,4333,4074] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [4330,4338,4344,4349,4353,4354,4378,2993,2997,4376,4377,4140,4142,4144,4116,8761,8762,8724,8726,8728,8729,9092,9093,4151,4355,4356,2783,2784,8745,2789,8731,2802,4357,2796] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [5403,5093,5393,5394,5433,5434,5435,2341,2342,5405,5861,5862,5092,1314,1316,1306,1317,1318,2326,2335,2322,2329,5895,2001,2002,2005,1304,1307,5922,5397,5398,5391] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [5533,5507,5509,5508,5199,946,5228,6599,5224,5225,5195,6596,5534,6590,5172,5200,6619,5497,5473,5477] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [7939,8496,8497,8498,7368,7369,7371,8494,10468,8506,8507,8492,8493,7326,7354,7311,7313,7314,7315,7312,7323,7325,10428,10429,10431,7339,7349,7350,7353,7363,10467,10465] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [7939,8496,8497,8498,7369,7371,8445,8466,8467,8470,8473,7326,7316,7354,7313,7314,7315,7325,7941,7935,7938,8461,7946,7965,7967,7317,7999,8000,8464,7277,7960,7958,7959,7962] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [3512,2774,3505,3506,2756,2757,3487,3514,7930,7928,2775,2776,2791,2792,4620,3473,3475,8522,8523,3472,3474,7919,8521] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [6402,6405,6431,6432,6531,6403,2124,2125,2126,6400,6433,6434,6438,6440,6478,1355,1356,1357,6430,6428,6429,2184,2185,2149,2152,2158,2159,2162,2121,2151,6522,6467,6468,6469,6471,2155,2163] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [6646,6647,6648,5912,5913,6205,5891,1341,2014,1997,2122,2163,6194,2128,2131,2133,2127] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [922,925,710,711,927,560,561,921,919,594,892,895,918,574,690,698,595,659,897] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [8506,8507,9168,8471,8474,8500,8504,8497,7371,10468,10438,10439,10463,10464,10502,10503,10469,10437,10470,10474,10477,10465,10504,9213,9173,9201,9202,9206] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [7326,7315,7322,7324,7325,7939,8498,7298,7885,7910,7946,7947,7912,7913,3450,3457,7920,7937,8524,3440,3448] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [1286,1288,2054,1263,1330,1333,1332,4783,2073,1284,1283,1285,1289,1262,4784,4785,4786,5075,1200,5073] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [8879,8893,8910,9056,9057,9059,8865,8872,8921,9002,8922,8881,9054,9061,9064,9066] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [2776,2791,2792,8737,2822,2757,3487,3488,3490,3505,3506,2756,8527,8528,8531,8532,8533,8718,8521,3473,8522,3469,3472,3476,3474,8534] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [3369,3371,3372,3293,3533,3384,3259,3260,3340,3343,3344,3534,3541,3376] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [6320,6605,6607,6612,5204,5231,5232,5233,7873,6321,7871,5214,5241,7867,6303,6598,6319] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [6319,6348,4887,7851,5178,5177,5206,5213,7868,5215,4853,5180,5179] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [5448,5449,5487,928,929,930,897,5451,908,691,656,634,657,690,658,659,927,5457] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [8444,8427,7997,7998,7391,8464,8036,8033,8440,8441,8435,8043,8032,8042,8622,8628,8017,8020,7983,7984,7992,7993,7995,8110,8045,8044,7390] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [4457,4461,4219,4221,4467,3871,3838,3811,4432,3837,4458,3804,4428,3894] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [9468,10314,10350,3423,10373,10374,3433,3426,3417,3420,10342,10343] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [6646,6647,6648,5910,5912,6203,6205,6206,6230,6231,6232,5888,5891,6645,6652,6671,5880,5882,6246,6644] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [3338,3336,3337,2532,2537,3644,3342,3649] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [5500,6630,5875,6631,6115] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        