
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
        
        load "data/7JIJ.pdb", protein
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
 
        load "data/7JIJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5248,8637,8635,5244,5246,5240,5241,8633,8634,8636,8638,5234,5236,5237,8903,7354,7212,5273,8646,5264,5265,5266,8832,8865,8869,8866,8825,8830,8831,8857,8021,8036,5247,8038,9203,5231,8039,8040,5232,9063,9066,9067,7883,8003,7227,8006,7351,7352,7218,7219,7220,7894,7895,7896,7897,8019,8020,8026,8032,7882,8002,8629,8624,8494,8501,8618,8619,8647,8600,8592,8834,8598,8601,8872,8888,8900,8890,8894,8896,8899,7362,8626,8627,8495,9074,9075,9076,9077,9069,9073,9082,9085,9086,7884,7885,7886,7887,7888,7367,7368,8628,8476,8487,7879,6489,6475,6477,6476,7209,7210,7993,7995,7997,8047,5097,5099,7049,6496,7037,7013] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [419,2014,2017,2018,2146,437,795,2005,2007,2010,2011,815,2205,816,817,2143,2175,2176,2179,2141,36,435,436,438,439,58,84,85,88,87,2272,2287,2271,2288,2273,418,420,21,2028,2030,2137,252,237,120,121,122,2206,117,119,125,145,146,2232,2269,2268,144,2231,2261,2265,2234,89,91,112,113,2264,114,116,171,2169,2171,2172,2173,2202,2203,2204,2208,2210,2239,141,148,20,236,238,174,176,177] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.463,0.902]
