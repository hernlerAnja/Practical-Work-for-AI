
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
        
        load "data/7BWA.pdb", protein
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
 
        load "data/7BWA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4989,5020,5018,5030,5031,3748,11347,6217,6218,6219,6216,6225,4990,4991,4993,6420,5060,5062,11377,11402,5960,11355,11380,11354,11379,11388,11389,3741,11348,11350,5958,5716,5734,5735,5736,11411,11409,11468,11469,11470,11471,11473,11474,11478,5959,5708,5949,5951,5046,5053,5050,5052,6213,6214,5947,5948,5950,5952,4955,4951,4954,6148,5021,6199,6149,5933,5692,5693,5513,5528,5529,5530,5717,5540,11467,3747] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [8508,8550,8474,8487,8486,8126,8107,8109,8379,8200,8376,8378,8380,8369,8280,8282,8551,8445,8679,8621,8623,8473,8740,8741,8739,8397,8374,8375,8377,8590,8566,8785,8765,8770,8772,8773,8603,8625,8601,8709,8710,8714,8225,8227,8223,8224,8226,8256,8108] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [2916,2918,2919,2920,3026,3027,3090,3106,2820,2822,3312,3091,2740,3281,3305,3310,3048,2763,2764,2765,2767,2796,2914,2917,2915,2908,2909,2647,2648,2649,3250,3252,3280,3143,3325,3313,3279,3141,3163,3165,3130] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [6324,6717,6208,6405,6298,6718,6192,6193,6478,6285,6287,6477,6502,6284,6456,6205,6207,6261,5940,6206,6274,6281,6017,6282,6283,6621,6620,6622,6479,6480,6482,6519,6549,6522,6523,6349,6385] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [1063,1062,1258,827,1089,836,996,821,824,825,800,801,822,823,1018,1039,1042,1160,1162,945,1019,1017,1020,1022,1059,1161,732,747,746,748,733,838,557,889,925,864,865,479,480] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [10450,759,10971,10973,10977,10978,11002,11003,10415,10451,10453,10489,10490,10491,10998,11000,11022,10449,960,961,962,11025,490,756,758,765,500,274,10480,492,491,10522,10524,276,256,275,11096,11097,9479,9203,9206,9207,9200,9201,9495,9205,9208,9210,10460,10969,10970,11183,11153,9474] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [7933,7766,7806,7975,7767,7832,8002,8003,8033,7974,7976,8172,7930,7931,8176,8179,8178,8217,7915,7916,7900,8228,8227,8124,8200,8153] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [2307,2440,2372,2573,2306,2592,2470,2471,2473,2514,2515,2516,2543,2542,2565,2456,2664,2455,2768,2712,2693,2716,2718,2719,2757,2767,2740] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [7074,7075,7076,7078,7080,7077,7079,7267,7259,7299,7300,7302,7304,7025,7019,7023,7027,7097,7038,7235,7238,7240,7242,7243,7251,7253,5879,5882,5644,7241,6089,5881,6107,7037,5638,5479,5645,5461,5649,5655,5878,5637,5874,5895,5885,5886,6105,6104] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [3416,3412,3420,3421,3424,4305,3371,3383,3384,3385,3386,3431,3407,3398,3404,3405,3408,3382,3393,8644,8645,8646,8633,8635,8614,8634,8362,8612,3376,3184,3186,3173,8864,8867,8891,3175,8836,8842,8843,8844,8853,8831,8841,8880,8405,4307,8391,3415,3174,3185,8845,8846] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [195,1778,1780,1782,1791,1793,4,19,189,1844,1807,1842,1839,1840,419,422,184,185,418,1781,1783,414,1619,1620,1,178,425,426,435,644,629,421,1563,1565,1567,1614,1615,1617,645,647,1775,1799,1577,1578,1559,1616,1618] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [8976,8978,8979,8983,9703,9704,9705,9719,9264,9100,9266,8997,9101,8999,9846,9686,9689,9821,9823,9735,9247,9249,9720,9137,9146,9147,9130,9734,9819,9820,9173,9174,9811,9150,9152,9125,9438,9245,9246,9117,9118,9123,9119,9222,9225] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [3787,3789,3686,3687,3690,3714,3665,3658,3659,3663,3657,3670,3677,4226,4224,3518,3537,4243,4244,3516,3519,4367,3640,3641,3785,3786,4260,4275,4363,4359,4360,4361,4230,4231,4245,3804,3806,3762,3765,4222,4223,4404,4386,4403,4229] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [6599,6610,6590,6591,6179,6159,6160,7781,6165,6166,6167,6168,7780,6612,4946,7946,7947,7948,4943,4944,4945,7771,7956,7976,7964,7973,7953,7932,7949,6582,7950,7951,7952,7957,7958,7960,7788,7995,6371,6373,6595,6395] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [1152,10403,10405,1150,10406,698,699,700,10404,2492,2491,2493,2497,2496,2498,2500,2504,2472,2516,2311,1139,1130,1131,719,706,707,708,1135,2535,913,2328,1122,2486,2487,2490] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [5683,5699,5701,5684,6017,5521,5520,5939,6193,5924,5925,6051,6053,5608,5581,5866] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [4253,4254,4344,4346,4345,3232,3233,3483,3484,3485,3486,3479,4334,4335,4261,4276,3445,3447,3448,3417,3412,3413,3411,3435,3443,3446,3464,3466,3467,3477] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [481,240,241,534,336,581] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [465,221,223,224,239,60,61,121,148,241,591,593,464,406] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [8908,9805,9721,8946,9800,9804,9806,8906,8907,8921,8903,8905,8923,8924,8927,8932,8895,8902,8937,8871,8872,9794,8693,9381,9714,9713] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [5994,5796,6014,5701,5941,5970,5700,6236,5968,6041] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [733,464,557,589,479,480,481,241,591,593,465,221] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [3219,2739,2740,2985,3012,3013,3014,2919,2937,2663,2666,3161,3254] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [11320,11329,11331,3702,3703,3704,4029,4034,4073,4030,3700,3701,4033,11321,4048,4044,4049,4050,4031,4017,3735,3699,3698] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [9162,9163,9164,9160,9161,9489,9490,9491,9492,9195,9494,9493,10952,10940,10943,10945,10948,10986,9159] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [6587,6373,6565,6570,6571,6594,6595,6370,7788,7991,7993,7994,7995,6371,7787,6366,7965,7964,7968,7959,7960,6364,6165] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [464,557,589,587,588] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [6145,6147,5012,5045,5912,5914,5916,5674,5675,5676,5693,7792,7793,7794,6124,6126,6134] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [2311,2340,2312,2313,2314,10462,10463,10466,10467,10468,698,700,10430,10472,10470,2334,10431,10432,10433,10428] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [5662,7222,7439,7440,7334,7335,5659,5660,7364,7417,7408,7410] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [1957,1762,1979,1980,1874,1875,1903,1904,1948,1950,199,198,200,202] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [5007,5008,5010,4975,5006,5009,7774,5011,5012,7800,6158,7772,7773,7756] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [1361,1478,1479,1481,1482,1076,1078,1324,1328,1329,871,872,874,1316] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [11320,11329,11322,11325,4034,4033,3735,3737,3739,11326,3741,4035,11360,11363] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [3748,11347,5000,11560,4989,5027,5028,5029,5030,5031,4990,11346,3747] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [5272,5274,5275,5276,5291,5357,5358,5359,5360,5362,5361,5363,5368] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [10478,10480,10481,487,488,472] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        