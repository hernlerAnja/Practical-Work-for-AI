
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
        
        load "data/5ITD.pdb", protein
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
 
        load "data/5ITD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6235,4871,6014,6238,6073,6232,4872,4820,4821,4822,4506,4786,4788,4789,4790,4823,4825,6012,4541,4543,4510,6041,6044,6045,6048,6071,6072,4514,4532,4503,4504,4505,4507,4508,1353,4824,4826,5557,5553,5562,6316,5565,5563,5564,6036,6215,6222,6231] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [18,34,44,19,21,12,15,29,23,5179,6262,5189,5190,5191,5216,5188,972,974,587,735,736,950,4888,4889,955,4907,4913,4914,4917,4919,6271,4908,4909,4861,4884,6258,6264,6267,6286,5215,6285,5246,5272,5951,5247,5281,6270,6274] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [6372,6355,6834,6835,6353,5944,5694,5706,6918,6919,6922,6924,6914,6915,6916,6917,6809,5730,5731,5753,5752,6305,6306,6307,5923,5924,6311,6318,6322,6324,6327,6226,6227,6228,6229,6330,5980,6006,6007,6008] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [4935,4936,8862,3439,3455,3442,3467,3104,3293,3294,3296,3298,3299,3283,3289,3291,3427,3473,3474,4929,4946,8852,8888,8858,8859,9475,9476,9478,9479,9480,9516,9517,2487,2480,8803,8792,8794,3297,8824,8825,8826,8827,3300,3095,2483,3096,8853] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [4928,4930,7513,7503,7505,7512,4929,4945,4946,3393,3396,3296,3298,3299,3312,3116,3283,3289,3376,4596,3401,3375,3390,7497,7551,4609,4607,3387,3308,3311,7555,7515,7553,7554,7556,7514,7552,3297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [1070,3180,3170,3173,1071,4625,1069,1055,1054,4648,4649,4650,3405,3406,3408,3410,3411,3414,3136,3249,3146,4639,3139,3142,3143,3132,3221,4967] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [2044,6099,2065,2066,2043,2040,2003,2005,2006,1368,1369,2002,2033,2072,2073,6070,6073,6135,6136,1431,6146,6102,6105,6107,6098,6100,6190,6218] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [3323,3321,3322,8726,8723,8725,8734,3344,9573,9574,9571,9607,7002,3341,9633,7003,7004,8662,8695,9596,9597,9599,8735,8691,8694,3324,3325,3326,7527,3327] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [955,957,5165,5168,720,716,717,682,683,684,694,954,5130,934,922,923,660,5133,931,932,5164,5197,5199,5200,718,719,5162,5187,5169,5488,695,5491,5139,5167,5496,5460] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [4085,2354,4083,4086,3600,4146,4148,4115,4117,4118,3636,2915,4114,2901,2909,3594,3595,3599,3617] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [101,100,5280,98,80,81,82,83,9396,8870,8840,8876,8879,8878,74,77,78,38,8867,37] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [4031,2647,2648,2650,2649,4045,4050,4053,4054,2654,4073,4074,4075,3850,4039,8241,8274,8275,8244,8246,8258,3852,3824] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [5080,5082,5083,5115,5116,5117,2219,5569,5535,5536,1319,4781,4782,1886,1328,1329,1330,2203,2199,2212,1318,1326] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [3364,3361,3365,3366,2621,2622,2641,3382,3383,2686,8235,2656,2657,8250,8084,8079,8085,8074,8077,8078,8265,3349,3350,3352,3353,3351] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [8084,8050,8074,8077,7579,7580,7581,8054,8051,3349,3350,3352,3353,3351,7561,7562,3364,3361,2641,3382,3383,3391] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [3303,3300,9576,3095,9552,8763,8792,8794,8795,8761,3297,9516,3294,9542,9575,9544] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [2044,2043,2014,1893,1895,2009,2012,2011,2016,5871,5873,5565,5586,5587,1878,1894,5862,5861,5863] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [8315,8314,8429,8431,8226,8291,8242,8214,8445,8439,8440,8121,8107,8108] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [4620,3177,2929,3199,4630,4638,4640,4341,4342,4343,2928,4660,4663,4654,4672,4673] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [6316,5873,5565,5584,5586,5587,5898,5554,5562,6313,6320,6339,5900,6315,6314] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [4491,4492,4526,4241,7425,6077,6082,6110,6108,6147,6114,7401,7403,4239,4240,4512,4515] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [8193,8195,8160,8161,8196,8197,8198,7968,7970,7972,8374,7960,8373,8375,8382,7920,7928,7915,7921,7922,7914,7916,7971] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [7631,7678,8171,8172,3801,7601,3798,8015,8017,8011,8030,8029,3782,8006,8009,7641,7640,7639] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [8019,3808,4032,4035,7567,7568,7570,4308,4309,4310,3786,3775,3780,3782,3790,4034] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [3170,3173,3226,3136,3247,3249,3248,3410,3411,3414,3137,3221,3139,3142,3143,3132] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [3389,3391,7570,7572,2641,3382,2639,4309,7563] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [4904,4930,7509,7513,6268,4921,4922,6266,5987,6273,5989,7515,6275,5971,5988] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [3808,3852,8262,8257,8255,4032,4035,2643,2646,2647,2648,2650,2649] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [7414,7417,3743,4247,3974,4246,7452,4272,4001,4011] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [881,914,2277,5060,1030,994,996,5027,912,913,2285] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [5207,6299,5182,5603,5916,5782,5761] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [2397,3213,3215,2402,3530,3533,3548,2415,3519,3521,3526,3219] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        