
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
        
        load "data/8DD8.pdb", protein
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
 
        load "data/8DD8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6412,6410,6411,6349,6574,6577,6375,6554,6561,6570,6571,6379,6383,6409,6556,6384,6380,6351,5895,5896,5898,5140,5142,5144,5886,5890,6584,5887,6586,5189,5190,6355,4860,4861,6352,4831,4832,4833,2179,4824,1352,4797,4822,4825,4826,4828,4823,5138,5139,5143,5897,5141,5107,1353,2177] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [3487,3489,3412,5292,5293,5295,4968,1063,3379,3383,3372,3376,3377,3382,3398,4934,4942,4943,3386,3648,3488,3414,3421,3423,3407,3411,3413,1048,1045,1046,1047,5282,5285,5286,1054,1055,5261,3657,3651,3654,3493,3658,3659,3530,3640,3642,3643,3645,3646,3650,3366] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [3538,3539,3667,3682,3707,9459,9462,9463,10172,9428,9430,9431,10171,9439,3705,3714,3695,2701,2717,2719,3531,3529,3666,5254,5253,9495,9498,9461,9486,9488,9489,5257,3533,3537,3521,3534,3540,3514,3544,10209,10237,3335,10207,10208,10244,10245,3555,9399,3561,9397,3543,2716,3713,9362,10268,3328,10265,10266,10267] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [7914,7915,7917,3551,3356,3536,3552,3548,3554,7956,7953,7957,3574,3616,7958,7955,4916,4918,7905,7906,7907,7911,3641,5263,3633,3636,7899,3627,3630,3615,5262,5264,5247,5248,3529,5270,5237,5239] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.376,0.902]