select surf_pocket3, protein and id [1290,2584,2585,2587,2589,1222,1294,1295,1296,1298,2567,2619,2621,2627,1223,2622,2623,2628,2586,2588,2590,1219,1981,1979,2509,2528,2568,2501,2504,2515,1251,1273,1961,1962,1959,1246,1247,1252,2555,2581,2554,2556,2561,2544,1413,1405,1414,1274,1275,1286,1289,1278,1291,2758,1272,1445,2780,2779,1399,1402,1403,2809,1297,1299,1360,1376,1368,1393,2806,2808,2559,1362,1374,2651] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.314,0.702]
select surf_pocket4, protein and id [312,451,484,452,454,455,458,476,2521,1990,1181,1185,1186,1188,1190,1201,1203,1187,1189,1191,1989,309,450,77,78,1765,1766,86,2000,837,1741,1738,1744,844,845,832,834,839,840,841,842,1753,63,65,66,84,432,2006,2001,2004,2601,1179,1180,2603,2598,2600,2602,2637,1171,1172,1170,1169,1616,1617,1618,1619,1615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.373,0.361,0.902]
select surf_pocket5, protein and id [8967,8969,8970,8972,9002,8973,8974,9254,9256,9220,9225,9248,9224,8280,8281,8103,8104,8980,8094,9255,9003,8207,8195,8196,8198,8193,8202,6858,8200,8201,6855,9246,9247,9250,6853,6888,6889,8129,6890,6891,8180,8181,8171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.333,0.278,0.702]
select surf_pocket6, protein and id [3939,3938,3940,3079,3517,3539,3093,3094,4021,4020,2979,2980,3091,3919,3924,4022,3920,3912,3546,2923,2924,2925,2929,2930,2981,2927,2928,2939,2940,2933,3548,3549,2942,2941,4012,4014,4015,3369,3503,3095,3498,4013,4023,4016,4019,3921] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.486,0.361,0.902]
select surf_pocket7, protein and id [3073,3053,3054,3055,3057,3058,2881,2883,2884,2871,3018,3020,3494,3495,2859,3423,2856,2860,3489,3490,2878,2841,2844,2852,2857,2877,3085,2901,3392,3393,3394,3396,3397,3398] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.424,0.278,0.702]
select surf_pocket8, protein and id [3280,4051,3856,3801,3802,3860,4028,4031,4033,4009,3277,3248,3315,3288,4030,4032,3810,3812,4312,4314,3859,3775,3773,3863,4008,4027,3890,3891] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.600,0.361,0.902]
select surf_pocket9, protein and id [5480,5568,5479,6202,5453,5608,5642,5588,6183,6184,6232,5606,5609,6182,5428,5448,5449,5450,5454,5455,5458,5473,5475] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.514,0.278,0.702]
select surf_pocket10, protein and id [1117,1120,1018,1008,1010,1519,1239,982,975,1570,1116,1571,1559,1037,1038,1036,1520] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.718,0.361,0.902]
select surf_pocket11, protein and id [7958,6012,6013,6015,6712,7971,6710,6719,6733,6784,7955,7968,7986,7959,5927,5928,6577,6720,6716,5938,5940,5939,5941] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.600,0.278,0.702]
select surf_pocket12, protein and id [3448,2609,485,2572,2576,2573,2574,2575,2579,2548,3136,3138,3139,3445,515,505,506,513,504,538,2832,2834,307,308,311,483,517,3440,2611,318] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.831,0.361,0.902]
select surf_pocket13, protein and id [5371,6114,6115,6145,5361,5362,5363,6612,5364,5368,5365,5369,5904,6595,6670,6671,6684,6616,6627,6632,6633,6634] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.690,0.278,0.702]
select surf_pocket14, protein and id [6356,6536,4298,6359,4806,4764,4807,4799,4805,4832,4788,4295,4769,4771,4288,4289,4322,6355,6533,6385,6386,6535,6534,6529] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.855]
select surf_pocket15, protein and id [4190,4191,4392,3908,3907,3595,3565,3567,3596,4433,4432,4418,4179,3915,3917,4366,4361,4365,4400,4398] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.620]
select surf_pocket16, protein and id [1999,686,689,691,681,683,828,829,684,807,2512,1985,1986,1987,2511,2513,2474,724,718,688,714,464,466,468] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.741]
select surf_pocket17, protein and id [983,984,1734,1900,1901,1733,1009,1011,954,851,1196,864,1139,1119,1031,1112,1718] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.533]
select surf_pocket18, protein and id [6678,6825,7200,6823,6804,6806,7170,7190,7191,7199,6680,6682,6683,6617,6675,5336,5339,6618,6619,6620,5318] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.627]
select surf_pocket19, protein and id [7735,7718,7312,7719,7721,7307,7308,7961,5992,5993,5994,5998,7933,7928,7316,7318,7929,7260,7297,7304,6000,6002,7963,5999,7939,7941] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.443]
select surf_pocket20, protein and id [7344,7345,7586,7154,7119,7583,7334,7246,7376,7624,7373,7611,7614,7616] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.514]
select surf_pocket21, protein and id [2145,2017,2020,2012,798,800,2023,2030,579,555,559,495,497,558,563,781,790,787] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.353]
select surf_pocket22, protein and id [4261,5788,5789,5790,5791,5811,4262,4107,4110,4101,4093,5916,4103,5630,5632,5896,6586] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.400]
select surf_pocket23, protein and id [813,2302,2303,2305,2310,2314,2182,806,816,817,2178,2186,2215,2217,2208,2209,2211,2239,2212,2317] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.294,0.278]
select surf_pocket24, protein and id [8030,7836,7840,7870,8031,9195,9196,9209,9210,9217,9216,9218,7830,7863,7864,7865,7871,7874,8476,8495,8496,7887,7888] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.435,0.361]
select surf_pocket25, protein and id [7783,8058,7813,9232,8092,8093,6928,9262] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.384,0.278]
select surf_pocket26, protein and id [1806,1667,1669,1839,1807,1708,1710,1840,869,872,876,1662,1688,1829,1703,1841] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.549,0.361]
select surf_pocket27, protein and id [7885,7887,7367,7368,8628,8477,8478,8439,8466,8474,8476,8487,7865,7879,7352] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.475,0.278]
select surf_pocket28, protein and id [7189,5257,6457,6440,7042,5254,5278,5279,5281,5285,5255,7182,6482,6483,7196] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.667,0.361]
select surf_pocket29, protein and id [6887,6889,8131,8162,8163,6878,6879,6877,6915,6916,6918,6920,8120,8122,6917] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.561,0.278]
select surf_pocket30, protein and id [6104,6107,5502,5504,6106,5546,5782,5664,5665,5543,5544,5661,5768,6078,6079,6076] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.780,0.361]
select surf_pocket31, protein and id [2443,2284,1752,1785,1784,834,842,856,857,2444,831,835] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.651,0.278]
select surf_pocket32, protein and id [8659,7145,7148,7382,7147,8683,7175,7177,7361,8661,7384] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.894,0.361]
select surf_pocket33, protein and id [4700,4642,4643,4677,4587,4614,4384,4592,4673] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.659,0.702,0.278]
select surf_pocket34, protein and id [6603,6704,6399,6394,6600,6601,6401,6791,6407,6408] 
set surface_color,  pcol34, surf_pocket34 
   
        
        deselect
        
        orient
        