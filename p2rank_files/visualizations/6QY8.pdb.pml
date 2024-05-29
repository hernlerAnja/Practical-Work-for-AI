
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
        
        load "data/6QY8.pdb", protein
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
 
        load "data/6QY8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5658,2386,10091,10301,10303,5780,5659,5779,5795,5792,10300,2370,2343,2344,2649,2652,2653,1016,5672,5673,5679,2392,2393,2394,2395,10596,2384,10544,10546,2609,10595,10597,2643,2645,2638,2640,2648,5682,10113,10114,10115,10116,10117,10077,10086,10554,10562,10557,10534,10540,10543,10550,10142,10144,5766,5765,5767,10566,10149,10151,10569,2676,2677,10146,10084,10087,10088,5817,5818,10078,10089,10058,10062,5837,10295,10292,10297] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [9331,8948,8951,9333,9332,9430,8931,8944,8947,9304,9317,9429,9427,9431,9435,8767,8904,8906,8928,8932,8551,8766,8768,8901,8903,8910,8452,8451,8550,8563,8905,9438,8436,8565,8567,8409,8410,8412,8415,8403,8406,8404,8407,8414] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [1263,1264,1358,1360,1361,377,691,692,491,493,828,1248,1362,1366,1369,1235,495,342,361,343,1262,693,829,830,831,826,1239,876,334,335,337,339,340,327,329,331,332,333,376,478,479,856,869,873,857,851,849,853,858,835,872,328] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [3012,3005,3006,3007,3010,3011,3009,3055,3054,3156,3157,3504,3506,3508,3374,3513,3531,3534,3527,3529,3372,3550,3554,3547,3551,3939,3911,3940,3171,3172,4040,4041,4043,3924,4032,4035,4036,3938,4034,3373,3507,3509,3912,3915,3568,3017,3018,3039,3535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [5851,5852,5731,5746,5747,5867,5868,6216,5869,6747,6748,6750,6219,6218,5702,5698,5699,5704,5705,5707,5709,5701,5710,5712,5713,6261,6264,6643,6644,6260,6244,6645,6616,6617,6620,6629,6084,6739,6741,6742,6743,6082,6241,6245,5853,6214,6083,6217] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [9293,9587,9595,9970,9599,9636,9637,9603,8415,8425,8418,8419,8421,4585,4586,4824,4826,4817,4821,4828,4854,4855,4856,9571,9572,4811,4812,9462,9463,4818,9464,9438,8436,8430,8426,9570,9573,9292,9590,9593,9594,9304,9305,9306,9317,9277,9435,9307,9613,9615,9616,9309] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [10662,10663,10669,10670,10487,10489,10676,10677,10678,10685,2232,10684,1989,2015,2230,2231,10718,10719,2014,2013,2440,10521,10522,2439,2461,1993,2474,10664,2448,2493,2496,2522,2523,2524,2041,2043,2044,2047,2042,2470,2471,2473,2489,2415,10520,10615,2449,10616,10641,10644,10645,10642,10643,10646,10486] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [953,970,972,5876,5877,951,952,954,956,957,6180,6168,5622,6145,6146,6148,6179,5873,5887,5897,5881,6181,973,2356,2358,961,967,944,5665,1288,1299,1290,5738,5739,5740,999] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [2277,2276,10305,10510,10511,10513,2403,2409,2410,2413,2404,2405,2437,10488,10521,2261,2383,2381,2384,2415,10519,10547] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [3177,3045,3046,3047,3048,3180,3181,6353,6380,3469,2930,3436,3438,6342,6348,6338,3458,3470,6671,6335,6332,6333,6334] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [3181,2975,6353,2930,3436,3438,6342,6348,6351,2968,6354,7731,7735,7737,6332,6333,6334] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [10204,10207,9977,9979,10235,9978,9967,9968,9969,4564,4572,4565,4568,4583,9980,9981,4567,9686,9687,9688,4573,4575,9576,9669,9661] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [3024,3028,3029,3033,4069,3196,3229,3230,3017,3021,3018,3189,3899,3900,3884,4039,4059,4060,4062,4067,4068,3172,3173,4041,4042,4043,3924,3266,3912,3914,3913] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [10590,10592,10593,2449,10616,10583,10644,10645,2596,2597,10594,2612,2589,2590,8099,8100,8101,10646,10596,2416,2542,2568,2603,2446,2447,2448,2543,2474,2570] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [7063,7066,7089,5384,5387,7054,5388,7907,7924,5405,7927,7929,6520,6522,7930,5415,5392,5394,5413,7048,7052,7062,7053] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [5513,5552,5520,5522,5542,6789,6790,5541,6842,6844,6843,6821,6823,6820,6822] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [9477,8246,8247,8257,8230,8235,9530,9532,9509,9510,9531,9478,8218,9511,8225,8227] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [1440,1442,182,150,152,1462,1439,1441,1409,1408,1463,1461,143,155,171,172] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [1223,1248,1369,343,344,346,350,351,355,1208,1393,1394,1395,1224,1236,1525] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [9477,8613,8615,8247,8614,9536,8650,8599,8621,9543,9554,9558,9561,9267,9548,9532] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [5725,6748,6749,6750,5940,6589,6774,6775,6776,6766,6767,5721,5939,6604,6605,5713,6906,5716,5720,6617,6629] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [2713,4347,4350,5228,2695,4341,2692,2696,2700,2723,3791,3817,4355,4359,5229,5223,5226,5206,5234] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [8650,8599,8622,9572,4809,4812,4806,4290,4291,4293,9561,9573,9558,4805,4792,4793,4289] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [9736,9742,9745,9210,8092,8093,8089,9751,9754,9750,8110,10621,10622,10623,10633,9184,8104,8120,10618,10624] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [1546,1558,1559,1833,1222,1544,1524,902,1238,1240,1224,1231,1832] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [4082,4083,4136,4137,4114,4116,4113,4115,2849,2821,2828,2830,2833,2850,2860] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [35,2548,2550,1141,1673,1676,18,22,14,17,1667,2545,2551,2528,1681,1685] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [10305,10510,10511,10513,10334,10512,10322,10349,2277,2252,2274,2407,10325,2384,10488] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [6605,6619,6621,6925,6927,6905,6603,6939,7213,7214,6290] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [3898,3907,3914,3916,4198,4232,4233,3900,3580,4506,4507,4218,4220] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [4555,4556,4567,4828,4829,9962,4863,4566,4583,9959,9949,4864,4618,4860,4861,4592,4593,4594,4595] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [9825,9324,9341,9118] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [3395,2955,2957,3404,3149,3096,3132,3119,3398] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [4430,3725,4456,3613,3710,3948,3640,3931] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [6405,6407,6406,6408,6409,6410,8064,6695,6696,6697,6371,8066,3000] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        