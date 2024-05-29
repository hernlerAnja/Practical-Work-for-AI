
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
        
        load "data/1S78.pdb", protein
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
 
        load "data/1S78.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5330,5333,5496,5335,5336,5510,5529,5527,5332,1101,1102,1103,1104,1346,1349,1081,1359,5509,5525,5541,1201,1202,1203,1219,1088,1054,1069,1062,1348,1358,1129,1127,1082,1086,1096,1097,1100,5511,1187,1188,1231,1232,1233,1234,1249,1251,5378,1281,5379,1052,1055,1056,1057,1058,1037,1064,1299,1304,1280,1285,1293,5380,5381,5382,1216,1218,1215,5479,5480,5481,5494,5497,5637,5342,5582,5626,5627,5624,5628,5308,5309,5315,5317,5558,5559,5563,5571,5577,5554,5557,5562,5574,5407,5366,5374,5375,5377,5405,5347,5360,5364,5359,5465,1247,1263,1279,1272,1276,5466,5746] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [270,271,274,35,36,2097,2013,2095,2064,2067,2079,3324,3319,3535,2071,2074,20,21,25,26,30,3520,3532,3533,7,210,3327,3546,3326,3534,3547,3548,3550,28,33,207,34,3094,3098,3325,3143,3145,3119,3120,2164,2096,2165,2083,462] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.498,0.902]