select surf_pocket5, protein and id [6283,7278,7280,6044,7273,6646,6563,6567,6568,6645,7268,7269,7270,7272,7275,6262,6281,6650,6263,6070,6069,6024,6025,6026,6027,6666,7190,7191,7254,7255,6710,6668,6657,6663,6669,6092,6661] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.306,0.278,0.702]
select surf_pocket6, protein and id [5515,5524,5525,5806,67,69,5549,5796,5780,252,253,697,698,5779,5794,264,5778,73,249,703,11,12,13,14,721,700,722,5788,5789] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.443,0.361,0.902]
select surf_pocket7, protein and id [2886,4385,2892,2893,4361,4362,4384,4149,4151,4345,8709,8723,2881,2882,4351,4355,4356,4359,4360,4363,4337,8724,8725,8726,4121,4124,9056,9057,9058,8693,9066,4147,4152,4145,4153,8713,8708,8697,8688,8695] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.384,0.278,0.702]
select surf_pocket8, protein and id [2854,2916,2917,2919,8701,3590,3592,2821,2822,2873,2853,2888,2889,3589,3591,8485,8488,8481,8491,8497,8492,8681,8682,8475,8493,8502,8450,8449,8717,8703,8699,3605,3606,3622,3623,3601] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.541,0.361,0.902]
select surf_pocket9, protein and id [5902,5439,5441,5867,5868,5869,5440,5442,1318,1326,1328,5099,5100,1319,1330,2394,2395,2375,2379,2055,2058,5929,2380,5400,5396,5903,5907,1316,5096,2054,5852,5850,5467,5926] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.463,0.278,0.702]
select surf_pocket10, protein and id [6421,4844,6445,6447,6453,7827,4809,4810,4558,4559,7804,7805,7806,4833,2179,4830,4808,1374,1375,6446,6483,1369,6486,6420] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.643,0.361,0.902]
select surf_pocket11, protein and id [8166,8168,7087,7088,7452,7090,7086,8201,8199,8200,8202,8233,7061,7486,7717] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.537,0.278,0.702]
select surf_pocket12, protein and id [4800,4783,4790,4786,4791,4793,5063,5080,5081,5082,1296,1297,1300,1345,2106,5091,1336,1342,1344,2126,2127,1358,1360] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.741,0.361,0.902]
select surf_pocket13, protein and id [2237,2238,6441,6446,6474,1369,1367,1368,2206,6485,2174,2175,2177,2215,2211,2212,2176,2178,2204,2235,4833,2179,1375,6444,6437,6438,6439,6475,6528,6538,6409,6556,6407,6440,6410,6411] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.616,0.278,0.702]
select surf_pocket14, protein and id [10351,10352,9269,9270,10491,9255,10342,9268,9271,10487,10488,10489,9228,9254,9264,9256,9265,7380,7391,7392,7393,7394,10350,7381,10458,10486,10492,10462,10450,10375,10390,10391,10454,10452,10453,10376,10377,10378,9231,9229,7399,10456] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.843,0.361,0.902]
select surf_pocket15, protein and id [5919,5920,6211,6213,6202,6209,6655,6201,5898,6653,1353,2184,2186,2188,2180,2181,2033,2066,2067,2050] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.694,0.278,0.702]
select surf_pocket16, protein and id [936,939,941,958,5516,960,5538,5540,5502,5508,5509,5512,5513,5484,5504,5482,5202,5206,5207,5227,952,6603,5235,6606,6609,6610,5231,5232,5541,5179,6597] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.859]
select surf_pocket17, protein and id [2380,2378,2077,2078,2377,2315,2316,5928,2056,2057,2058,5929,2027,6154,2344,6162,2299,2304,2310,2313,1577,1580] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.627]
select surf_pocket18, protein and id [5917,5919,5920,6211,6213,6209,6212,6659,6232,6237,6239,6677,6678,6208,6210,6226,6655,5895,5898,5889,6651,6652,6653,5875,5887,6242,6654,6571] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.757]
select surf_pocket19, protein and id [706,679,682,703,704,5455,5492,5493,5494,943,5491,5797,669,670,909,702,940,5820,918,919,646,920,5458] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.553]
select surf_pocket20, protein and id [8228,8227,8237,8231,8263,7654,8260,8245,7529,7653,7528,7600,7607,7527,7499] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.659]
select surf_pocket21, protein and id [4101,4105,4339,4341,4340,4150,4151,2878,8709,2881,4074,4317,4106,4625,4626,4627,2874,4590,4628,4639,4085,7974,7975,2871,2872,4089] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.475]
select surf_pocket22, protein and id [937,939,941,931,932,933,934,723,720,721,671,908,909,702,554,570,587,973,571,573,719,606,553,710,969,970,975,930,904,906] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.561]
select surf_pocket23, protein and id [8585,8408,8584,8405,8410,8414,8399,8032,8033,4100,8040,8041,8044,8080,8037,8600,8601,8578,8580,8581,8391,8003,8004] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.396]
select surf_pocket24, protein and id [4985,4990,4991,4978,4981,4956,4993,4715,4932,4938,4984,4940,4949,4945,4657,4660,4682,4680,4681,4689,4659,4644,4948] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.459]
select surf_pocket25, protein and id [7821,4076,7816,7853,7854,7820,4554,4561,4589,4568,4564,4565,4566,4567,4075,4307,4306,4055,4077,7817,7819,4283,4284,4042,4280,4541,4543,4285,4556,4557,4559] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.318]
select surf_pocket26, protein and id [1016,988,895,896,901,902,897,900,976,982,871,607,872,873,874,2456,973,591] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.361]
select surf_pocket27, protein and id [2094,2115,2116,1267,1268,1269,1270,2113,1741,1742,1767,1266,2010,2330,1972] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.318,0.278]
select surf_pocket28, protein and id [5237,5239,5240,6612,6614,6619,5221,5247,5248,6605,6310,6325,6592,6593,6326,6311,6327,6328,7915,7917,7911] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.459,0.361]
select surf_pocket29, protein and id [5492,5493,5494,5491,706,703,704,5524,5525,698,5797,700,5829] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.396,0.278]
select surf_pocket30, protein and id [5182,5185,5213,5188,6355,6325,6354,6593,5212,6326,5184,5219,5222,4859,4861,7895,6323,6324,4894] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.561,0.361]
select surf_pocket31, protein and id [4474,4435,4466,4472,4228,4229,4436,4437,3922,3923,3929,4440,4465] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.475,0.278]
select surf_pocket32, protein and id [8367,8368,8574,8571,8629,8630,8631,8640,8642,8605,8611,8620,8394,8311,8309,8314,8317,8318] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.659,0.361]
select surf_pocket33, protein and id [6344,6345,6346,6644,6646,6567,6568,6645,7268,7269,7270,6283,7278,7275] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.553,0.278]
select surf_pocket34, protein and id [7398,10322,10323,10325,8428,8460,8461,8438,8462,10361,8429,7399,7402] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.757,0.361]
select surf_pocket35, protein and id [8884,8966,9020,9021,9023,8829,8843,8857,8845,8833,8836,9030] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.627,0.278]
select surf_pocket36, protein and id [3141,3126,4425,4424,3844,2586,4458,4427,4389,4393,4395] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.859,0.361]
select surf_pocket37, protein and id [892,5373,2429,2433,2434,852,5402,2415,2416,2417,886,889,891,853,5432,5395,5422] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.694,0.702,0.278]
select surf_pocket38, protein and id [8554,8352,8364,8362,8363,8334,8641,8904,8308] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.843,0.902,0.361]
select surf_pocket39, protein and id [6767,6768,6863,6861,6766,6700,6702,6901,6902,6704,6733,6736,6731] 
set surface_color,  pcol39, surf_pocket39 
   
        
        deselect
        
        orient
        