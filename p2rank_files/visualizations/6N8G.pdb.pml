
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
        
        load "data/6N8G.pdb", protein
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
 
        load "data/6N8G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7703,5294,7691,7692,7694,7671,7672,8720,7650,7651,5750,5760,5762,7648,7668,7655,4895,4892,4896,8710,8711,8712,8718,8717,4891,5321,5756,5758,5764,871,8698,8705,4897,5315,5802,5293,5295,5296,5299,5168,5172,5787,5322,5303,7704,7984,7986,7702,7976,7978,7701,5175,5176,7728,7698,7551,7644,7593,5143,7988,7989,7990,5128,5129,5136,5137,5140,5156,5174,5173] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5733,5282,5283,5284,5285,5287,4822,4823,4824,5816,5167,5286,5815,5734,5332,5335,5339,5340,5364,4769,4770,4771,4774,4775,5373,5411,5709,5717,4782,4804,4805,4806,5824,5821,4924,4926,5710,4776,4777,4779,5403,5311,5319,5325,5331,4728,5304,4773,4910] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [3163,3164,3183,3186,4208,4209,359,4217,360,3147,3196,3198,3190,3200,3481,3483,3485,3486,3487,3475,3043,3184,3188,3227,3225,3140,3141,3142,3143,1204,5415,1207,3160,4202,5413,3085,1196,1199,750,771,1243,1245,777,778,755,759,599,592,593,596,584,585,624,628,630,631,632,751,363,1197,1200,1230,1231] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [1258,1259,1158,1166,257,247,250,290,237,238,243,244,245,768,767,242,291,239,241,760,764,748,1182,1183,738,740,742,743,1260,292,394,739,741,1264,1265,1267,378,737,795,796,820,781,787,788,791,829,196,867] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2505,2506,2507,2508,2512,2513,3077,3078,3046,3054,2498,2514,2559,2560,2561,3125,3087,3049,3053,3445,3446,2996,2997,2999,2881,3521,3522,2998,3000,3001,3421,2516,2518,2519,2526,2654,3429,2656,3530,3527,2510,2511,2463,3033,3016,3022,3025,3026,2640,2995,3045] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [7557,7561,7562,7948,7949,7924,7064,7062,7070,7586,7553,7526,7530,7533,7554,7534,7535,7020,7066,7065,7067,7068,7197,7505,7116,7117,7118,7211,7213,7507,7503,7504,7509,7389,7506,7508,8024,8025,7075,7076,7083,7086,8033,8030,7932,8031,7514] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [901,906,936,937,928,930,938,889,900,5755,882,883,884,885,902,905,5480,1960,1961,1963,5515,5767,5770,7637,1203,1212,1221,1223,1224,785,786,962,963,964,5470,5476,5478,5487,5488,5445,5446,5449,5450,5444,5778,5769,5513,6520,6519,5433,3128,3129,5426,5428,5429,5330,5780,5781,1208,5329,3121,6511,3127,1954,1955] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [3185,3187,4514,4517,29,340,31,333,336,341,3248,3223,3180,3183,359,357,358,343,4229,4248,4249,4506,3217,3218,4512,4516,3171,4213,4,23,644,27,28,47,49,372,647,645,335,648,751] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [5556,5557,5558,5559,6737,6761,5579,5134,5135,7972,7973,7974,5615,5616,5617,5588,6796,5151,5152,5142,7541,7542,7525,7527,7543,7521,7551,5143,5144,7184,7178,7179,7182,7183,7522,7516,7167,7173] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [3019,3035,3467,3471,3017,2622,1005,2610,2180,2204,1004,1028,1066,2621,600,590,591,607,3008,1065,3469,3470,1074,2627,1007,2239,1006,1008,3013,3034,3036] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [4551,4552,4553,4555,5192,7691,7693,7695,7688,7690,9017,9015,9019,7679,7681,8751,8752,9009,4867,4890,4891,4868,4875,8732,8716,8731,5189,5191,4572,5188,4550,9020,7720] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [5679,5682,5845,5846,5847,5699,4796,5027,4926,4943,5021,5063,4797,4800,4941,4803,5824,5822,5823,5268,5657,5022,5837,5662,5820] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [1645,1660,1939,1895,1896,1897,1659,8458,8459,8444,1900,1902,1667,1712,1713,1687,1889,1860,8461,8443] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [8652,8646,1686,1687,1701,1704,1706,8616,8617,1700,8469,8444,8470,8657,8659,8661,8416,8402,8654,8417,8424] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [5120,5590,7972,7973,7974,5588,7537,7996,7365,7366,7965,8011,7397,7516] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [8696,8409,8417,1660,1939,1937,1938,7609,8695,1652,843,8693] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5387,6494,6495,6496,4191,4192,4193,3906,5388,3099,3101,3102,6209,3914,6217] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [6244,3940,3941,3939,6216,6271,6217,6224,6270,6446,6457,6459,3954,6269,3955,3956,3958,6278,6202,6209] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [6243,6244,3914,3967,3968,3913,4156,6258,6261,3966,3975] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [3543,2739,2740,2741,2656,2781,3529,2530,2533,2671,2673,2982,2655,2745,2537,2539] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [3391,3394,3551,3552,3411,2541,2543,3429,3530,3526,3528,3529,2529,2532,2530,2531] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [259,264,268,1266,1280,270,523,393,394,409,411,487,483] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [1131,1147,1148,1409,1403,1289,1400,263,272,274,260,261,1267] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [531,532,661,662,663,675,505,473,497] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        