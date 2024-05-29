
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
        
        load "data/7NJ0.pdb", protein
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
 
        load "data/7NJ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4313,4641,4642,4306,4307,4309,4643,4644,1976,2287,2259,2260,2266,2290,2289,1967,1968,1615,1618,1613,1616,1628,1607,1629,1611,1641,1643,2879,2880,2881,2261,2264,1587,1617,1932,1933,1935,4349,4352,4343,2876,2521,2874,2878,2908,2909,2910,2911,2912,2899,2900,2903,2901,4669,4670,4683,4640,2315,2933,2316,2931,4633,4638,2324,2314] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [2793,2828,2203,2205,2171,2172,2827,2829,1304,1586,1551,1583,1550,1554,1555,2796,2758,2797,2798,2799,2800,1561,1563,1559,1560,1562,1535,1395,2765,2768,1878,1848,1552,1879,1858,1849,1850,1511,1857,1822,1510,1516,1533,1534,1536,2735,1250,1521,1247,1248,1249,1419,1243,1245,2238,2241,2201,2207,2208,2239,1584,1587,2213,2211,1909] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.498,0.902]
select surf_pocket3, protein and id [10269,10270,10297,10298,10380,9288,9340,9839,9339,9282,9441,9311,9315,9318,9326,10393,10377,10378,9457,9458,9841,10379,10257,10241,10281,10376,9291,9294,9300,9301,10258,10273,9304,4963,4953,9892,9284,9286,9866,9858,9860] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.357,0.702]
select surf_pocket4, protein and id [5585,8661,8669,7723,5744,5745,7714,7746,7748,7786,7787,5586,7689,5711,5712,8444,8653,8659,8672,8674,7691,8440,5645,5646,5619,5719,5720,5721,8430,8436,8439,5610,5699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [2868,2869,2870,2871,2872,3151,2846,2847,2850,2851,3883,4328,4329,3853,4317,4321,4323,2901,2902,3913,4351,4352,4322,3911,1615,1618,2881,2264,1587,2240,1617,1325,3132,1322,3862,3863,1339,1340,1341,3852,3858,3854,3131,3133,1300,2821,1626,1594,2827,1304,1586] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.294,0.702]
select surf_pocket6, protein and id [6479,6481,6482,6483,8769,8776,8778,6585,6586,6587,5091,5072,5077,5079,6551,6548,8759,8760,8765,8768,8771,8775,7967,6448,8753,8756,6449,6450,5068,740,3538,5063,5065,5066,5067,7956,741,7959,755,756,757,8323,8325] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.380,0.361,0.902]
select surf_pocket7, protein and id [4894,4895,4918,4919,4910,6739,6740,6742,7134,7169,7146,6711,7133,6303,7163,7164,6294,6726,6267,6272,6720,6275] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.329,0.278,0.702]
select surf_pocket8, protein and id [13562,13564,13565,13553,13554,13555,13540,718,719,721,13509,13511,13515,11982,11984,11985,3618,3619,12050,3617,3640,3649,12886,3644,3648,11978,12021,12038,12041,12027,12030,12034,12013,12014,716,12015,12051] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.463,0.361,0.902]
select surf_pocket9, protein and id [3756,3757,3758,4094,3904,4121,3896,3755,3772,4123,3786,4141,3878,3782,3838,3769,3770,3771,3773,3788,4173] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.388,0.278,0.702]
select surf_pocket10, protein and id [4381,4677,4679,4680,4705,4706,2928,2930,2931,5279,5280,4406,4667,8571,4435,5289,5290,5291,5324,5326,6096,6097,5292,5293,5296,5298,4730,4736,4738,5299,8572,6094,6095,8575] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.541,0.361,0.902]
select surf_pocket11, protein and id [12073,12944,12935,12942,12070,12099,12130,12997,12706,13052,13054,12707,12936,12937,13053,12992,12994,12986,13011,12683,12101,12102,12105,13027,13030,12689,13031] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.451,0.278,0.702]
select surf_pocket12, protein and id [10423,10193,10194,10195,10424,12675,10427,10428,12342,12672,12666,12354,12723,12724,12725,12086,12353,12678,12699,10436,12687,12677,12686] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.620,0.361,0.902]
select surf_pocket13, protein and id [9319,4977,9495,9499,10402,4967,4972,4982,4975,5015,4987,4985,5011,5012,5014,9535,9536,9509,10496,5024,9587,9589,10395,9560,9562,9566,9552,9555,9553,10397,10501,10399,10407,10398,9317,9321,9480,9481] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.514,0.278,0.702]
select surf_pocket14, protein and id [4378,4381,4679,4682,2923,2924,2925,2928,2926,2929,2930,3238,4379,4380,4382,3233,3203,3207,3208,3912,3913,4348,4351,2898,2900,2901,2902] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.698,0.361,0.902]
select surf_pocket15, protein and id [5281,5265,5267,2933,2316,4669,4670,2491,2501,2314,2909] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.576,0.278,0.702]
select surf_pocket16, protein and id [3983,3982,4039,4069,4070,4071,3300,3301,3325,3958,3323,3710,3728,3927,3358,3717,3735,3328,3331,3709,3761,3762,3928] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.780,0.361,0.902]
select surf_pocket17, protein and id [6118,6121,6125,6283,6347,4794,4800,4803,6128,6284,4795,4796,6270,6273,6287,6285,6134,4847,6081,4825,4828,4846,6260] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.635,0.278,0.702]
select surf_pocket18, protein and id [592,595,563,562,564,2777,138,144,2703,2691,2693,2641,2642,2643,2659,2662,3089,2790,2775,584,585,616,2660,2669] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.859,0.361,0.902]
select surf_pocket19, protein and id [4886,4887,4879,4880,4883,7206,6759,7042,5408,5410,7014,6994,6979,6250,6251,6252,4875,4869] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.698,0.278,0.702]
select surf_pocket20, protein and id [6405,6425,6424,6397,8547,7507,7508,7509,7511,8543,7504,8537,6428,6426,6427,7506,765,8517,8729,8730,8735,781,8533,8731,8734,8534,6402,6429,6458,6460,780] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.863]
select surf_pocket21, protein and id [2863,2553,2554,2836,2585,2586,3030,3022,3023,3024,3025,3029,3027,2679,3057,2612,3058,2670,2672,2675,2668,2671,2665,2666] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.639]
select surf_pocket22, protein and id [12931,12951,12953,13462,13384,12949,12950,12956,12963,11867,13465,11892,13463,12960,12962,13375,13376,13412,13403,13447,13449,13448,13405,13406] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.784]
select surf_pocket23, protein and id [5921,5769,5957,5824,5825,5788,5817,5249,5794,5250,5507,5508,7679,5959,5310,5475,5477,5506,5222] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.576]
select surf_pocket24, protein and id [675,880,877,13476,668,671,13432,631,13431,916,917,13417,13475,13499] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.702]
select surf_pocket25, protein and id [5316,5323,5349,5291,5325,8592,7477,7485,7476,8574] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.518]
select surf_pocket26, protein and id [4435,4382,4414,3965,3967,3990,4444,3231,3232,3233,3995,3998,4381,4406,6095] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.624]
select surf_pocket27, protein and id [8669,7723,7748,7747,7786,7792,7793,8444,8672,8674] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.455]
select surf_pocket28, protein and id [10436,10437,10454,12717,12722,10440,12354,12051,12724,12725,10423,10427,10470,10468,12753] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.545]
select surf_pocket29, protein and id [13638,13640,907,913,13417,13427,633,634,13636,13637,929,930,13423,604,632,13639,13416,13418,13422,13430,13675,3098,576,601,602,577] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.392]
select surf_pocket30, protein and id [5629,5663,5662,5683,5691,2465,2531,2532,2535,2536,2538,2467,2537,2561,2562,2563,2453,2455,5628,5631,5635,5627] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.467]
select surf_pocket31, protein and id [885,859,877,671,631,917,3050,861,890,3047,3048,3049,638,642,643,644] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.333]
select surf_pocket32, protein and id [746,747,3526,7958,7941,751,8321,8324,8320,772,8352,8353,3513,739,741] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.388]
select surf_pocket33, protein and id [2947,2954,2960,8587,2966,8601,2965,8582,8637,5542,5577,5578] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.290,0.278]
select surf_pocket34, protein and id [2088,2085,2087,2137,2128,2468,2254,2255,2256,2467,2220,2222,2223,2446] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.412,0.361]
select surf_pocket35, protein and id [7611,7612,8942,8943,7405,9164,9165,7420,8965,8957,7406] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.353,0.278]
select surf_pocket36, protein and id [139,564,2777,114,138,142,2752,533,534,2786,2748,505,2749,561] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.494,0.361]
select surf_pocket37, protein and id [7459,5526,7642,7648,7650,7651,7652,7641,8628,7498,9146,9144,8540,8619,7639] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.412,0.278]
select surf_pocket38, protein and id [6001,6006,6007,6014,5995,9158,7757,5996,7727,7728,7731,7755,7699,9156,9165,9166,9163,9159,7422,7420] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.573,0.361]
select surf_pocket39, protein and id [2796,2797,2798,2800,1273,1561,1563,1271,1560,1562,1395,1303,1304,1305,2793,1243,1245,1247,1419] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.475,0.278]
select surf_pocket40, protein and id [8321,8319,8320,8317,7933,7938,7941,7943,7934,773,8350,8351,8339,8306,7932] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.651,0.361]
select surf_pocket41, protein and id [1208,1209,1210,446,447,63,416,448,30,33,61,1183,1171,1173,1174,58,60,87] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.537,0.278]
select surf_pocket42, protein and id [8360,8367,8370,8334,8337,8286,7910,8202,8371,8648,8363,8285] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.729,0.361]
select surf_pocket43, protein and id [3245,3246,3247,8561,815,8546,8558,807,810,2960,2966,8601,8582,8563,816,818,777,843] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.600,0.278]
select surf_pocket44, protein and id [1258,1228,504,2722,2751,2721,2727,1227,118,1207,469,471,470,1203,501] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.808,0.361]
select surf_pocket45, protein and id [12721,10437,12720,12722,10440,10444,12725,10193,10194,10428,11649,11686] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.659,0.278]
select surf_pocket46, protein and id [1719,4258,4256,1691,1718,1403,1402,1693,4240,4257,4236,1424,1425] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.890,0.361]
select surf_pocket47, protein and id [999,977,980,1031,976,1029,1030,1334,3849,1358,1332,1333,955,3122,3824,975,956,3121,953] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.678,0.702,0.278]
select surf_pocket48, protein and id [8982,8981,8983,8917,8968,8970,8971] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.831,0.902,0.361]
select surf_pocket49, protein and id [14201,14227,14236,14253,14196,14197,14198,14195,13969,14265,14169] 
set surface_color,  pcol49, surf_pocket49 
   
        
        deselect
        
        orient
        