select surf_pocket3, protein and id [4313,4314,7372,7398,7376,7604,7603,7602,7811,7813,7810,6349,6352,7597,6361,6364,6357,6442,6443,7374,7824,7812,7825,7828,4488,4311,7605,7615,4308,6375,4297,4298,4299,4300,6373,6291,4285,6342,4548,4549,6345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.357,0.702]
select surf_pocket4, protein and id [6598,14013,14424,14423,14442,14443,14071,6150,6149,14070,6146,6207,6140,13875,13876,14025,14028,14055,14056,14057,14058,14061,6118,6122,6123,6126,6130,6132,6401,6117,6129,6131,6148,6409,14048,14049,6414,12671,12728,12729,14440,6201,6185,12704,14431,14428,12683,12699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [641,642,644,930,1727,462,658,461,2022,654,659,1733,1736,1739,1810,1740,1741,1735,1752,10873,10874,10875,10882,10525,10876,10878,2017,2014,2015,1999,2000,2001,272,274,463,10507,10524,2148,2157,2164,2096,2152,2143,1730,1731,1155,1156,1157,1158,1607,10884,10886,10868,10885,10867,10869,1609,1621,936,937,940,1154,927,928,931] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.294,0.702]
select surf_pocket6, protein and id [4920,4922,4936,6295,6300,6292,6293,6294,5208,6013,6005,6008,6009,6017,6018,6019,6011,6014,5885,4740,4739,4741,6028,6030,14199,14200,14202,6088,6098,13831,6421,6435,13847,13848,6277,6374,6423,6426,14226,14227,14197,14208,14209,14210,14194,14205,14206,14192,14193,14187,14190,14191,14182,4919,5205,5214,5215,5216,5218,5433,5436,4937,13832,13836,6441,6442] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.380,0.361,0.902]
select surf_pocket7, protein and id [1870,1871,1872,10747,1907,1853,1923,1929,1908,2131,2134,10552,10704,2130,2136,2123,1848,1852,1854,10725,1839,10724,1840,1844,1845,1846,10716,9404,9405,11116,11118,11119,9347,9359,9376,9380,9381,2320,11099,11100,11104,10701,10733,10720,10731,10746,10689] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.329,0.278,0.702]
select surf_pocket8, protein and id [4535,4536,6038,6284,6306,6299,6305,6001,6035,6037,5981,6072,4300,4301,6288,6290,4293,4294,5966,6056,6058,5992,5996,6000,4725,4724,6296,6298,4551,4525,4715,4907,5980,5985,5986,4721,4712] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.463,0.361,0.902]
select surf_pocket9, protein and id [1757,1759,1760,2006,2018,2020,2023,2027,2028,2010,15,257,273,2012,258,23,272,274,447,629,1714,1717,1718,1713,446,1702,1707,1708,437,2022,1722,1723,1687,1688,1780,2021,1699,434] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.388,0.278,0.702]
select surf_pocket10, protein and id [12405,12406,12410,6470,6472,6479,6481,6624,6625,12385,12350,12351,6449,6704,6705,6706,6454,6455,6485,6495,6631,6632,6499,6503,6614,6621,6627,6602,6450,6439,6445,6451,6506,7381,7389,6440,7377,7376,7391,6670,6671,6672,6886,6888,6654,6636,6653,6655,6630,7161,7162,7163,6465,6478] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.541,0.361,0.902]
select surf_pocket11, protein and id [2171,2172,2176,2167,2608,2610,2173,2228,2418,2419,2884,3113,2605,2883,2182,2194,2177,2207,2213,2221,2217,2219,2187,2161,3099,3111,2376,2393,2394,2358,2375,2377,2392,2427,2353,2354,2192] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.451,0.278,0.702]
select surf_pocket12, protein and id [4341,4425,4379,4382,4385,4389,4390,7406,7408,7415,7417,7198,7476,4363,4373,4365,7416,7437,7628,7433,7435,7459,4393,4417] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.620,0.361,0.902]
select surf_pocket13, protein and id [12348,12674,12676,14453,14454,12358,14431,14432,6610,14428,12671,12206,12198,12204,12208,12681,12683,12686,12688,6476,6478,6594,6596,6597,6598,6608,6609,6614,6621,6602,6606,12350,12351] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.514,0.278,0.702]
select surf_pocket14, protein and id [101,104,107,108,111,3350,115,3196,3197,3198,142,137,139,84,94,95,85,60,87,63,3130,3137,3138,3139,174,3157,3159,3131,2919,2918,2920] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.698,0.361,0.902]
select surf_pocket15, protein and id [7474,7197,7198,7476,7406,7407,7408,7409,7415,7417,4385,4389,7475,4363,4373,4365,7416,6929,6930,6931] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.576,0.278,0.702]
select surf_pocket16, protein and id [2316,2318,2319,2324,2327,2332,2320,11099,11108,11104,11107,9347,9359,9362,9364,9026,2328,2329,2330,8880,8882,9034,8877,8883,2331,11129,11130,9024,9350,9352,8874,2200] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.780,0.361,0.902]
select surf_pocket17, protein and id [6689,6687,6748,6753,6756,6929,6930,6931,6755,7416,7395,7401,7407,7409,7410,7177,7178,7390,7391,6680,6681,6899,7197,6912,6682,7389] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.635,0.278,0.702]
select surf_pocket18, protein and id [9077,2192,2201,2203,9082,9086,2353,2354,2352,2343,2346,2349,2393,2394,2358,9025,9061,2182,2194,2207,2187] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.859,0.361,0.902]
select surf_pocket19, protein and id [2653,3129,3131,2408,2450,2409,2919,2651,2652,2899,2900,2634,2621,2404,2411,3113,3117,3112,89,3138,3132,2470,2406,2477,2478] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.698,0.278,0.702]
select surf_pocket20, protein and id [14651,15287,14659,14660,12884,12906,12903,12905,12910,15291,13640,15307,14673,14671,14675,12887,13589,13596,14670,14631,15292,14643,14647] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.863]
select surf_pocket21, protein and id [7719,7721,7714,7715,7718,7751,7913,7914,7909,7916,7872,7873,7712,7878,7883,7887,7890,7711,7886,7685,7894,7903,7691,7851,7870,7867,7869] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.639]
select surf_pocket22, protein and id [14971,14987,13223,14973,14972,14974,13373,13237,14958,15015,15019,15016,15017,13358,14761,13357,15026,14744,13374,13372,13346,15031,14976,14980,14981,13218] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.784]
select surf_pocket23, protein and id [3635,3636,3589,3591,3592,3437,3440,3441,3443,3595,3609,3612,3434,3594,3407,3413,3435,3429,3433,3436,3573,3605,3616,3625,3631,3607] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.576]
select surf_pocket24, protein and id [11015,11017,10992,11016,11226,10620,10619,11642,11684,11686,11207,11221,11222,11481,11234,11467,11468,11235,11639,11641,11646,11665] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.702]
select surf_pocket25, protein and id [9953,11597,11578,11584,9977,11576,11577,9717,11596,9716,9718,9710,9715,11733,11732,9965] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.518]
select surf_pocket26, protein and id [4740,4548,4550,4741,6295,6292,6293,6375,4552,6289,6374,6426,6277] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.624]
select surf_pocket27, protein and id [14918,14920,14921,14922,14908,14910,14913,13284,13290,13276,13277,13278,13289,13300,14896,14891,14901,14902,13272,13251,13256,13041,13042] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.455]
select surf_pocket28, protein and id [8940,8941,8942,10609,8945,8953,10622,10623,10628,10629,8952,8957,8958,9456,10606,10607,10608,10613,10625,8959,8946,8966,8939,9293,9294,9295,9316,9318,9432] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.545]
select surf_pocket29, protein and id [10655,10766,8665,8668,10767,10652,10656,9398,9392,10642,10648,10651,9408,9411,9413,9417] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.392]
select surf_pocket30, protein and id [7553,7554,7544,8114,7556,7557,8108,8189,7555,7561,7570,8126,8130,8163,8164,8124,8092,7548,8184] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.467]
select surf_pocket31, protein and id [13931,13933,13947,13948,13949,13952,13953,13946,12264,12270,12265,12618,12619,13959,12640,12642,12778,12756,13932,12277,12283] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.333]
select surf_pocket32, protein and id [10057,9658,9659,10055,10058,10043,9673,10152,9828,9865,10082,10093,10088,10124,10153,10083,9660,10095] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.388]
select surf_pocket33, protein and id [7505,7506,7504,7519,7676,7899,7959,7675,7695,7958,7960,7971,7679] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.290,0.278]
select surf_pocket34, protein and id [12732,12738,12741,13979,14106,12722,12735,12737,14091,14090,13966,13972,13975,13976,13980,11992,12716] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.412,0.361]
select surf_pocket35, protein and id [11696,11702,11691,10022,11695,11634,9899,10034,11692,11693,10033,10035,11707,9914,9913,11619] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.353,0.278]
select surf_pocket36, protein and id [3814,3830,3831,3886,3887,3836,3848,3852,3266,3827,3807,3906,3911,3269,3270] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.494,0.361]
select surf_pocket37, protein and id [14531,15008,15010,14546,14963,14964,14966,14965,14558,14559,14545,14339,14340,14341,14550,13943,13944,13945] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.412,0.278]
select surf_pocket38, protein and id [7694,7696,7730,7974,7978,7916,7917,7946,7967,7968,7969,7977] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.573,0.361]
select surf_pocket39, protein and id [1211,5505,1196,5503,5504,5258,5264,5265,721,723] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.475,0.278]
select surf_pocket40, protein and id [4999,5001,5240,5489,5486,1227,4973,4987,4988,1240,1241,1242,5472,5474,4989,4990] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.651,0.361]
select surf_pocket41, protein and id [5914,5736,5807,5811,5917,5722,5726,5989,5814,5920,5923,4898,5183,5184] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.537,0.278]
select surf_pocket42, protein and id [3690,3696,3452,3638,3639] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.729,0.361]
select surf_pocket43, protein and id [11383,11384,11385,11382,11732,11734,9555,9537,11370,9556,9710,9538] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.600,0.278]
select surf_pocket44, protein and id [2387,2438,2384,2437,2374,2379,2383,2545,2547,2543] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.808,0.361]
select surf_pocket45, protein and id [3680,3681,3682,3398,3397,3621,3417,3693,3228,3241,3227,3239] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.659,0.278]
select surf_pocket46, protein and id [6665,6821,6657,6652,6662,6669,6651,6715,6825,6823,6660,6661] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.890,0.361]
select surf_pocket47, protein and id [13034,14707,14708,14709,12879,12861,12862,14693,14694,15057,15056,15058] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.678,0.702,0.278]
select surf_pocket48, protein and id [9678,9679,9680,9572] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.831,0.902,0.361]
select surf_pocket49, protein and id [878,1444,1442,905] 
set surface_color,  pcol49, surf_pocket49 
   
        
        deselect
        
        orient
        