
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
        
        load "data/4CFE.pdb", protein
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
 
        load "data/4CFE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9688,9689,9827,11053,11062,11048,11070,11047,11026,11029,11030,11075,11076,10324,10325,9820,9821,9822,9823,9831,10467,10468,10469,11498,11502,11503,11504,11505,11492,11495,11516,11511,11319,11325,11328,11329,10323,10450,10311,10312,10326,10448,11506,10451,2538,2549,2552,2540,2530,11496,2541,2542,11317,11332,11312,11298,11301,11305,11306,11480,11481,11065,11067,2556,11313,11263,11259,11260,11261,2577,11252,11254,10924,9836,10923,11055,11057,10313,10314,10315,10316,10308,10904,10905,10906,10294,9835,9837] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [12829,12830,12831,13814,13818,13808,13811,13819,13832,13635,13641,12686,12687,12688,12812,12673,12674,12677,12685,13282,12675,12676,13286,12678,13267,13287,12670,12656,12663,13424,13410,13409,13437,13438,13391,12058,12059,12197,12198,13425,12206,13285,13415,13417,13392,12192,12190,12191,12193,13277,13419,13266,12205,12207,7165,13634,13625,7168,7169,13648,13796,13812,7167,7176,13427,7179,13827,13820,12813,13822,13797,12810] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.490,0.902]
