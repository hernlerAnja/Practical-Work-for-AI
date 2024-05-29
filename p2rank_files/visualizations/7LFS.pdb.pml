
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
        
        load "data/7LFS.pdb", protein
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
 
        load "data/7LFS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9823,9824,9825,9821,10090,10091,9967,9969,9968,9972,9995,10005,10006,10089,10132,10118,10136,10137,10140,9859,9861,10113,10116,10254,10119,9881,10134,9882,9883,9950,9949,9925,9927,10159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [3714,3715,6738,6740,15367,15368,3723,15370,15431,15432,15433,15434,15435,15345,15346,15347,6733,6735,6736,15437,15379,15378,15373,3707,3708,3709,3763,3836,3838,3962,3963,3840,3845,3837,3710,3966,3713,3727,3812,3813,3981,3761,3694,3702,3874,3871,3864,6072,15414,6070,6076,15405,15412,15415,6018,6019,6020,6056,6066,15430,6218,6499,6500,6730,6235,6236,6732,6027] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.494,0.902]
select surf_pocket3, protein and id [2977,2979,42,43,205,2973,2971,2974,2975,2328,15046,15055,15011,15053,70,14993,14994,2976,15008,15007,15009,15070,15072,15073,14989,15076,14987,14988,2305,2991,2479,2480,2462,2735,2736,2968,2955,2970,2318,2322,2276,2267,2269,101,56,71,100,52,55,199,202,50,204,167,198,177,98,169,168,165,166,191,61,62,15020] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.353,0.702]
select surf_pocket4, protein and id [7504,7507,7509,7510,10410,10425,7549,7550,10432,10434,10426,9942,9748,9754,9959,9960,10206,10207,10406,10422,10423,10417,9756,9762,9764,9751,9801,9805,9788,9809,9810,15740,15747,15749,7532,15702,15704,15705,15708,15703,15712,15713] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [13364,13561,13832,13362,13356,13578,13579,13833,13361,13413,13419,13576,13423,13417,11162,11163,11164,11187,11188,16075,16095,16102,16104,16066,14049,14064,14065,14062,14063,14070,14072,16063,16064,16065,16105] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.290,0.702]
select surf_pocket6, protein and id [12841,12854,12855,12856,12840,12851,1771,12821,1786,1789,1790,1803,12826,12827,13006,13129,13130,13134,13141,1806,1810,1814,12832,12837,12983,12843,2024,13128,13131,13122,13139,13140,1770,1900,2028,2023,1775,1781,1888,12871,12935,12860,12867,12936,12865] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.388,0.361,0.902]
select surf_pocket7, protein and id [5782,5502,5779,9340,5789,5650,5472,5473,5474,5475,5489,5492,5493,5494,5478,5584,9535,9537,9538,9548,9230,9224,9225,9258,9339,9264,9271,9275,9247,9255,9259,9241,9244,9245,9246,5507,5506,5517,5780,5781,5784] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.333,0.278,0.702]
select surf_pocket8, protein and id [13124,13125,13126,13136,13135,13198,1848,1851,1852,13184,13185,13189,1808,1811,1815,1819,13158,13159,1835,1836,13116,13118,13271,13174,13176,13180,13269] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.467,0.361,0.902]
select surf_pocket9, protein and id [5253,5259,5319,9219,9023,9032,9218,9029,9021,8924,5229,5320,5222,8925,9003,9016,9020,5227,9217,9204,9205,9212,5248,5249,5262,5166,5269,5162,5242,5246,9014,9089,9200,9015,5150,5151,5244,5223] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.396,0.278,0.702]
select surf_pocket10, protein and id [11622,11624,11625,11225,11450,11227,11430,11432,11434,16002,16003,16004,16005,11196,16006,16007,15797,15949,15950,15807,15930,15798,15800,15802,15948,11620,11621,11619,11875,11640] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.549,0.361,0.902]
select surf_pocket11, protein and id [10410,10425,10435,10436,7497,7499,7500,7506,7510,7513,7660,7549,7550,10426,7598,7599,7593,7595,7596,7597,7621,7622,7623,7626,7631,7625,10427,10428] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.459,0.278,0.702]
select surf_pocket12, protein and id [9592,9596,9599,9587,5771,5784,9532,9533,5777,5581,5582,5507,5508,5510,5501,5584,9538,9525,5782,5502,9584,9579,9671,9669] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.631,0.361,0.902]
select surf_pocket13, protein and id [11375,11559,11561,11573,13019,13028,11745,11757,13035,13010,13034,13018,13020,13021,13022,13027,11756,1824,1821,1823,11127,11363,11379,11373,11558] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.522,0.278,0.702]
select surf_pocket14, protein and id [13854,13935,14123,14192,14193,14012,14110,13838,13566,13956] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.710,0.361,0.902]
select surf_pocket15, protein and id [14065,14066,14074,14075,11286,11312,11313,11314,11149,11150,11185,11163,11164,11161,11284,11248,11252,11254,11278,11253,11204,11205,14067,11281,11277,11280,11407,11143] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.584,0.278,0.702]
select surf_pocket16, protein and id [5584,9537,9538,9548,9230,5523,9231,5492,5493,9221,9224,9225,9226,9227,9215,9141,9241,5519,5522,5506,5517,5526,9152,9154,9409,9410,9140,9387] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.792,0.361,0.902]
select surf_pocket17, protein and id [15449,15592,15593,15451,15645,15640,15641,15643,15570,15571,15572,7526,7524,7779,7966,7967,7777,8223,7541,7570,7572,15658,8218] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.647,0.278,0.702]
select surf_pocket18, protein and id [320,515,14742,14744,121,122,123,341,518,322,93,14869,105,14961,14962,771,14735,14736,534] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.875,0.361,0.902]
select surf_pocket19, protein and id [15358,15360,15422,15199,15201,15424,15426,15421,6800,6803,6804,6258,6965,6967,6799] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.690]
select surf_pocket20, protein and id [688,14946,14926,81,686,14910,14911,752,687] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.847]
select surf_pocket21, protein and id [6345,6108,6110,6346,6266,6262,6263,6097,6118,6111,6077,6080,6095,6098,6265,6267,6268,6048,6050,6115,6135,6107,6328,6327,6305,6329,6060,6061,6063,6064,6068,6069,6073,6074,6075,6036] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.627]
select surf_pocket22, protein and id [14116,14280,14281,14130,16109,13862,16110,14295,13845,16120,16119,14097,14091,14092,14094,14096,14060] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.765]
select surf_pocket23, protein and id [5666,5670,5671,5672,4123,3938,3922,3682,5663,3934,4136,3935,3937,4310,4311,4326,9304,9294,9299,5679,5417] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.565]
select surf_pocket24, protein and id [1565,1451,1463,1467,12637,12546,12547,12634,12630,12629,1524,1542,1452,12617,1617,1618,1526,1541,1545,1546,1549] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.682]
select surf_pocket25, protein and id [5165,5169,5170,4583,4792,5386,5172,5108,5110,5179,4581,4582,4595,4795,4796,5385,4599,5171,5255,5282] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.502]
select surf_pocket26, protein and id [2769,14841,14842,14999,2502,15001,3042,15061,15062,15063,15065,15066,15067,3408,3040,3041,3199,3198,3200,3202,3203,2764] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.604]
select surf_pocket27, protein and id [10293,10294,10286,10292,10295,10563,11082,11054,11055,11056,11072,10534,11046,10337] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.439]
select surf_pocket28, protein and id [13035,11559,11560,11561,13028,12767,12739,12779,12718,12724,12730,12734,12741,12788,12736,11113,11114,11115,11112,11116] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.522]
select surf_pocket29, protein and id [14703,13971,14202,14691,14711,13925,13928,13926,13927,14686,13919,14173,14172,14677] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.373]
select surf_pocket30, protein and id [10069,10022,10026,10029,10053,15723,9812,9804,9808,9810,9990,9811,9833,10070,9815,9830,9991,9992,9986,9987,9816,9995] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.439]
select surf_pocket31, protein and id [6206,5989,6485,5851,5870,5871,5872,5874,6469,6470,5855,5866,5990,6191,6192,5978,5858,5824] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.310]
select surf_pocket32, protein and id [2570,2571,2573,2350,2572,2589,2590,2510,2547,2549,2362,2360,2361,2321,2325,2509,2316,2320,2309,2310,2326] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.361]
select surf_pocket33, protein and id [4184,15096,3785,4010,4185,4188,15100,4444,4203,3989,3786,15109,15102,15107,15106] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.310,0.278]
select surf_pocket34, protein and id [5431,5377,5415,5417,3668,3669,3670,3662,5671,4123,3922,3682,3923,5372,5376,4124,5360,4312] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.439,0.361]
select surf_pocket35, protein and id [11787,11795,11796,11856,11798,11842,12054,11857,15973,15972,12261,11820,11822] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.373,0.278]
select surf_pocket36, protein and id [2009,2011,2046,2184,2062,2070,2071,12927,12929,12933,12934,12932,2183,2092] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.522,0.361]
select surf_pocket37, protein and id [12916,12918,268,2056,2937,1989,1911,1987,1910,2959,2960,1913] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.439,0.278]
select surf_pocket38, protein and id [9161,9114,9163,9164,9165,9437,7903,9432,7904,9439,9123,9125,9126,9429,9120,7453,7457,7458,7460,7709,7891,7449,7707] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.604,0.361]
select surf_pocket39, protein and id [7066,6779,6957,6849,6860,6848] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.502,0.278]
select surf_pocket40, protein and id [2429,2435,2436,2704,2705,2706,2167,2449,2450,2063,2111,2112,2721,2090,2094,2105,2110,2108,2109,2231,2234,2239,2238,2064,2067,2068] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.682,0.361]
select surf_pocket41, protein and id [13421,13422,13416,13420,13639,13642,13424,13682,13683,13428,13427,13442,13445,13611,13614,13607,13608,13610] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.565,0.278]
select surf_pocket42, protein and id [5768,5767,9337,5823,5826,5830,5808,9331,5929,5853,5930,5846,5831,5773,5774,9338] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.765,0.361]
select surf_pocket43, protein and id [14559,14593,14552,14582,14528,14595,14335,14336,14366,14600,14589,14356,14359,14530] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.627,0.278]
select surf_pocket44, protein and id [6644,6870,7386,7387,6599,6600,6602,7388,6593,6841,7359,7365] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.847,0.361]
select surf_pocket45, protein and id [56,297,100,149,150,55,177,168] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.690,0.278]
select surf_pocket46, protein and id [842,1073,733,1327] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.875,0.902,0.361]
select surf_pocket47, protein and id [12646,12746,12006,12652,12007,12493,12492,12494,12196,12199,12200,12201,12023,12017,12019,12552,12553,12556,12491,12545,12549,12550] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.647,0.702,0.278]
select surf_pocket48, protein and id [6728,6784,15442,6515,15419,6759] 
set surface_color,  pcol48, surf_pocket48 
   
        
        deselect
        
        orient
        