
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
        
        load "data/7MO7.pdb", protein
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
 
        load "data/7MO7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10074,15721,15718,15719,15720,15725,10075,15711,15712,15737,10098,10193,10194,10195,10196,10197,10198,10081,10082,15230,14957,14958,10222,10224,14751,14750,14752,14760,14761,14762,14756,14757,9951,9952,10120,10101,10097,10099,10102,10182,14772,9943,9939,9947,9948,10183,10164,10166,10177,10180,10172,15753,15754,15755,15756,16037,16032,16034,16035,16036,15736,14948,10192,10207,10210,14956,14960,14955,10159,10163,16047,16043,16055,16056,10153,15703,15702,10057,10066,10072,10073,14790,14791,14753,9992,10054] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.424,0.702]
select surf_pocket2, protein and id [3883,3863,3864,734,751,753,1908,1884,1885,749,1889,1890,3807,3808,897,869,876,880,759,703,705,3576,3882,4362,3577,1910,2051,3789,3814,3559] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.514,0.902]
select surf_pocket3, protein and id [14146,11160,14128,14075,14129,14074,11010,11012,12152,12153,11014,11015,14144,14135,11132,13842,12171,12173,12150,12147,12174,14056,14062,14131,14068,14148,14150,10996,10997,11002,13661,10962,10966,10968] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.376,0.702]
select surf_pocket4, protein and id [2804,2803,3170,3148,3151,2867,3176,2876,2880,2872,2875,2781,2784,2785,2786,2782,2787,2774,3119,3120,3188,3184,3185,3186,3187,2983,2992,2993,3127,3128,2996] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.455,0.902]
select surf_pocket5, protein and id [13031,13032,13037,13044,13047,13048,13049,13474,13476,13390,13391,13264,13266,13386,13387,13250,13263,13248,13249,13587,13415,13416,13417,13418,13454,13453,13455,13139,13452,13604,13394,13247,13066,13067,13395,12910,12911,12912,12932,12913,12855,12857,12897,13130,13135] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.329,0.702]
select surf_pocket6, protein and id [4894,4895,4897,4942,4943,4304,4545,4725,4728,4303,4446,4761,4909,4912,4913,4915,4089,4584,4087,4709,4147] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.392,0.902]
select surf_pocket7, protein and id [16749,16764,16748,16752,16756,16932,12601,12602,16921,16922,16923,16457,16473,16474,16572,16574,16575,16577,16599,16597,16587,16589,16590,16736,16738,16740,16734,16745,16710,16711,16712] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.282,0.702]
select surf_pocket8, protein and id [7683,7686,7924,7926,8327,8412,8433,7921,7923,7685,8309,8310,7682,7684,7977,7986,7989,7991,8677,8679,7992,7995,8338,7987,7917,8411,8432,8693,8694,8696] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.388,0.361,0.902]
select surf_pocket9, protein and id [496,498,499,501,2277,2279,2251,261,252,444,486,487,435,437,439,420,366,2254,2255,2256,363,225,226,227,259,248,250,230,231,207] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.325,0.278,0.702]
select surf_pocket10, protein and id [10472,10495,10496,10498,10500,12514,12539,12540,12541,10750,10700,10751,10758,10759,10761,10479,10702,10683,10684,10760,10763,10765,12515,12516,10645,10681,10629,10508,12517,12518] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.447,0.361,0.902]
select surf_pocket11, protein and id [12087,12373,12388,12389,11909,12093,12123,12097,12111,12392,12395,11896,12335,12320,12342,12343,12350,12306,12317,12133,12134,12135,12136,12122,12126,12127,11748,11892,14083,12396,12375] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.373,0.278,0.702]
select surf_pocket12, protein and id [5256,5260,4131,5263,5264,4396,4129,4950,4321,4395,5272,4384,4392,4393,5317,5223,5290,4974,5234,4988,5231,5229,5232,5220,5222,5218,4414,4416,5369,5371,5350,4413,5325,5351,5322,5052] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.510,0.361,0.902]
select surf_pocket13, protein and id [13126,13970,13976,13123,13125,13124,13121,13122,13673,13675,13676,13637,13641,13991,13425,13133,13424,13426,13621,13623,13631,13698,13699,13720,13979] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.420,0.278,0.702]
select surf_pocket14, protein and id [14853,13771,14327,14337,16177,14856,16175,16176,16180,16186,16187,16188,12779,16181,14340,14857,14860,14344,13785,14339,13283,12784,14868,14870,14872,16189,16194,16192,16203,13769,13270,14345,13775,13772] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.569,0.361,0.902]
select surf_pocket15, protein and id [15515,15530,15554,15621,14681,14682,14651,14662,14659,15568,15270,15279,14587,14588,14683,15283,15284,15285,15531,15527,15281,15552,15556,15557,15559,14398,15584,15586,15618,15610,15613] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.467,0.278,0.702]
select surf_pocket16, protein and id [3601,3603,3126,3113,3509,3511,3012,3027,3621,3179,3467,3855,3856,3620,3462,3457] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.631,0.361,0.902]
select surf_pocket17, protein and id [10742,10744,10743,10756,10745,11434,11435,12527,11439,11444,10773,11445,10781,11450,11451,11453,11452,12487,12490,10763,10765] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.514,0.278,0.702]
select surf_pocket18, protein and id [4564,4070,4072,4073,5880,5885,5888,5889,5890,5891,5892,5893,5896,4572,4574,3503,3504,4077,3517,3518,3508,2517,5535] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.690,0.361,0.902]
select surf_pocket19, protein and id [9692,10222,10224,15229,15226,15227,15228,15230,14957,15231,10236,14965,10071,10081,10074,10075,10220,10209,14963,10210,9711,15264,10073,10076,9702,9708,15220,15255,10247] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.561,0.278,0.702]
select surf_pocket20, protein and id [12608,17185,17186,17188,16467,12606,16931,16912,16915,16925,16947,17178,17179,17180,17176,16479,16480,17013,17015,16468,16481,16482,16485,16486,16743,16744,17011,17012,16489] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.753,0.361,0.902]
select surf_pocket21, protein and id [11441,11442,11443,11444,11124,11125,11440,11123,14629,11174,14619,14621,14620,14628,11176,10376,11126,11484,13821,13822,11165,11169,11172,11173,11147,11427,11151,11148] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.608,0.278,0.702]
select surf_pocket22, protein and id [7713,8056,8057,9175,9176,8291,8292,7866,7712,7872,7873,9210,7667,7874,7862,7714,7715,8273,9197,9200,9208] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.812,0.361,0.902]
select surf_pocket23, protein and id [8382,8385,8387,9084,9085,9087,9090,9103,9405,9104,9108,9095,9096,9109,9113,8971,8972,8376,8372,8973,8977,8342,8343,8346,8314,8349,8351,8352,8353,8354,8315] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.655,0.278,0.702]
select surf_pocket24, protein and id [13393,13279,13870,13380,13777,13865,13868,13866,13727,13726,13446,14122,14123] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.875,0.361,0.902]
select surf_pocket25, protein and id [3717,3716,3707,3474,3478,3469,3470,3464,3134,3138,3140,3153,3154,3163,3677,3678,3679,3680,3676] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.698]
select surf_pocket26, protein and id [6589,6604,6977,6789,6773,6818,6602,6934] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.867]
select surf_pocket27, protein and id [2870,3158,3159,3160,2859,2861,2863,3356,3432,3453,3376,3378,3408,3703,3706,3712,2862,3364,3367,3370] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.651]
select surf_pocket28, protein and id [15392,14302,15393,14015,14320,14579,14023,14691,14692,14301,14444,14199] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.804]
select surf_pocket29, protein and id [8821,8773,8787,8788,8789,8823,8824,8826,8908,8909,8910,8911,8774,8605,8606,8607,8608,8827,8603,8604,8898,4486,4484] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.604]
select surf_pocket30, protein and id [9280,9282,9270,9273,9328,9330,9317,14480,14724,14721,14722,15671,15686,9354,9326,14738,15699,14807,14806] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.745]
select surf_pocket31, protein and id [15735,14927,16021,14960,14926,14925,15185,15174,14961,15033,15035] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.557]
select surf_pocket32, protein and id [16898,16882,17068,17272,16884,17114,17273,17287,17289,16900,16799] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.682]
select surf_pocket33, protein and id [2110,2120,2121,1830,2084,1848,2056,2057,2072,2091,2132,2054,2055,2133,2129,2125,2126,1870,1872,1873,2147,2043,1864,2079,2080,1834,1860] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.510]
select surf_pocket34, protein and id [13943,13945,13947,13982,13233,13942,13946,13983,13984,13425,13420,13421,13401,13745,13430,13407,13741,13731,13971,13974] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.624]
select surf_pocket35, protein and id [7753,7763,8069,8045,8261,8068,8264,8263,8265,7748,8028,8104,8105,8130,8086,8087] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.463]
select surf_pocket36, protein and id [16092,16080,16084,16091,16093,15999,16086,16401,16404,16409,16410,16001,16380,16000,15983,15998,16375] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.561]
select surf_pocket37, protein and id [6717,6719,2345,6629,2344,6881,6882,6182,6185,6181,6184,6186,6189,6171,6172,6885] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.416]
select surf_pocket38, protein and id [11672,11673,10646,10650,12449,10639,10642,10643,10644,12483,12485,10657,10659,12479,12480,12444,12516,10645,12474,12518] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.502]
select surf_pocket39, protein and id [6771,6921,6773,6993,6604,6832,6760,6602] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.365]
select surf_pocket40, protein and id [11505,11508,11433,11435,12525,12526,12499,11105,12535,11089,11086,11088,11081] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.439]
select surf_pocket41, protein and id [16870,16871,17918,17939,17943,16837,17919,17921,16844,16843,17398,17416,16834,17611,16830,17608,17609] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.318]
select surf_pocket42, protein and id [15827,16307,15920,16195,15980,15982] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.380]
select surf_pocket43, protein and id [10164,10180,10185,9801,16032,16034,16036,10188,9804,16041,9792,9814,10165] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.286,0.278]
select surf_pocket44, protein and id [11523,11089,11086,11088,12550,11524,11417,11433,11435,12525,12526,11505,11508,12535] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.400,0.361]
select surf_pocket45, protein and id [11507,11490,11492,11104,12294,11105,12500,11493,12460] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.333,0.278]
select surf_pocket46, protein and id [10994,11305,11306,11002,11296,11304,11294,11295,11833,11851,11850,11834,11006,12153,11768,11780,11781,11837] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.463,0.361]
select surf_pocket47, protein and id [9223,9225,9207,9209,9530,7666,7871,7874,7675,7649,7650,7652] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.384,0.278]
select surf_pocket48, protein and id [7496,7231,7419,7327,7301,7328,7407] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.522,0.361]
select surf_pocket49, protein and id [11752,11775,11777,11762,10924,11023,11024,12157,12159,12181,12158,12190] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.431,0.278]
select surf_pocket50, protein and id [16094,12624,12637,16102,16106,12629,16440,16442,12654,12675,16080,16088,16093] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.584,0.361]
select surf_pocket51, protein and id [16014,16061,16015,16519,16027,16028,16045,15894,14919,15895,16507,16513,16528,16516,16053,16063,16068,16058,16066,16508,16984] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.478,0.278]
select surf_pocket52, protein and id [14091,14086,11791,12340,10838,10837,12339,11793] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.643,0.361]
select surf_pocket53, protein and id [10525,10619,10620,10536,10431,10550,10551,10544,10456,10458,10459,10460,10461,10480,10485] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.525,0.278]
select surf_pocket54, protein and id [1172,1176,2227,2264,493,505,509,510,2224] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.706,0.361]
select surf_pocket55, protein and id [5375,4211,4212,4213,4456,4457,4510,4511,4529,5390,4444,4273] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.573,0.278]
select surf_pocket56, protein and id [6156,6119,6105,5785,5788,5797,6243,6108] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.765,0.361]
select surf_pocket57, protein and id [16128,16359,12691,16112,16126,12709,16122,16124,16116,16125,16111,12669,12687,12692,16135,16136,16342] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.620,0.278]
select surf_pocket58, protein and id [9446,9496,9513,9515,9586,9581,9583,9569,9571,9572,9282,9284,9269,9283,9443,9265] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.827,0.361]
select surf_pocket59, protein and id [1925,646,773,772,648,1365,1367,2010,647,2012] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.667,0.278]
select surf_pocket60, protein and id [13869,13871,13851,14066,13379,13307,13308,13381,13610,14123,14065,13306] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.886,0.361]
select surf_pocket61, protein and id [83,85,86,95,544,67,541,542,80,529,332] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.686,0.702,0.278]
select surf_pocket62, protein and id [4193,4312,5096,4032,4034,4035,4177,4405,4421,5077,4192] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.851,0.902,0.361]
select surf_pocket63, protein and id [5798,2393,2412,2413,5796,5792,6143,6146,6145] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.639,0.702,0.278]
select surf_pocket64, protein and id [7287,7408,7394,7396,7286,7244,7246] 
set surface_color,  pcol64, surf_pocket64 
   
        
        deselect
        
        orient
        