select surf_pocket3, protein and id [5943,5944,5947,5018,5020,5211,5411,5425,5957,5210,5290,5292,5939,5942,5430,5004,5840,5867,5868,5474,4903,4905,4847,4848,4854,4849,4851,4904,5442,5444,4852,5448,5451,5454,5477,5466,5948,5950,5852,5847,5949,5951,5955,5177,5173,5174] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.349,0.702]
select surf_pocket4, protein and id [1211,1212,1213,128,1206,1207,1210,167,117,110,111,116,283,474,688,1205,1129,1130,556,1110,1115,1131,737,740,1103,1220,552,553,555,166,168,118,119,127,281,267,693,705,112,113,114,115,717,714] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.404,0.902]
select surf_pocket5, protein and id [4389,9680,10431,9685,4375,4376,4377,2551,2552,2535,2536,9506,10435,10424,10426,10474,10476,10478,2457,10503,10505,11490,9695,9675,9673,10450,10449,10326,10465,10467,10432,10434,9692,9696,4370,4374,4396,4365,2445,4385] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.278,0.702]
select surf_pocket6, protein and id [12050,8981,12043,12051,8968,7162,7178,7179,11876,12790,12794,12796,12797,12688,12812,12829,12062,12065,12066,12055,8966,7163,8967,8969,8977,12784,12786,12793,12788,12838,12836,12810,12811,12825,12827,12832,12833] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.404,0.361,0.902]
select surf_pocket7, protein and id [8068,8317,8296,8297,8315,8316,4914,8273,8070,8069,8299,4896,4898,8265,8264,8266,4767,8252,4766,4822,4765,5380,5379,5381,5027,5028,8049,8330,5403,5401,4824] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.349,0.278,0.702]
select surf_pocket8, protein and id [665,666,3724,87,291,3443,3709,3711,3710,28,29,30,83,85,3646,3660,3690,3667,177,84,92,3649,3650,3658,3659,160,161,3463,3464,3692,3462,3691,290,642,643] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.490,0.361,0.902]
select surf_pocket9, protein and id [10895,10905,10914,10748,10753,11612,11613,11650,10719,10720,10721,10917,10918,10293,10259,10267,10292,10296,10316,10317,10460,11628,11641,11642,11627,10920,10925,11514,11614,11615,10929,10945,10303,11640,11673,11674,11675,11649,10265,11515] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.416,0.278,0.702]
select surf_pocket10, protein and id [4435,4437,4441,4444,4430,997,998,1031,1032,1266,1479,1480,1487,1486,1999,2001,1982,1000,2002,2006,2007,2009,2010,4289,4429,4433,4434,4436,4290,1958,1963,1965,4262,4264] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.576,0.361,0.902]
select surf_pocket11, protein and id [12028,12038,12029,12030,9169,7265,9111,9315,9314,7246,11972,9131,9133,9109,9116,9151,9153,9130,12031,11998,11973,11974,11975,7243,7247] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.482,0.278,0.702]
select surf_pocket12, protein and id [11801,7039,11800,11829,11791,11828,11830,6999,11793,7009,7008,7004,7007,7037,6977,7002,9241,11859,9253,7048,7093,9242,9244,9254,7040,9255,11820,11818] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.663,0.361,0.902]
select surf_pocket13, protein and id [6003,6216,6217,9033,9034,9035,5737,5735,5734,6736,6738,6737,8854,8856,8881,8882,6207,9028,9022,9025,9026,9027,9029,6220,6223,6224,6719,6219,6248,6695,6702,6739,6743,6744,6746] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.549,0.278,0.702]
select surf_pocket14, protein and id [2222,2224,2252,2253,506,2223,2149,1010,1011,975,976,977,983,985,2181,2182,2183,2161,1023,521,523,529,530,2257] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.749,0.361,0.902]
select surf_pocket15, protein and id [757,759,1108,755,793,784,786,1609,1582,1583,783,1622,1623,1624,1382] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.616,0.278,0.702]
select surf_pocket16, protein and id [6361,6345,5496,5530,5523,5520,6346,6119,6360,6320,5492,5494,5845,5521,6118,6359] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.835,0.361,0.902]
select surf_pocket17, protein and id [6054,6055,7566,7567,6034,6190,6030,7845,6027,7722,7723,7724,8816,7564,6189,7741,7720,7721,6031,6035,6037,9078,7743,7707,7844,6058] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.682,0.278,0.702]
select surf_pocket18, protein and id [3101,2958,2960,2961,1290,1293,3237,1284,1294,1300,4486,1297,1453,1298,1452,3114,3115,3116,3117,3219,3118,4224,3137,3135,3099] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.878]
select surf_pocket19, protein and id [634,636,4028,306,643,3928,3925,3926,3927,323,307,3919,3906,3904,3905,3487,3459,3464,3462,3441,3446,3452,3806,3807,3460,3456,3828,4030] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.651]
select surf_pocket20, protein and id [9209,9221,12777,12749,12750,9206,9208,7864,7865,7867,7866,9200,9203,7890,7891,7892,7901,12762,12759,9068] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.792]
select surf_pocket21, protein and id [13081,13082,13965,13966,13930,13943,13944,12657,12654,12658,12659,12660,13957,13958,13928,13282,13279,12679,13286,12678,13267,13287,13280,12655,12656,13277,13276] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.584]
select surf_pocket22, protein and id [3286,4608,4609,4611,4617,4614,3258,3259,3260,3261,3288,3245,3243,4475,4476,4477,10387,4631,10366,10388,3295,10400] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.706]
select surf_pocket23, protein and id [9430,9431,9459,2351,4643,9448,9450,9421,9423,9460,2372,2375,9429,2350,4662,9451,4649,4650,2413,2412,2381,2382,4663] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.514]
select surf_pocket24, protein and id [4577,4722,4723,9605,4559,4561,9603,9604,9602,9636,9639,9635,9659,9660,9661,9628,4519,4524,2640,2641,4538,4539,4541,9668,9658,2659] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.620]
select surf_pocket25, protein and id [5373,8525,8532,8534,8531,8533,5043,5044,5060,5381,5371,5372,8047,8052,8412,8413,8070,8093,8510,8511,8512,8062,8066,8065,8434,8433] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.447]
select surf_pocket26, protein and id [11433,9359,9360,9362,9364,10521,11687,9361,9363,9365,10495,11432,10523,9387,10524,10525,10559,11440,10560,10492,10518,10520] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.533]
select surf_pocket27, protein and id [5747,6919,6960,6961,5760,5761,5258,5243,5719,5721,6920,6898,6959,5260,5267] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.380]
select surf_pocket28, protein and id [2413,2409,2410,2381,2382,2468,4663,2466,9489,4662,4649,4650,2420,2415,2480,9450] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.447]
select surf_pocket29, protein and id [7084,7086,12865,12867,13806,12825,12827,12832,12833,13803,12838,12840,7072,8962,8966,8988,7163,8967,8969,7162,12829] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.314]
select surf_pocket30, protein and id [10390,10355,10357,10368,10371,10392,10358,10164,3265,3272,3273,9776,9785,9773,9778,9782,9781,10151] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.361]
select surf_pocket31, protein and id [8201,8202,8203,8204,8205,8198,8199,8200,8402,8596,8612,8568,8569,8485,8423,8597,8197] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.314,0.278]
select surf_pocket32, protein and id [4512,4522,2673,2694,4532,4534,4568,4516,4527,3383,3384,3380] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.447,0.361]
select surf_pocket33, protein and id [4152,4153,4160,4185,4053,4079,4034,316,4078,626,631,636,353] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.380,0.278]
select surf_pocket34, protein and id [3408,8095,8098,8099,8100,8101,8102,8103,8450,8451,8460,8084,8494,8492,8493] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.533,0.361]
select surf_pocket35, protein and id [13995,13996,13070,13072,14026,12986,13717,12987,12988,12990,13051,13055,12989] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.447,0.278]
select surf_pocket36, protein and id [10301,10304,10306,10307,10150,10152,10155,10156,10286,10294,10140,10158,9821,9822,9800,9803,9804,9805,10343,10321] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.620,0.361]
select surf_pocket37, protein and id [7871,7879,12752,12754,12155,12720,12513,12143,12146,12148,12152,12151,12719,12526,12724,12730] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.514,0.278]
select surf_pocket38, protein and id [13621,13622,13623,13625,7167,7183,13429,13427,13432,13437,7204,7205,13460,13614,13616,13458] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.706,0.361]
select surf_pocket39, protein and id [12881,12882,12887,12888,12921,12883,13756,13000,13749,14003,11731,11732,11733,11734,11735,12885,13748,12857] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.584,0.278]
select surf_pocket40, protein and id [7989,9126,9124,9108,9114,9119,7279,7300,7280,7990,9104] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.792,0.361]
select surf_pocket41, protein and id [3592,3593,3594,3595,3596,3597,3598,3990,4006,3816,3817,3989,3991,3599,3874,3876,3879,3963] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.651,0.278]
select surf_pocket42, protein and id [12666,12668,12670,12512,12502,12514,12517,12683,12705,12680,12685,12170,12173,12174,12175,12192,12669,12518,12520] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.878,0.361]
select surf_pocket43, protein and id [8070,8069,8299,8092,4894,4896,4897,4898,8068,8298,5041,5044,5380,5027] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.682,0.702,0.278]
select surf_pocket44, protein and id [10710,11680,10689,10693,10624,10625,10627,10708,11654,11686,11679,11688,11710,11657] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.835,0.902,0.361]
select surf_pocket45, protein and id [3312,3287,10386,3276,3280,3281,3056,3063,3059,3262,3270,3272,3273,3274] 
set surface_color,  pcol45, surf_pocket45 
   
        
        deselect
        
        orient
        