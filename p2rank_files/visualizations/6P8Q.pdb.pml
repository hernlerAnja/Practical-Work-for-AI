
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
        
        load "data/6P8Q.pdb", protein
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
 
        load "data/6P8Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2419,2424,2425,5107,2022,5701,2019,2020,2021,5709,5733,5732,5725,5768,5769,5770,5771,5772,5782,5730,2432,2433,7795,7796,7798,7790,7791,7806,5781,5113,5159,5114,5116,5118,5119,5122,5123,5126,1048,5127,5130,5106,5108,5110,5157,5158,5298,5304,2409,992,2048,2410,2411,2082,2083,2412,2408,6116,6117,5704,6081,6080,6101,6102,6197,5708,6085,6087,6089,6360,6361,6364,5674,5677,5691,5692,6202,6203,6204,6205,6057,5310,5312,6228,6225,6227,6347,6366,5660,5295,5654,5655,5308,6196,5311,5637,5640,5639,5696,5740,5542,5540,5541,5546,5555,5556,5559,6198,6199,6214,5476,5477,6201,6209,6219,6220,6221,6222,6229,5418,5421,6250,5443,5448,5561,5449,6216,5478,5444] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1152,215,182,371,372,1115,1141,1151,1254,1255,1137,1140,178,179,186,355,718,719,724,736,213,214,738,741,742,1166,1167,164,163,168,169,170,171,172,174,175,166,167,1247,1246,1248,1249,1259,1264,1265,1266,601,602,606,607,622,536,537,538,1269,1271,1272,1275,1277,194,1278,701,703,196,615,619,621,368,370,187,354,700,364,501,509,1300,478,481,503,508,704,388,504,773,1138,764,765,772,768,794,797,796,749] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [8648,8604,8751,8752,7673,7857,7858,7678,7859,8773,8774,8775,7685,8769,7965,7968,8186,8797,8634,8636,8256,8627,8745,8746,8024,8756,8025,8766,8767,8768,7995,7991,7689,7665,7666,8280,7669,7670,8663,8664,8744,7704,7705,7706,8202,8743,8089,8248,8251,8255,7845,8183,7851,7855,8108,8184,7996,8109,8187,8219,8221,8224,8225,7842,8201,8232,8247,7841,8093,8094,8102,8103,8088,8763,8023,7655,7653,7654,7659,7657] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3760,3762,3110,3780,3047,3045,3046,3128,3130,3206,3208,2873,2874,2711,2871,3209,3131,3761,3681,2659,2665,2668,3273,3277,3278,3302,3111,3680,3246,3270,2662,2663,2660,2710,3115,3124,3125,2858,3222,3223,3224,3205,3243,3254,3763,3769,2875,3768,2670,2675,3770,3791,3792,3821,2892,3773,3012,3013,3814,3789,2990,2987,3651,3655,3665,2671,3656] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [2000,2001,1967,1968,1999,2002,1964,1965,1966,1969,6721,1956,2030,2033,6670,6663,6666,6667,6668,5725,5761,6381,6383,6674,1971,6696,6349,6350,6085,6087,6089,6360,6361,6364,6356,6367,6396,6379,6371,6375,6380,6366,6355,6616,6395,6677] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4931,3088,3072,3073,4923,4927,2370,3233,3746,2336,3230,2446,3074,3120,3121,2337,3138,3139,2374,2326,2328,2324,2325,2334,2333,2294,2296,2297,2295,2385,2386,2387,4934,2364,2365,2366,2363,2367,4935,2443,3070,3063,3075,3113,3117,3119,3116,3077,3078,3083,3084,3089,3103,3108,3111,3225] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [2369,2341,2347,2349,2350,2845,2844,2846,4889,4895,4896,4897,4898,335,336,4901,343,323,2351,2836,2838,2843,2352,751,752,733,750,340,734,341,342,737,729,1181,1182,4917,1178,2353,3238,3239,3256,3257,3235,3242,3234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [3421,3423,3709,3710,3719,3422,4784,4786,4781,4782,296,298,4868,4829,4867,275,278,4785,281,282,3418,3419,3312,3313,3391,3420,3377,3351,3353,3382] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [728,2375,2379,4884,4918,4882,4885,1232,594,604,607,608,745,725,562,563,564,565,574,5096,579,2383,569,554,566,37,610,4842,611,630,2380,2372,4911,4913,4914,4874,4872,4873,4881,4915,4845,4840,4876] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [8216,8235,5275,9874,8213,8217,7827,7822,5669,5687,7401,5666,5670,5280,9869,9870,9871,9868,7392,8209,8210,8212,7413,7418,7420,7398,7405,9888,5663,5665,9890,7399,7400,6132,9862,5662,7417,2471,2472,2474,2475,7829,7830,5281,5283,2489,2490,7828,2488] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [2409,988,989,2410,2411,1011,987,2049,2412,2405,2408,2399,573,1019,1021,2418,580,561,2416,2419,2424,2425,5107,2022,2020,2021,5100,5105,5106,5101,1049] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [6347,6358,6366,6308,5141,6260,6261,6262,6318,6320,6057,5140,6489,6487,6488,6465,6466,6464,6043,6232,6233,6235,6268,6272,6405,6042,5130] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [2239,2240,2319,1195,1196,2320,2800,2237,806,808,867,877,2778,2790,844,1206,909,2241,907,908,904,905,906,2236,2238,868,2284,2785,2774,2779] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [1202,1203,1201,930,933,898,928,931,970,932,934,2392,2393,1211,2361,1189,589,590,2391,2083,2104,2105,992,2410,960,2330,2290,2329] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7368,7370,6145,6146,7789,5743,5744,5813,5803,7279,7305,7286,7306,5849,5850,5851,5846,5847,5848,7283,6156,7332,7772,7779,7780,7781,5779,5804,7787,7769,7773] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [9805,8692,8693,9840,9841,8703,9760,9761,9762,9757,9758,9759,5219,5222,5226,5242,5225,5204,8396,8398,9756,8333,8356,8357,8358,8359,8290,8291,8394,8395,8397] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [9887,7431,7426,7430,5534,5508,5509,5548,5550,5551,5552,9815,9818,9847,9850,9884,9886,5503,5504,5505,5506,4981,5661,9855,9857,9858,5570,5544,5547,5656,9888,5664,5681,6182,9891] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [9896,7416,7417,7421,9900,7347,7348,7528,8099,9904,8066,8050,8051,8052,7387,7345,7385,7388,8116,8210,8211,7418,8041,8095,8097,8098,8729,8081,8056,8053,8046,8094,8115,8117] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3526,3527,3531,3501,3502,4576,3503,4575,3563,3533,3535,3082,3089,3504,3505,3506,7647,7644,7640,7642,7643,7630,7636,4545,4544] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [9911,9912,9913,9916,8698,8699,9810,9811,8076,8077,8459,8421,8422,8423,8448,8449,8481] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [4939,4941,3715,3725,3726,3481,3506,3445,3446,3482,3484,3447,3098,3099,3473,3474,3444] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4799,4941,3716,3717,3715,4877,4878,4837,4835,3481,3445,3446,3482,3484,3447,3448,3099] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [548,549,550,1057,1058,530,531,1053,5078,5079,5320,5321,5167,5169,5170,5074] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [5119,5121,5123,5124,5125,5126,1048,5127,5338,1069,5337,1040,2000,2001,1998,2002,2018,2019,2020,1038,1465,1039,1041,1473,1012] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [3629,3769,2875,3766,3767,2690,2692,2675,2678,2682,3792,3655,3665,3666,3656,3835,2874] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1925,1506,1540,1647,1927,1648,1731,1924,1926,1928,1780,1781] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        