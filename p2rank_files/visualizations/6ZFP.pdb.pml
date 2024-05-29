
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
        
        load "data/6ZFP.pdb", protein
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
 
        load "data/6ZFP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14547,14549,14543,14544,14553,14482,14483,14552,14556,14557,14560,14561,14562,14563,14231,14233,14200,14229,14462,14432,14434,14600,14258,14260,14454,14225,14226,14197,14846,14826,14852,14611,15011,15012,14601,14608,15003,14966,15001,14879,14973,14967] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [20262,20263,20265,20304,20306,20622,20305,20566,26492,26472,26494,26495,26496,26470,22385,22402,20077,20091,26504,26503,26505,20107,20115,20116,20138,20140,20526,20528,20082,20078,20080,20081,20083,20079,20585,20586,20587,20588,20043,20061,21587,22020,20623,20624,20621,22003,22004,22006,28107,28108,20269,20270,20287,20267,20260,28097,28124,28125,28133,26475,28128,28129,22394,22381,26464,28134,28071,28074,28075,28096,20114,20243,21620,21619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.529,0.902]
select surf_pocket3, protein and id [24958,24960,25494,25495,25496,25497,25498,25418,25427,25445,25389,25391,25443,25457,25475,24901,24899,24930,24931,25102,25137,25104,25106,25381,25555,25351,25380,25379,25531,25523,25526,25447,25448,25356,25354,25554,25079,25028,25078,25080] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.396,0.702]
select surf_pocket4, protein and id [3565,11371,3539,3572,3573,3574,3575,3223,3224,3548,3192,3540,3225,3601,29353,29354,29355,3231,3255,11395,11396,11367,11361,11363,11631,11632,3197,3196,3198,11327,11330,3199,11606,11405,11428,11657,11659,11680,11683,11651,11652,11681,11684,11718,11402] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.486,0.902]
select surf_pocket5, protein and id [27738,27744,27745,26654,26248,26264,26265,26280,26282,27736,27734,27737,27635,28413,28416,26281,26678,26685,27665,26676,26706,27666,26674,26658,26665,26063,26069,26070,26106,26083,26084,26064,26058,26056,26060,26711,26717,26722,26748,26723,28409,26326,26563,26565,26566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.361,0.702]
select surf_pocket6, protein and id [27757,27758,27761,28413,28414,28415,28416,27598,27600,27767,27769,27621,27601,27602,27866,27741,27647,27623,27646,27742,27745,27835,27619,27620,27622,29191,29193,27638,27639,26078,28423,28424,28425,28429,29175,29173,28417,28418,28422] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.439,0.902]
select surf_pocket7, protein and id [6416,19131,19132,6156,6158,27371,27375,27378,27379,19572,19769,19770,19155,19154,19602,19603,27393,27394,27395,19547,6149,6147,6406,27380,27386,6381,27373,27370,6382,6224,19631,19632,19623,6380,19164,19157,19161,19195,19188,19189,6411,6414,6405,6407,6408,6410,21545,21543,21544,21546,21528,19539,19771] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.322,0.702]
select surf_pocket8, protein and id [9896,9895,9963,10275,10276,9924,9927,10279,10280,10278,9783,9785,9955,9806,9777,9909,9917,9919,9921,9923,9384,9893,9894,9901,9404,9439,9814,9813,9815,10239] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.392,0.902]
select surf_pocket9, protein and id [29353,29354,29355,29359,3203,3231,3206,12029,12367,29370,3239,2909,2910,2912,12359,3201,3204,29364,29365,12389,12390,12387,29368,29371,29367,2954,12054,11652,11655,12025,12051,12050,12046,11627,3196,3198,12047] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.286,0.702]
select surf_pocket10, protein and id [14278,14281,14271,13709,13711,14240,13710,13712,13713,13714,14407,14248,14269,14406,14270,14246,13737,13774,13738,14363,14364,14395,13806,14361,14362] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.373,0.361,0.902]
select surf_pocket11, protein and id [626,398,407,408,399,432,375,732,374,625,431,433,428,371,372,403,400,588,652,653,656,648,650,737,769,622,685,735,767,768,756,792,342] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.306,0.278,0.702]
select surf_pocket12, protein and id [21650,21651,21652,21262,21271,21244,22059,22018,22057,22058,20970,20971,20973,20969,21260,21261,21242,21248,21254,21258,21270,21680,21229] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.420,0.361,0.902]
select surf_pocket13, protein and id [3592,3593,3596,3597,3601,3624,3626,3563,3595,29317,29335,29320,29319,3635,11405,11715,11716,11717,11718,4225,4226,4191,4193,4224] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.345,0.278,0.702]
select surf_pocket14, protein and id [17079,17089,16822,17104,17105,17062,16801,17072,17074,17076,17064,17090,17093,17099,17107,234,22,81,82,83,52,55,56,57,58,20,21,90,210,211,184,190,188,189,181] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.463,0.361,0.902]
select surf_pocket15, protein and id [26334,26335,26371,24227,24465,24478,24479,24473,24189,24195,24197,24198,24444,24218,26368,26593,26594,26591,25846,25859,25844,25872,25869,25876,24192,24435,25843,24468,25863,24442,24443,25860,26399,26573,26577,26586] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.380,0.278,0.702]
select surf_pocket16, protein and id [19982,20006,20007,20139,19980,19983,20492,20493,20490,19913,19950,20560,20561,20516,20519,20041,20042,20141,20520,20521,20524,20010,20011,20013,20881,20883,20909,20014,19991] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.510,0.361,0.902]
select surf_pocket17, protein and id [14887,14913,14914,14876,14881,14882,15222,14974,14971,14955,15220,15251,15262,15263,15260,14535] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.416,0.278,0.702]
select surf_pocket18, protein and id [4805,4842,18814,18815,4801,4807,4431,4799,4485,4486,4808,4841,18821,18817,18825,18832,4462,4464] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.557,0.361,0.902]
select surf_pocket19, protein and id [24786,25702,25703,25704,25735,25737,26000,25723,25742,24781,25818,24754,25801,24751,24784,24779,25763,25762] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.451,0.278,0.702]
select surf_pocket20, protein and id [28,30,240,241,243,242,58,60,62,63,88,91,220,617,403,405,406,404,425,590,460,626,624,615] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.600,0.361,0.902]
select surf_pocket21, protein and id [22074,22106,22305,22082,21033,21034,21035,21036,21037,21038,21027,22079,22050,22456,20637,21040,22457,22481,22482,22483,21039,22302,22329,22303,22304,22449] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.486,0.278,0.702]
select surf_pocket22, protein and id [16254,16255,16261,16271,16363,16364,16326,16325,16555,16583,16585,16248,16256,16257,16589,16684,16592,16594,16651,16652,16615] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.647,0.361,0.902]
select surf_pocket23, protein and id [28643,27557,28697,28677,27807,28705,28706,27582,27788,27580,27552,27555,27586,27886,27884,27887,28729,27878,27592,27861] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.522,0.278,0.702]
select surf_pocket24, protein and id [8014,8015,9139,9140,9103,9648,9684,9687,9688,9643,9164,9710,8046,9678,9680,8532,9101] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.694,0.361,0.902]
select surf_pocket25, protein and id [28071,28074,28075,28096,28065,28067,20112,20114,29057,29056,20240,20146,20147,20224,28108,20270,20238,20239,20244,28097,29022,20245,20248,20249,20250,20148,28036,20115,20088] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.557,0.278,0.702]
select surf_pocket26, protein and id [17375,17086,17088,17348,17346,17116,17351,17083,17317,17053,17378,17380,17379,17424,17425,14,15,17082,16,39,45,46,17339,17341] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.737,0.361,0.902]
select surf_pocket27, protein and id [11001,11020,11021,11022,11379,11375,11404,11000,4136,4161,4163,10984,4191,4192,4193,3601,3562,3563,3564,3565,3594,3595,11369,11405] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.592,0.278,0.702]
select surf_pocket28, protein and id [2832,2752,2751,2507,2510,2549,2550,2479,2748,2750,2775,2476,2798,2781,2799,2782,2783,2784,2508,2474,2469,2472] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.784,0.361,0.902]
select surf_pocket29, protein and id [26278,26281,28379,28380,28382,27757,27758,28416,27739,27746,27745,26280,26282,26298,27740,26326,27748,26319,26323,27749,26286] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.627,0.278,0.702]
select surf_pocket30, protein and id [26317,28533,28349,28298,28299,28296,28297,28345,28256,28254,28258,28260,28302,28309,27774,27796,28351,28346] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.831,0.361,0.902]
select surf_pocket31, protein and id [27480,27481,27447,27449,20065,20069,20070,20072,20071,28048,27419,27457,20064,21584,21585,26498,20092,26502,26500,21570,21580,20055,21557,21563,20057] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.278,0.702]
select surf_pocket32, protein and id [7973,8918,25745,25746,7972,8917,8487,8488,8913,7992,8506,8507,8525,25751,8908,25756,25759,8524,8503] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.875,0.361,0.902]
select surf_pocket33, protein and id [6264,6247,6652,6673,6674,6261,6265,6325,18611,18612,19014,19013,6326,18573,6256,6622,6251,6624] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.698,0.278,0.702]
select surf_pocket34, protein and id [28468,28469,28758,28766,28514,28515,28778,28787,28507,28470,27824,27812,27819,27820,27829,27831,28768] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.878]
select surf_pocket35, protein and id [3118,3472,3976,3980,3981,2711,2719,3091,3094,3100,2335,2336,2689,3441,3970,3971,3972,3975] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.667]
select surf_pocket36, protein and id [6105,6088,21550,21557,21561,6083,6084,6081,6087,21574,27702,27457,27700,27454,27455,27424,6133,6134,27699] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.831]
select surf_pocket37, protein and id [25124,25122,26624,24797,24827,24824,24825,24826,24806,25156,25159,25153,24890,24836,26609,24771] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.631]
select surf_pocket38, protein and id [4135,10984,10985,10969,10970,4096,4098,10964,3556,3555,3525,4044,4097,4099] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.788]
select surf_pocket39, protein and id [26542,26543,26544,6118,27702,26546,27723,26524,27459,27701,27458,27708,27486,26525,26511,27714,27678,27709,27711] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.596]
select surf_pocket40, protein and id [21878,21726,21728,22158,22160,22157,22159,22136] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.741]
select surf_pocket41, protein and id [7971,7973,8918,25745,25746,7972,25747,8917,8487,8488,8912,8914,8919,8452,8455,8337,8328,8330,8339] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.557]
select surf_pocket42, protein and id [19632,19629,19623,27370,27341,19811,19812,27380,27384,27385,27386,19815,27408,19602] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.694]
select surf_pocket43, protein and id [1591,1592,1621,1458,1731,1732,1417,1615,1734,1656,1392,1416,1425] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.522]
select surf_pocket44, protein and id [7169,7613,7605,26026,26009,26213,7634,7636,26010,26212,26143,7675,7676] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.651]
select surf_pocket45, protein and id [19639,19373,19652,19338,19340,19341,19641,19235,19236,19241,19266,19648,19637,19643] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.486]
select surf_pocket46, protein and id [24512,24225,24254,24257,26344,28281,24531,24541,24256,28287,28290,28293,24532,24533,26307,26305,28294] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.604]
select surf_pocket47, protein and id [1914,1792,1795,1798,1574,1575,1787,1548,1509,1480,1760,1762,1508,1789,1476,1500,1478] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.451]
select surf_pocket48, protein and id [4944,4945,5622,4962,5345,4969,4973,4916,5325,5334,5336] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.557]
select surf_pocket49, protein and id [23936,23937,28172,28182,23636,23635,23638,23079,23901,23902,23903,23904,28189,23607,28173,28171] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.416]
select surf_pocket50, protein and id [950,1071,1073,1293,1319,980,1296,1292,1267,1299,948,952] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.514]
select surf_pocket51, protein and id [22106,22305,22267,22269,21033,21034,21035,22245,22271,22304,22490,22516,22518] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.380]
select surf_pocket52, protein and id [25753,25751,25754,26170,26171,7641,25987,7640,7996,8020,8027,7994,7638,8000] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.467]
select surf_pocket53, protein and id [4032,11280,11258,3555,3524,3525,3531,3532,3534,11300,11253,10961,10964] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.345]
select surf_pocket54, protein and id [14443,14818,13507,13505,13504,13471,13872,13898,13908,13870,13873,14816,14817,13899,13900,13901,14467,13934] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.420]
select surf_pocket55, protein and id [2359,2387,2736,2746,3985,3988,3989,3152,3980,3981,3982,3983,2711,2715,3150,2737,2738] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.278,0.310]
select surf_pocket56, protein and id [917,916,796,801,797,824,825,1271,1122,1123,1124,1095,806] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.376]
select surf_pocket57, protein and id [5752,5753,5683,5687,6027,5684,21935,5638,5640,5992,6002,5666,5680] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.286,0.278]
select surf_pocket58, protein and id [23068,23069,23418,23416,23417,23453,23039,23454,23455,23040,22816] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.392,0.361]
select surf_pocket59, protein and id [1300,1301,1357,1388,1423,1275,1283] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.322,0.278]
select surf_pocket60, protein and id [22366,22663,22664,22665,23031,22689,22698,22365,22374] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.435,0.361]
select surf_pocket61, protein and id [23696,23672,28207,28621,28620,28622,28206,23695,23692,23693,23701,23702,23709,23735,28623] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.357,0.278]
select surf_pocket62, protein and id [28766,28791,28470,27838,27841,27081,27080,28798] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.482,0.361]
select surf_pocket63, protein and id [25547,25580,25346,25348,25349,25344,25345,25347,25576,25577,25546,25372,25373,25375,25376,25386,25387,25374] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.392,0.278]
select surf_pocket64, protein and id [106,184,190,188,189,181,107,16802,16822,16801] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.529,0.361]
select surf_pocket65, protein and id [9000,9455,9132,9131,9661] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.427,0.278]
select surf_pocket66, protein and id [29374,29368,29371,29375,29367,2954,12822,12390,12408,29370,12409,12821,2950,2955] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.573,0.361]
select surf_pocket67, protein and id [6993,6968,7000,7135,6821] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.463,0.278]
select surf_pocket68, protein and id [885,881,916,826,828,864,859,862,863,1216,855,886,889,925,1271,1241,1230] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.620,0.361]
select surf_pocket69, protein and id [20072,20071,27419,20033,27448,27440,27989,27441,19842,27417,27418,27415] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.498,0.278]
select surf_pocket70, protein and id [4698,4700,4702,10104,4667,4701,4666,5052,5081,5079,5082,4665,5050,10083] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.667,0.361]
select surf_pocket71, protein and id [16681,16649,16651,16328,16330,16358,16361,16331,16707,16676,16677,16678,16675,16648] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.533,0.278]
select surf_pocket72, protein and id [13039,12663,12776,12774,12638,12645,13002,12640,12641,12980,13004,12628,13037,12978] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.710,0.361]
select surf_pocket73, protein and id [14158,14186,14192,13626,14159,14161,13653,14183] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.569,0.278]
select surf_pocket74, protein and id [18245,17882,18365,18028,18357,17844,17997,17996,18208] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.757,0.361]
select surf_pocket75, protein and id [26220,26222,26241,25834,26662,25855] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.608,0.278]
select surf_pocket76, protein and id [24881,24849,24851,24879,24883,24884,24889,26093,24846,26267,26268,26270,26271] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.804,0.361]
select surf_pocket77, protein and id [17119,17123,17120,17150,16879,17125,17130,16887,16888,16911,16910,17124,17131] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.643,0.278]
select surf_pocket78, protein and id [3680,4200,4443,4444,4445,3679,4232,4234,29305] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.847,0.361]
select surf_pocket79, protein and id [10576,10468,10489,10450,10856] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.678,0.278]
select surf_pocket80, protein and id [7021,6636,6665,6658,7077,6640] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.894,0.361]
select surf_pocket81, protein and id [14500,14501,14502,14513,14199,14201,14167,14475] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.686,0.702,0.278]
select surf_pocket82, protein and id [8547,8583,8483,7962,8455,8456] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.859,0.902,0.361]
select surf_pocket83, protein and id [18441,18464,18497,18443,18362,18363,18079] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.651,0.702,0.278]
select surf_pocket84, protein and id [15175,15146,15009,15142,15011] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.816,0.902,0.361]
select surf_pocket85, protein and id [19841,19814,27410,27307,19851,27306] 
set surface_color,  pcol85, surf_pocket85 
   
        
        deselect
        
        orient
        