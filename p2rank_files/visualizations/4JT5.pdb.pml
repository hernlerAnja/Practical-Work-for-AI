
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
        
        load "data/4JT5.pdb", protein
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
 
        load "data/4JT5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9932,9941,9943,9922,9249,9601,9919,9927,9928,10321,9942,10328,10348,9715,9593,9594,9595,9592,10294,10678,10303,10304,10305,10307,10685,10690,6881,6866,6867,6868,9240,9243,9242,10687,8907,10322,10696,10703,10704,10708,9606,9250,9253,9258,10347,8916,8920,8930,8931,8932,8933,8917,11016,11026,10707,11029,9261,9264,8937,11013,11003,11008,6893,11005,6882,9615,9678,9611,9614,9616,9947,9619,9950,9639,9961,9964,9965,9620,9342,9623] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.424,0.702]
select surf_pocket2, protein and id [20962,20963,21356,20967,20976,20978,21357,20288,20641,20646,20649,20651,20293,20655,20377,20302,20296,20299,20658,21363,20977,20999,21000,21383,21382,20628,20284,20627,20636,20285,20629,20630,20750,20954,20957,20713,20985,20982,20654,20674,20996,21720,21722,21329,21713,21338,19942,19948,19951,19952,19955,19965,21738,22051,22064,19966,19967,19968,21725,21339,21340,21342,21728,21731,21739,21742,21743,17902,17901,17903,20275,20277,20278,17904,17916,17917,22038,22043,22048,17928,22040] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.510,0.902]
select surf_pocket3, protein and id [11885,12114,12115,12336,12337,12709,12357,12710,12717,12356,12741,13067,12354,12329,12740,11647,11628,11650,11858,13028,13036,11626,13010,13037,13013,11880,11887,11890,11856,11882,11883,13025,13026,13068,12368,11884,12165,13093,13069,12142,12367,13027,12665,12667,12668,12657,12661,12689,12690,12691,12693,12327,12658,12659] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.373,0.702]
select surf_pocket4, protein and id [18429,17570,18428,18514,18516,17549,17564,17544,18511,18532,18534,17462,17460,17461,17457,17459,17458,17254,17475,17567,17557,17559,17560,17561,17562,16957,17135,17134,17602,17608,17591,17595,18517,17151,17152,17174,17545,16956,16969,16970,17005,18518,18519,18524,17171,17191,17216,17217,17218,17219,18522,18523,18525] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.447,0.902]
select surf_pocket5, protein and id [7476,7479,7487,6116,6117,6510,6139,6100,5921,5922,6099,6098,5970,7484,6184,7483,7368,7482,7499,6425,6427,7393,7394,7481,6556,6573,6426,6535,6514,6529,6509,6532,6522,6524,6525,6526,6527,6422,6423,6424,6560,6561,6567] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.322,0.702]
select surf_pocket6, protein and id [821,814,817,818,2033,2034,1301,1076,1302,1271,2001,1674,2032,1099,1675,1286,1288,1290,819,1048,1049,1050,1601,1602,1261,1599,1623,1624,1625,1643,1644,1650,1651,1263,1627,1500,1501] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.380,0.902]
select surf_pocket7, protein and id [2313,2311,2312,2318,2319,2323,1104,1114,1113,2344,2346,2324,2347,2117,2292,2018,2021,2022,2024,852,854,1102,2020,2056,1090,1093,1137,1095,836,2183,2182,2080,2081,2082,2054,2211,2212] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.290,0.278,0.702]
select surf_pocket8, protein and id [11918,11920,12168,12170,11902,13218,13382,13117,13217,13152,13327,13348,13346,13347,13246,13358,13359,13353,13354,13116,12156,13381,13091,13089,13053,13056,13057,13059,13247] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.404,0.361,0.902]
select surf_pocket9, protein and id [17990,21679,21680,21681,21684,21831,21848,22015,17838,17986,17832,17835,17834,17836,17837,22008,22020,22021,2770,2771,21849,17799,17802,2710,17826,17823,17824,17825,17831,21664,21678,17989,17987,21674,18014,17801,17803,18015,18016,18018,2734,2705,2744,2708,2737,2711,17950,17952,21694,21671,21672,21696] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.337,0.278,0.702]
select surf_pocket10, protein and id [681,937,938,936,898,16563,16565,16537,16539,16540,899,928,16499,16501,16502,682,674,907,646,647,713,774,775,16525,16532,16496,16527] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.467,0.361,0.902]
select surf_pocket11, protein and id [147,7029,7030,7006,7033,7034,7035,7036,7028,7721,7734,177,7725,7026,7027,7729,7134,7176,7178,7137,136,139,104,7058,107,109,110,148,7060] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.388,0.278,0.702]
select surf_pocket12, protein and id [9220,9221,9369,9370,9371,6857,9023,6869,6870,6873,7613,6901,6902,6839,9025,7595,7603,7605,8521,8525,6876,7631] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.533,0.361,0.902]
select surf_pocket13, protein and id [18760,18041,11213,11243,18756,18764,18063,18769,11205,11170,11202,18169,18211,18172,18213,18062,18061,18064,18065,18068,18069,18070,18071,18093,18095,11173,11175,11176,11214] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.439,0.278,0.702]
select surf_pocket14, protein and id [17756,17755,17757,17623,17625,18398,19591,19611,18388,18389,18397,18399,18400,18404,18405,2431,17782,19583,19586,19589] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.596,0.361,0.902]
select surf_pocket15, protein and id [21793,21880,21881,19814,19682,19683,21789,21791,21766,21767,21754,22071,22087,22086,19815,19816,19819,19821] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.490,0.278,0.702]
select surf_pocket16, protein and id [20058,20255,20256,20405,19554,19560,18648,17892,20406,17908,17874,20060,17936,17937,18638,18640,19556,18630] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.663,0.361,0.902]
select surf_pocket17, protein and id [8548,8554,8556,6720,6722,6747,7362,7363,7364,8576,6714,6721,7354,7365,7369,6588,6590,7370] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.541,0.278,0.702]
select surf_pocket18, protein and id [3885,8019,8020,3844,3884,7985,8018,8017,3402,3403,3433,3434,3374,3443,3444,7989,8022,8024,8021,8023,8155,8187,8185] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.725,0.361,0.902]
select surf_pocket19, protein and id [13643,13654,13642,13653,13655,13608,13611,13612,13613,13456,13457,13684,13719,13339,13342,13340,13341,13343,13580,13579,13421,13428,13429,13606] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.592,0.278,0.702]
select surf_pocket20, protein and id [20820,20818,20687,20358,20360,20357,20451,20558,20548,20316,20688,20315,20816,20817,20356,20354,20380,20450,20355,20381] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.792,0.361,0.902]
select surf_pocket21, protein and id [9415,9319,9321,9323,9325,9513,9523,9280,9281,9320,9322,9783,9345,9346,9785,9652,9416,9782] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.643,0.278,0.702]
select surf_pocket22, protein and id [8647,8779,8648,8780,8781,8784,8786,10755,10757,10758,10917,10845,10846,10731,11052,11036,11051,10719,10732,10754,10756] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.855,0.361,0.902]
select surf_pocket23, protein and id [7672,7678,8469,7716,7679,7684,7685,7688,7690,8470,8510,8511,8580,8467,6935,6936,8484,8486,8485,6966] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.690,0.278,0.702]
select surf_pocket24, protein and id [2275,2276,2277,2281,2282,2571,2306,2308,2304,2305,2307,2303,2573,2576,2577,2607,2608,2386,2649,2394,2545,2544,2578,2393,2421,2422,2684,2619,2620,2618] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.878]
select surf_pocket25, protein and id [17227,17236,17196,17197,17198,17199,17237,19089,15141,15429,15456,15459,15170,17488,17489,15453,15427,15452,15454,15455,15480,17200,19082,19083,15514,15515,19079,17505,17511,15451,15469,15176,19067,15173,15143,15172] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.659]
select surf_pocket26, protein and id [6434,6437,5753,5754,5755,5756,6430,6447,6448,4359,5768,4352,4361,6420,4383,4396,4397,6193,6455,5764,5767] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.812]
select surf_pocket27, protein and id [18980,14819,18981,14796,14797,14798,14793,14794,14799,14811,14815,14800,14801,14807,18955,18957,17324,14351,14822,14312,14311,14319,14321,17293] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.608]
select surf_pocket28, protein and id [18713,18717,18714,18719,18720,18723,18751,18725,18707,19504,19503,19505,17971,19615,19546,18001,19520,19521,17970,19502,19545,19519] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.749]
select surf_pocket29, protein and id [15752,15755,15756,15759,16085,16086,16087,16084,16114,15746,15754,15777,15781,15829,15830,15749,16169,15796,15798,15801,16136] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.557]
select surf_pocket30, protein and id [15145,17225,17228,15396,15111,15146,15138,15431,15136,17223,17483,17472,17482,15432,15430,17490] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.682]
select surf_pocket31, protein and id [4418,4419,4392,4394,4417,4416,4106,4108,4137,4138,4135,4421,6161,6192,6162,6164,6163,6454,6201,6202,6470,6476,4434,4445,8045,8047,8048,4480,4479,6165] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.506]
select surf_pocket32, protein and id [3276,3277,3796,3759,3762,3758,3761,3763,3764,3765,6289,7920,7922,7923,6307,6310,7946,6258,3784,3766,3772,3780,3776] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.620]
select surf_pocket33, protein and id [4714,4742,4794,4795,4711,4717,4719,4720,4761,4763,4721,4724,5134,5101,6468,6469,4746,6481,6482,6483,5079,5050,5051,5052,5049] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.455]
select surf_pocket34, protein and id [17468,17465,17469,16788,16789,17483,17472,17482,17455,15387,15418,15420,15432,16790,16791,16802,16803,17225,17228,15394,15395,15396,15431,17490,15426] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.553]
select surf_pocket35, protein and id [3276,3277,3314,3796,3759,3762,3761,7920,7922,3284,7937,3316,3787,3784,7946,3315] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.408]
select surf_pocket36, protein and id [11359,11608,11610,11358,12658,12654,12643,12639,11398,11420,11421,11422,11419,11326,11328,11441,11443,11444,11329,11609,11399,11606,11607,11629] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.490]
select surf_pocket37, protein and id [3383,7938,7939,3345,3346,3316,3787,7940,3347,3320,3382,3314,3318,3321,3284] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.357]
select surf_pocket38, protein and id [584,2033,2034,2001,2032,1975,1990,1991,1993,2002,1592,1593,1591,1623,1624,1625,1643,1644,1978,562,1595] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.424]
select surf_pocket39, protein and id [513,514,449,450,456,460,463,377,543,544,229,209,208,233,237,369,228,263,240,404,231,367,435,436,451] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.306]
select surf_pocket40, protein and id [11303,11274,11275,11515,11516,11522,11526,11529,11443,11329,11294,11295,11299,11580,11609,11306,11610,11470,11501,11579,11502,11433,11435] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.361]
select surf_pocket41, protein and id [17819,17878,17863,19584,19585,19586,19587,17783,17808,17784,17781,2440,2441,17818,17866,17877] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.306,0.278]
select surf_pocket42, protein and id [3329,3330,3331,3332,3333,3334,3668,3665,3191,3190,3187,3208,3217,3244,3304,3305,3704] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.424,0.361]
select surf_pocket43, protein and id [3045,3182,3355,3184,3320,3382,3348,3345,3346,3318,3321,3008] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.357,0.278]
select surf_pocket44, protein and id [5038,5040,5251,5253,4975,5014,5008,5011,5323,5290,5003,5005,4979,5283] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.490,0.361]
select surf_pocket45, protein and id [13115,13116,12156,12179,12180,12203,12168,12170,13117,12161,13091,13125,13089,13118,13119,12159] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.408,0.278]
select surf_pocket46, protein and id [14351,14822,18973,18974,14382,14349,14353,14355,14380,14381,14356,14417,14418,14321,14319] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.553,0.361]
select surf_pocket47, protein and id [14353,14355,14380,14381,14383,14356,14417,14043,14217,14219,14080,14390] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.455,0.278]
select surf_pocket48, protein and id [7575,7335,7619,7622,7599,8533,8537,8561,8540,8557,8562,8563] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.620,0.361]
select surf_pocket49, protein and id [14437,14438,14479,14408,18995,19246,19282,19024,19025,19057,19254,14855,14418,18993] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.506,0.278]
select surf_pocket50, protein and id [16286,16288,16325,16358,16043,16038,16040,16073,16075,16014,16016,16317,16318,16010,16046] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.682,0.361]
select surf_pocket51, protein and id [6091,6092,6068,6075,6078,5749,5756,6433,6512,6513,6515,6518,5763,6071,6065] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.557,0.278]
select surf_pocket52, protein and id [7487,6116,6117,6510,6136,6139,7484,7489,7503,6182,6183,6184,7483,7488,6156,6144,7490] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.749,0.361]
select surf_pocket53, protein and id [8247,3444,7960,8211,7988,7989,7990,8022,3402,3403,3373,3820,8219,3383,7958] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.608,0.278]
select surf_pocket54, protein and id [13047,12984,12985,13046,13001,13002,13077,13076,12733,12951] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.812,0.361]
select surf_pocket55, protein and id [17106,16798,16791,17553,17547,17548,17550,17126,17127,16784,17468,17113,17110,17100,17103] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.659,0.278]
select surf_pocket56, protein and id [14364,14366,14222,14225,14252,14368,14700,14369,14703,14739,14339,14340,14243,14279] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.878,0.361]
select surf_pocket57, protein and id [5125,5569,5571,5534,5535,5536,5537,5538,5539,5562,4775,5124,5147,5190,5149,5152] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.690,0.702,0.278]
select surf_pocket58, protein and id [6843,6784,6842,6831,6828,8552,8550,6748,8551,8549] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.855,0.902,0.361]
select surf_pocket59, protein and id [7746,7793,7173,7181,7182,7172,7177,285,7150,100,7148] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.643,0.702,0.278]
select surf_pocket60, protein and id [1916,1949,1950,2011,2012,2042,2041,1667] 
set surface_color,  pcol60, surf_pocket60 
   
        
        deselect
        
        orient
        