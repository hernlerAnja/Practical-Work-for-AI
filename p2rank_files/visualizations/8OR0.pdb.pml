
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
        
        load "data/8OR0.pdb", protein
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
 
        load "data/8OR0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5038,5039,5009,5010,5029,4984,6035,6036,6395,6396,6397,6435,6437,6688,6698,6699,6700,5037,5035,5030,5360,5005,6034,6262,4985,6230,6232,6233,6227,6228,6229,4988,6701,6702,5406,6065,6072,6066,6096,6097,6099,6056,6064,6119,6128,6203,5404,5382,5383,5384,5386,6208,6058,6059,6060,6206,6204,6032,6041,6044,6046,5841,5065,5066,6098,6095,6104,5401,5402,5403,5405,5514,5516,5521,5214,6438,3500,5206] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.427,0.702]
select surf_pocket2, protein and id [97,391,746,747,352,351,766,772,773,275,241,242,278,273,265,266,349,305,714,715,719,744,98,738,716,718,122,123,767,392,353,359,722,428,135,96,75,99,67,70,44,46,35,38,34,68,32,30,4,421,418,420,900,803,771,793,794,791,792,795,800,896,899,931] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.525,0.902]
select surf_pocket3, protein and id [16784,16989,16644,16645,16646,16991,16175,16177,16568,16587,16638,16623,16603,16604,16883,16884,16885,16720,16724,16726,16571,16727,16990,16958,16913,16916,16917,16929,16931,16567,16743,16744,16583,16767,16768,16783,16889,16897,16898,16739,16932,16969,17068] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.388,0.702]
select surf_pocket4, protein and id [11457,11490,11492,11638,11637,11458,11716,11756,11626,11627,11659,11660,11400,11401,11404,11636,11423,11426,11483,11481] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.475,0.902]
select surf_pocket5, protein and id [4284,5569,5571,4656,4658,4659,4361,4189,4205,4653,4655,4666,4667,4230,4227,4229,4228,4687,4668,5550,5548,4360,4398,5572,4357,4383,4386,5546,5554,4285,4707,4708,4752,4263,4266,4640,4641,4642,4646,4683,4684,4767] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.353,0.702]
select surf_pocket6, protein and id [1747,1775,1821,1776,1449,1450,1451,1819,1822,1448,1096,1128,1130,1246,1129,1378,1379,1380,1416,1424,1823,1269,1414,1270,1852,1853,1854,1886,1887,1827,1847,1425] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.427,0.902]
select surf_pocket7, protein and id [1735,1736,1737,13711,1764,1765,14136,1738,1739,14157,14158,14194,13709,14137,13708,13710,13705,14192,14193,14200,14168,14169,1163,1683,1684,1710,1712,1682,1161,1777,1766,13734,13735,1151,1154,1158,1152,1177,1157,1196,1159,1178,13715,13396,13395,13397,1703,14191,14190,1731,1732,1725,1727,1726,14160,14162] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.314,0.702]
select surf_pocket8, protein and id [8241,8244,8245,8230,8231,8240,8261,8116,8117,8118,8567,8458,8207,8456,8457,8570,8267,8435,8425,8427,8402,8405,8406,8407,8090,8095,8125,8426,8292,8264,8293,8355,8094,8370] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.376,0.902]
select surf_pocket9, protein and id [11309,11311,10832,11114,11124,11033,11031,11142,11143,11144,11306,11307,11308,11344,11034,11343,11090] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.286,0.278,0.702]
select surf_pocket10, protein and id [1276,1254,669,14029,14027,698,696,731,732,14765,14014,1278,14793,14794,14385,14752,14753,14762,14763,14764,1227,1228,14376,14377,1224,14382,668,14028,707,705,14026,701,702,630,629,633,665,666,667,626,628,1237,596,14079] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.392,0.361,0.902]
select surf_pocket11, protein and id [16293,16294,16026,16442,16404,15988,16382,16387,16439,16027,15987,15989,16380,15927,15924,15923,16385] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.325,0.278,0.702]
select surf_pocket12, protein and id [13499,13666,13328,13329,13347,13517,13518,13519,13520,13530,13529,13531,13516,13382,13345,13468,13469,13350,13348,13466,13696,13749] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.443,0.361,0.902]
select surf_pocket13, protein and id [3220,3190,3191,3192,3194,3494,3495,3502,3507,4958,4925,4920,4923,4924,3215,3216,3222,3223,3228,3259,3226,3227,3258,5233,5234,5235,6438,3496,3497,3500,5214,5246,5206,6230,6232,6237,6244,6252,6247,4988,6226,6702,4949,4950,4952,6259,4985,4987,6261,3229,3820,3534,3530,3531,3230,4984] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.365,0.278,0.702]
select surf_pocket14, protein and id [15435,15436,15401,15801,15802,15799,15427,15226,15309,15149,15307,15308,15310,15227,15460,15459,15461,15815,15818,15261,15264,15282,15287,15288,15469,15467,15402,15379] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.494,0.361,0.902]
select surf_pocket15, protein and id [3423,3580,3544,3550,3576,3578,7287,7021,3551,3549,7042,7007,6984,6986,7008,3375,3429,3430,3401,7634,7319,7338,7308,7339,7341,7317,7318,7320,3421,3454,3399,3402,7310] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.404,0.278,0.702]
select surf_pocket16, protein and id [13037,13046,13052,13053,13039,13336,13334,13041,13309,13639,13335,13638,13306,13307,13308,13600,13081,13079,13080,13020,13021,13022,13023,13630,13043,13042,13285,13040,566,567,568,1146,1148,1201,1204,1203,1210,1211,1212,13628,13629,1189,13366,13368,13357,13355,13356,13658,13659,1205] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.541,0.361,0.902]
select surf_pocket17, protein and id [3848,3849,3850,3847,5802,3790,5653,4102,4103,5672,5649,5794,5959,5962,5944,5708,5963,5714,5715,5790,5801,3825] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.443,0.278,0.702]
select surf_pocket18, protein and id [4057,4059,4078,3647,3770,4024,4056,4058,3784,5666,5660,5662,5663,5665,5972,5986,3648,3768,3769,3591,3592,3595,3597,3617,3557,3783,3800,3619,3613,3614,3618] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.592,0.361,0.902]
select surf_pocket19, protein and id [616,618,1034,1037,620,996,496,993,994,992,991,963,965,489,642,643,961,465,1039,491,487,490,606,608,998,999,957] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.478,0.278,0.702]
select surf_pocket20, protein and id [16173,16669,16142,16171,16658,16659,16370,16152,16393,16153,16155,16529,16530,16482,16691,16692,16478,16359,16453,16455,16118,16481,16485,16448,16480,16392] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.643,0.361,0.902]
select surf_pocket21, protein and id [3119,2942,2802,2803,2551,2798,2911,2550,2518,2524,2552,2529,2520,2560,2528,2909,2932,2940,2907,2910] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.518,0.278,0.702]
select surf_pocket22, protein and id [13987,13985,14003,206,218,177,216,13999,213,13984,13988,739,734,736,738,124,174,175,114,205,14000,14007] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.694,0.361,0.902]
select surf_pocket23, protein and id [8999,9024,9106,9107,8989,8749,8750,8752,8754,8991,8753,9022,8966,8968,9127,9128,8818,8747,8789,9129,9130,9131,8751,9073,9100,9101,9104,9095,9074] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.557,0.278,0.702]
select surf_pocket24, protein and id [8784,8783,8769,8770,8771,8419,8412,8413,8731,8732,8739,8741,8442,8443,8444,8414,8436,8630,8657,8649] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.741,0.361,0.902]
select surf_pocket25, protein and id [4317,4585,4586,4610,4305,4332,4304,4330,4331,4329,4142,4146,4797,4556,4798,4820,4775,4780,4795,4796,4770,4764,4783,4611] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.596,0.278,0.702]
select surf_pocket26, protein and id [7349,7321,7325,7226,7257,7291,6946,6954,7293,7207,6923,7196,7062,7034,7035,6919,6921,6943,6944] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.792,0.361,0.902]
select surf_pocket27, protein and id [15084,15083,15021,15023,15057,14998,14995,15009,15011,15014,14863,14671,14672,14651,14680,14866,14867,15056,14889,14916,14890,14652,14653] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.635,0.278,0.702]
select surf_pocket28, protein and id [6585,6588,6589,6481,6482,6335,6324,6305,6787,6458,6622,6620,6736,6760,6761,6358,6451,6361,6612,6323,6646] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.843,0.361,0.902]
select surf_pocket29, protein and id [11963,11965,12248,11731,11964,12025,12027,12028,12055,12249,12281,12247,12229,12030,12035,12029,11940,12051,12054,12053,11763,11764] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.675,0.278,0.702]
select surf_pocket30, protein and id [7436,7408,7151,7492,7386,7150,7183,7184,7185,7375,7376,7357,7413,7414,7434,7435] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.890,0.361,0.902]
select surf_pocket31, protein and id [14009,14010,15325,15324,15326,759,15297,15299,755,757,751,15301,15810,252,253,778,14722,14725,15292,14721] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.686]
select surf_pocket32, protein and id [4115,4117,3954,4132,4133,4134,3877,4136,4137,4135,3893,3949,5618,3919,5619,3879,3900,3930,3931,3932,3955,3890] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.859]
select surf_pocket33, protein and id [2289,2288,2032,2034,2214,2239,2261,1996,2055,1959,2018,1990,1994,2238] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.647]
select surf_pocket34, protein and id [2322,2356,2764,2643,2607,2636,2739,2741,2732,2735,2736,2733,2324,2672] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.808]
select surf_pocket35, protein and id [6588,6589,6590,6479,6481,6482,6552,6553,6554,6551,6555,6305,6786,6787,6806,6808,6514,6513,6761] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.608]
select surf_pocket36, protein and id [11911,12192,12194,11797,11787,11798,11762,11763,11764,11815,11825,12083,12051,12082,12163,12054,12053,12166,12220,12221,11938,11939,11940] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.757]
select surf_pocket37, protein and id [5587,3911,4339,4369,4368,5612,5613,5614,5615,5616,5619,4340,3898,4337,4338,5601,5588,5586,4159,4164,4165,4171,4172,4298,5608,4307] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.573]
select surf_pocket38, protein and id [15452,15453,15454,15653,15662,15666,15668,15747,15683,15684,15746,15867,15868,15838,15659,15837,15839,15745,15667,15487,15861] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.710]
select surf_pocket39, protein and id [10931,11234,11236,1557,1561,1562,11235,11237,11245,1554,1555,1987,1988,1526,1552,1553,1976,1527,11226,1587,1590,10932,11249,1973,1986,2005,10930,2013,1974,11242,11241,11543] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.533]
select surf_pocket40, protein and id [3051,7659,7658,7657,3464,7370,3463,7369,7362,7329,7337,7392,7391,7685,7686,3429,3430,7634,7340,3436,3406,3461,3462,7071,3408,7632] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.659]
select surf_pocket41, protein and id [15326,15332,15297,15299,15310,15301,251,252,253,15793,228,15380,15334] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.494]
select surf_pocket42, protein and id [13813,13531,13834,13527,13551,13876,13614,13644,13646,13643,13645,13652,13846,13841,13844,13671,13672,13674,13812] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.608]
select surf_pocket43, protein and id [15720,15917,15918,15919,16023,16025,16014,16015,16210,15681,16207,15694,15697,16208,15700,16013] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.455]
select surf_pocket44, protein and id [1745,1918,1919,1720,1520,1518,1917,1950,1952,1516,1686,1689,1951,1706,1715,1688,1708,1925,1928,2206,2208,1721,1949,1958,1960,1517,1521] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.561]
select surf_pocket45, protein and id [9427,9482,9723,9459,9490,9690,9692,9691,9480,9509,9478,9484,9664] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.416]
select surf_pocket46, protein and id [12401,12508,12703,12741,12510,12370,12509,12644,12645,12646,12647,12378,12350,12345,12617,12620,12622,12534,12584,12586] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.510]
select surf_pocket47, protein and id [3184,3221,3130,3476,3467,3468,3469,3470,3472,3477,3128,3106,3220,3186,5224,5232,5235,3478,3499,3133,3136,3137,3102] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.376]
select surf_pocket48, protein and id [2622,2621,2623,2642,2742,2723,2724,2749,2750,3151,3112,3113,3090,2584,2585] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.459]
select surf_pocket49, protein and id [2547,2552,2406,2517,2519,2794,2413,2415,2789,2792,2802,2549,2551,2407,2387,2573,2574,2575] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.337]
select surf_pocket50, protein and id [12371,12526,12527,12528,12341,12228,12066,12296,12293,12340,12294,12292,12303,12277,12290,12298,12299,12524,12587,12588,12251,12253,12203,12226,12207] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.412]
select surf_pocket51, protein and id [8740,8990,8991,8739,8741,8784,8630,8657] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.298]
select surf_pocket52, protein and id [559,12760,12759,555,564,13060,13081,13080,13059,13053,12780,12783,565,1112,1147,1148] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.361]
select surf_pocket53, protein and id [558,559,12760,12757,12759,12721,12723,12756,12758,12465,12468,12469,12490,12458,12485,12754,12492,12464,12457,12459] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.298,0.278]
select surf_pocket54, protein and id [18277,18255,18280,18204,18205,18222,18225,18179,18374,18175,18176,18178,18181,18185,18319,18291,18295,18315,18259] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.412,0.361]
select surf_pocket55, protein and id [10559,10689,10690,10803,10800,10825,10824,10827,10855,11026,10808,11025] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.337,0.278]
select surf_pocket56, protein and id [4775,4776,3350,3347,3328,4169,4155,4153,4142,3329,3331,3333,3332,4305,4168,4166] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.459,0.361]
select surf_pocket57, protein and id [283,286,282,288,15394,284,285,788,15784,15787,15788,15782,15760,16240,15764,16241,786,15786,15789] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.376,0.278]
select surf_pocket58, protein and id [14284,14288,14145,14147,14148,14149,14150,14179,14240,14177,13847,14213,14285,14287] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.510,0.361]
select surf_pocket59, protein and id [17344,17236,17239,17218,17253,17238,17252,17254,17323,17328,17329,17216,17215,17464] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.416,0.278]
select surf_pocket60, protein and id [17697,17698,17588,17587,17598,17666,17667,17668,17536,17537,17539,17540,17543,17538,17522,17523,17558,17454,17573] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.561,0.361]
select surf_pocket61, protein and id [15810,251,253,783,15786,774,776,777,788,15784,784,785,786,15808,15807,277,285] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.455,0.278]
select surf_pocket62, protein and id [3230,4915,3266,4916,3839,3841,4918,3229,6250,6251,3818,3819,4951,4952,6254,6255,4890,4891,3227,3265] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.608,0.361]
select surf_pocket63, protein and id [7798,7970,7818,7943,8262,7946,8087,7852,8080,8110,7827,7947,8086,8088,8082,8029,8028] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.494,0.278]
select surf_pocket64, protein and id [5105,5488,5491,5492,5495,5056,5153,5022,5057,5334,5414,5335,5125] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.659,0.361]
select surf_pocket65, protein and id [6794,6769,6788,6862,7085,6885,6887,6861,6886,6858,6860,6894,7114,6816] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.533,0.278]
select surf_pocket66, protein and id [1291,1410,1292,999,1000,1287,997,1368,969,971,1320,1318,1370,1371,1367,1290,1289,1316,1317] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.710,0.361]
select surf_pocket67, protein and id [17439,17398,17414,17558,17454,17447,17450,17573,17588,17460,17464,17537,17535,17538,17399] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.573,0.278]
select surf_pocket68, protein and id [14212,14214,14525,14213,14543,14256,14498,14285,14255,14257] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.757,0.361]
select surf_pocket69, protein and id [8259,7946,8084,8087,8106,8107,8108,8118,7852,8110,7850,7851,7924,7947,8142,8236,7923,8086,8082] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.608,0.278]
select surf_pocket70, protein and id [1279,14388,14791,14792,14787,1303,14786,14756,1818,1830,1832,14779,14780,14781,1833,14820,14817,1824] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.808,0.361]
select surf_pocket71, protein and id [2796,2804,2549,2551,2794,2547,2770,2573,2574,2580,2577] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.647,0.278]
select surf_pocket72, protein and id [7553,7901,7904,7551,7912,7914,7915,7938,7813,7906] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.859,0.361]
select surf_pocket73, protein and id [8679,8677,8678,8352,8350,8376,8378,8337,8295,8300,8302,8304,8670,8326,8354,8650,8406] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.686,0.278]
select surf_pocket74, protein and id [8848,8849,8932,8933,8938,8962,8963,8964,8965,9340,8927,8928,8931,8966,8967,8968,9159,8818] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.890,0.902,0.361]
select surf_pocket75, protein and id [3655,3979,3652,3680,3681,3686,3753,3990,3734,3732,3733] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.675,0.702,0.278]
select surf_pocket76, protein and id [15756,15868,15866,15898,16210] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.843,0.902,0.361]
select surf_pocket77, protein and id [2059,2057,2671,2181,2182,2185,2153,2187,2290,2289,2178] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.635,0.702,0.278]
select surf_pocket78, protein and id [4957,5259,5262,4996,5265,5294,5295,5296,5252,5270,5271,5272,5245,5247,4933,4934,4959,4935,4964,4969] 
set surface_color,  pcol78, surf_pocket78 
   
        
        deselect
        
        orient
        