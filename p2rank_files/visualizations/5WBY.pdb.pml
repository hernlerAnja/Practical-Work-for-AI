
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
        
        load "data/5WBY.pdb", protein
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
 
        load "data/5WBY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [19928,19931,20265,19932,20268,19935,19945,19946,19947,19948,22031,22037,21337,22041,19952,19968,20280,20282,22044,22045,21722,21362,21319,21320,21705,21706,21708,21322,22032,21335,21336,21711,21715,21718,21334,21719,21723,21363,17881,17882,17883,20610,19925,20255,20258,19922,19923,20257,20264,20607,20621,20626,20629,20631,20634,20273,20635,20276,20279,20638,20672,20956,20965,20957,20958,20962,20654,20671,20976,20980,20981,20942,20943,21326,20947,21343,20608,20616,17897,20935,20609,21309,20934,17896,21702,21693,21700,17908,22018,22020,22023,22028,17898] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.424,0.702]
select surf_pocket2, protein and id [9928,10304,10305,10307,10690,8913,11003,11013,9593,6866,6868,9243,9592,6893,9249,9242,8907,10311,10319,10348,10320,10321,10322,10696,10704,10707,10708,10691,10693,11017,10703,10347,9920,9919,9927,10294,10678,10685,10687,9594,6881,6882,6867,9595,9950,9601,9932,9614,9941,9943,9947,9966,10328,9942,11008,11005,9265,8930,9267,8931,8932,8933,8937,9253,9258,9250,8917,8920,11016,11026,11029,11030,8916,8953,9616,9620,9623,9678,9606,9611,9261,9961,9965,9619,9639,9635,9656,9657,9264] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.514,0.902]
select surf_pocket3, protein and id [1993,558,559,560,562,1591,1623,1625,1600,1288,1262,1263,1651,1285,1286,1287,2001,1978,2002,1644,1674,1650,1647,1649,1289,1048,1049,1271,1601,584,585,581,814,821,1076,2032,2033,2034,1097,1301,1302,1989,1099,2058,1290,1675,2031,1990,824,816,817,819,1046,818,1592,1593] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.376,0.702]
select surf_pocket4, protein and id [13049,11883,11884,12337,12112,12368,11885,12114,12115,12710,12740,12741,13046,13047,13048,11650,11890,13017,13004,13005,13016,12355,12352,12353,12354,12356,11880,11882,11887,12163,13073,12142,11626,11628,11647,12993,13008,12657,12666,12667,12689,12691,12658,12685,12683,12715,12328,12329,12716,12717] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.451,0.902]
select surf_pocket5, protein and id [6573,6100,5970,5920,5921,7479,7481,7482,7378,7368,7488,6509,6116,6117,5971,5935,5934,6139,7489,7490,5953,6138,6140,6514,6516,6529,6567,7393,7394,6560,6522,6525,6527,6526,6524,6556,6532,6533,6535] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.325,0.702]
select surf_pocket6, protein and id [17587,17588,16935,16936,16937,16950,17115,16985,16986,17539,17541,17542,17537,17540,17531,17582,17575,18497,18502,18505,18498,18503,18504,17132,17131,17154,18408,18409,18496,17529,17524,18383,18393,17550,17544,17572,17571,17547,16949,16968,17153,17155,16964] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.388,0.902]
select surf_pocket7, protein and id [13327,11902,11918,13362,13198,13131,13333,13334,13326,12170,12174,13132,13035,12161,13069,13070,13071,13096,13097,13072,12156,13197,13226,13227,13307,13033,13036,13039,11920] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.282,0.278,0.702]
select surf_pocket8, protein and id [2311,2318,2319,2312,2347,1104,1108,2116,2117,2292,836,852,854,2024,2211,2212,1090,2056,2057,2054,1095,2081,2082,2182,2183,2055,2018,2021,2020] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.396,0.361,0.902]
select surf_pocket9, protein and id [17781,17779,17782,17967,17969,17970,17806,17815,21654,21656,17818,17816,22003,17803,17805,17811,17812,17814,21828,21811,2737,2708,2710,17995,17996,17997,17783,17994,21650] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.333,0.278,0.702]
select surf_pocket10, protein and id [20234,20235,20236,17872,20385,20038,20386,18596,19540,17884,17885,17888,18611,18612,18628,17854,20040,17916,17917,18618,18620,18610,19537,19538,19536] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.459,0.361,0.902]
select surf_pocket11, protein and id [9221,9370,9023,9025,9219,9220,6857,9371,7581,7612,7613,7631,7597,8521,8522,8525,7596,8523,6870,6873,6869,6839,7595,6901,6902,7603,7605] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.380,0.278,0.702]
select surf_pocket12, protein and id [18502,18505,18498,18499,18503,18504,17132,17154,17199,18517,17197,17198,17152,17151,17159,17148,17149,17156,18518] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.522,0.361,0.902]
select surf_pocket13, protein and id [3884,3885,8212,8018,8019,8020,8021,8022,8023,8024,3433,3434,3443,3444,3894,8185,8155,8187,7988,7990,7989,3844,3843,3402,3374,3403] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.427,0.278,0.702]
select surf_pocket14, protein and id [8047,6163,4137,4138,4480,4421,4424,4416,4417,4418,6165,4478,4479,4445,8048,6476,6470,4434,6202,6192,4106,4108,4394,4395,4135,4392,4419,6453,6454] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.584,0.361,0.902]
select surf_pocket15, protein and id [17735,17736,17737,2431,17762,17764,19569,19571,19568,19563,17603,17605,18385,18379,19591,18368,18369] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.478,0.278,0.702]
select surf_pocket16, protein and id [16066,16094,16065,15809,15810,17497,17498,17499,15757,15726,15731,15732,15734,15735,15700,15727,15729,15730,17483,15450,15452,15758,15761,17496,15776,15778,16116,15736,15739,16149] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.647,0.361,0.902]
select surf_pocket17, protein and id [17178,17180,15493,15494,15495,19062,15439,15436,15153,15156,19047,19063,15433,17491,15449,15431,15459,15460,17207,15410,17468,17469,15409,15123,17217,15150,15152] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.525,0.278,0.702]
select surf_pocket18, protein and id [8647,11036,11050,11051,11052,8648,8779,8780,8781,8784,10845,10846,10730,10731,10732,10719,10720,10752,10753,10754,10756] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.710,0.361,0.902]
select surf_pocket19, protein and id [7729,7028,7721,7725,7734,7004,7026,7027,7030,7034,177,7007,7134,7137,7176,7178,7058,139,136,107,109,110,147,148,104,7753] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.576,0.278,0.702]
select surf_pocket20, protein and id [19794,19795,21860,21861,19799,19662,19663,22065,22067,21734,21745,21746,21747,22051,22066,21735,21767,21768,21769,21771] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.773,0.361,0.902]
select surf_pocket21, protein and id [2395,2618,2619,2620,2576,2577,2578,2308,2394,2306,2307,2544,2545,2608,2277,2573,2607,2282,2281,2275,2276,2303,2304,2305] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.624,0.278,0.702]
select surf_pocket22, protein and id [18041,18042,18744,18019,18043,18736,18740,11243,11213,18749,18768,18149,18152,11173,11170,18191,18193,11202,11205,18045,18022,18049,18073,11175,11176,11214] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.835,0.361,0.902]
select surf_pocket23, protein and id [15091,15367,15376,15126,15118,17203,17242,17452,17205,17208,15410,15406,15411,15412,15125,17463,16768,15400,17462,15398,17457,16769,16771,16782,16783] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.675,0.278,0.702]
select surf_pocket24, protein and id [4076,4352,4361,5753,5754,6448,5768,5767,5756,5764,4110,4103,4111,6193,4395,4396,6188,6226,6227,6190,4397,6447,4383,4385,6437,6442] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.898,0.361,0.902]
select surf_pocket25, protein and id [13622,13588,13591,13592,13559,13560,13586,13623,13318,13319,13321,13323,13409,13410,13634,13635] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.678]
select surf_pocket26, protein and id [6721,6720,6747,6722,8548,8553,8556,8554,6588,6590,7370,8576,7364,7354] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.839]
select surf_pocket27, protein and id [3316,7946,3763,7920,7922,3276,3314,3315,3277,3796,3759,3761,3762,7937,7939,3784,3787,3286,3284] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.631]
select surf_pocket28, protein and id [6484,4746,4793,4794,4714,6481,6482,6483,4742,4721,4761,4763,5134,4724,5101,4795,5079,4828,5050,5051,4711,4717,4720] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.776]
select surf_pocket29, protein and id [14795,14799,14802,18961,14776,14777,14778,14291,14292,14774,14780,14781,14811,14330,14331,14299,14301,14329,18935,18937,17325,18952,18954] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.580]
select surf_pocket30, protein and id [20797,20796,20798,20802,20803,20807,20538,20667,20809,20294,20296,20335,20337,20295,20800,20431,20536,20338,20340,20528,20336,20430] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.714]
select surf_pocket31, protein and id [9783,9652,9785,9781,9787,9788,9792,9281,9521,9523,9416,9513,9782,9279,9320,9321,9322,9323,9325,9280,9415] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.533]
select surf_pocket32, protein and id [19200,14459,19202,14458,19035,19037,19038,19039,14900,14448,14449,14485,19170,14389,19004,14417,14418,14859] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.651]
select surf_pocket33, protein and id [332,333,1583,291,292,293,1592,1593,1576,1575,1588,377,262,263,353,375,538,541,542,561,562,563,543,544,378,540] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.482]
select surf_pocket34, protein and id [3184,3008,3011,3012,3182,2985,3318,3320,3321,3045,3355,3346,3345,3348,7939,3382,3383] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.588]
select surf_pocket35, protein and id [435,513,436,514,451,456,209,404,377,460,240,229,228,206,208,545] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.435]
select surf_pocket36, protein and id [2562,2563,2994,3264,3285,3287,2525,2527,2528,2954,2955,2957,2561,2993,2953,2951,2224,2502,2958,3014,2985] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.525]
select surf_pocket37, protein and id [14333,14023,14026,14027,14197,14199,14335,14336,14361,14397,14398,18954,14060,14370] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.384]
select surf_pocket38, protein and id [11650,11890,11602,11651,13005,13016,11882,11887,11626,11628,11647,11597,13008,12658,12659,12657] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.463]
select surf_pocket39, protein and id [6139,7489,7490,6144,6136,6137,6133,6134,6141,7502,7503,6182,6184,6183,6117,6156,7484,7488] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.337]
select surf_pocket40, protein and id [916,919,920,1178,1175,1188,1189,1190,918,943,944,945,946,947,948,949,950] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.400]
select surf_pocket41, protein and id [16586,16139,16140,16552,16553,16554,16159,16162,16163,16167,16160,16164,15792,15790,15793,16549,16550] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.286]
select surf_pocket42, protein and id [11329,11608,11358,11359,11606,11629,12641,12654,12658,12659,11418,11419,11422,11328,11444,11443] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.380,0.361]
select surf_pocket43, protein and id [2441,17798,17799,2440,17827,17856,17857,17858,17843,17846,17761,17763,17764,19566,17788,19564,19567] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.322,0.278]
select surf_pocket44, protein and id [2599,2601,2602,2562,2563,2994,2586,2588,3024,3015] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.443,0.361]
select surf_pocket45, protein and id [12203,13095,12170,12180,12161,13069,13070,13071,13096,13097,12159,12156,13098,13099] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.369,0.278]
select surf_pocket46, protein and id [16053,16268,16023,16026,16266,16304,16338,16020,16018,16055,15994,15996,16297,16298] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.506,0.361]
select surf_pocket47, protein and id [5534,5125,5535,5537,5539,5538,5124,5147,5148,4775,4777,4778,5190,5149,5152,5571] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.420,0.278]
select surf_pocket48, protein and id [6952,10641,6954,6955,6764,6797,6788,10985,10813,6790,6801,6803,10796,6800,6799,6796,10635] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.569,0.361]
select surf_pocket49, protein and id [5003,4979,5011,5040,5038,5251,5253,5283,5289,5290,4981,5323] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.467,0.278]
select surf_pocket50, protein and id [12732,12733,12931,13026,12981,12964,12982] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.631,0.361]
select surf_pocket51, protein and id [1090,2056,2054,1093,1137,1095,2081,2082,2083,2084,1104,1114,2055] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.518,0.278]
select surf_pocket52, protein and id [3318,3320,3321,3316,3314,3346,3345,7937,7939,3787,3382,3383] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.694,0.361]
select surf_pocket53, protein and id [14331,14333,14299,14301,14329,14802,14335,14336,14361,14398,18952,18954] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.565,0.278]
select surf_pocket54, protein and id [11982,11984,11985,12009,12010,12011,11986,12241,12244,12016,12277,12012,12014,12013,12254,12256,12255] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.757,0.361]
select surf_pocket55, protein and id [13601,13603,14039,14009,14030,13616,13617,13614,13574,13578] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.612,0.278]
select surf_pocket56, protein and id [14476,14584,14590,14559,14446,14447,14910,14938,14925,14613] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.820,0.361]
select surf_pocket57, protein and id [11470,11579,11443,11580,11501,11502,11526,11275,11306,11529,11295,11272,11274] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.663,0.278]
select surf_pocket58, protein and id [3569,3431,3923,3910,3432,3895,3598] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.882,0.361]
select surf_pocket59, protein and id [19728,19729,19730,19704,19716,17828,17829,22002,21999,2438] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.690,0.702,0.278]
select surf_pocket60, protein and id [1966,1967,2011,1916,1949,1667] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.855,0.902,0.361]
select surf_pocket61, protein and id [14346,14348,14349,14320,14205,14223,14231,14259,14719,14683] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.639,0.702,0.278]
select surf_pocket62, protein and id [2395,2578,2649,2417,2419,2421,2423,2435,2684,2410,2381,2380,2382,2456,2544] 
set surface_color,  pcol62, surf_pocket62 
   
        
        deselect
        
        orient
        