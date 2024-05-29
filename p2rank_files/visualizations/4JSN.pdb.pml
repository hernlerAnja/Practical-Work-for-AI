
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
        
        load "data/4JSN.pdb", protein
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
 
        load "data/4JSN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9592,9601,10311,10320,10321,10319,9249,9253,9606,10304,9250,9942,10328,10346,10347,10348,10322,9243,9611,9614,9616,9678,9947,9619,9932,9941,9608,9943,9965,9261,9264,9267,9620,9623,9258,9242,10305,10307,8907,11003,11013,10703,10704,10708,6868,6893,11005,11008,8913,8916,8920,8930,8931,8932,8933,11029,8917,11016,11022,11026,10707,8929,8937,9593,9594,9595,6881,6882,9919,9927,10294,10298,10678,6866,6867,10685,10687,9640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [20284,20285,20288,20293,20296,20643,20641,20646,20649,20651,20655,20713,20976,20977,20978,21356,21357,20982,20654,20985,20658,20299,21383,20996,21000,21381,21382,21339,21346,20967,21354,21355,21363,20954,20962,20627,20636,20630,20675,21329,21720,21722,21713,21340,19942,21342,19948,19951,19952,19955,19965,19966,19968,19967,17901,17902,17903,20277,20278,21738,21739,21742,21743,22061,22064,22079,19972,17928,22040,22038,22043,22048,22051,22057,21333,17916,17917] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [13036,12710,11887,11890,13024,13025,13069,13067,13068,11883,11884,11885,12165,12354,12356,12717,12741,12328,12329,12367,12368,12366,12114,12331,12337,12115,12334,12666,12667,12691,12657,12689,11880,12142] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.369,0.702]
select surf_pocket4, protein and id [1644,1625,1651,1262,1263,1285,1286,2001,1591,1623,1600,1265,1268,1271,1601,1049,824,817,818,819,1301,1302,1099,1675,2032,2033,2034,1989,1288,1290,1990,1048] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.435,0.902]
select surf_pocket5, protein and id [18517,18522,17152,18518,18523,17133,17151,18429,18514,18516,17549,17135,17544,17602,17608,18428,18403,18413,18525,16988,17173,17174,17175,18524,17562,16955,16956,16957,17005,16970,17557,17560,16969,17559,17561,17567,17564,17551,17595,17591] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.314,0.702]
select surf_pocket6, protein and id [6573,7368,7479,7481,7483,7394,7482,6184,6509,6098,6100,6527,7484,6117,5953,6116,6138,6139,6140,7487,7378,7490,5921,5935,5970,5934,7489,6514,6516,6525,6535,6529,6532,6567,7393,6556,6526,6524] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.369,0.902]
select surf_pocket7, protein and id [11920,11918,12170,12156,12168,12169,12179,12180,13218,13116,13117,13152,13217,13115,12203,11902,13327,13354,13357,13358,13359,13053,13246,13247,13055,13091,13089,13057,13059,13092,12159,12161,13381,13151,13347,13348,13382] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.302,0.278,0.702]
select surf_pocket8, protein and id [1102,1103,1104,1113,1114,1090,1137,2292,852,854,2347,2183,2116,2346,2182,2117,2080,2081,2082,2323,2312,2319,2322,2324,2056,2057,2020,2022,2024,2018,1093,1095,2211,2212,2054] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.424,0.361,0.902]
select surf_pocket9, protein and id [17952,21670,21674,21675,21676,21684,21685,17799,17802,17987,17989,17990,17836,17838,21831,21835,21848,21849,17822,17823,17831,17832,17835,18015,18016,18017,21665,21660,2736,2737,2738,2710,2711,17801,17826,17824,17825,22008,22020,22021,17803,18014] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.357,0.278,0.702]
select surf_pocket10, protein and id [21787,21789,21791,21880,22069,22071,19682,19683,21754,21766,21767,22087,22085,22086,21881,19699,19814,19816,19819] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.490,0.361,0.902]
select surf_pocket11, protein and id [10731,11050,11052,11034,11036,11051,8647,8779,8781,8784,8664,10845,10846,10719,10750,10751,10752,10754,10760,10756,10774,8648] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.408,0.278,0.702]
select surf_pocket12, protein and id [9219,9220,9370,9023,9025,9371,7581,7595,6839,7593,9221,8522,7603,8521,6902,8523,7596,7613,6901,6857,8519,8525,6873,7612] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.561,0.361,0.902]
select surf_pocket13, protein and id [9785,9652,9782,9416,9513,9523,9319,9320,9321,9322,9323,9325,9280,9281,9415,9345,9346,9279] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.463,0.278,0.702]
select surf_pocket14, protein and id [18648,20254,20255,20256,20405,20406,17904,18616,17892,17936,17937,17874,18630,20058,20060,18631,18628,19557,19558,19560,17905,17908,19554,19556] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.631,0.361,0.902]
select surf_pocket15, protein and id [17198,17200,17511,19083,19082,15513,15514,15515,15480,15455,15456,15459,15451,15469,15494,17489,17227,17237,15141,15430,17197,15453,17488,15429,15170,17501,17505] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.518,0.278,0.702]
select surf_pocket16, protein and id [19589,19591,19588,19583,17782,19582,17784,19586,18399,19611,18405,18389,17756,17757,2431,17623,17625,17749] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.698,0.361,0.902]
select surf_pocket17, protein and id [4418,4394,4420,4421,4424,4416,6454,6162,6163,6165,6470,6476,4445,4434,4108,6202,8047,4135,4480,8048,4478,4479,4459,4106,6192,4395] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.573,0.278,0.702]
select surf_pocket18, protein and id [7026,7027,7029,7030,7034,7035,7036,7037,147,7075,7729,7734,7028,7721,7725,177,7753,7004,7137,7176,7178,7134,7058,7060,104,107,109,148,139,136] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.769,0.361,0.902]
select surf_pocket19, protein and id [15746,15749,15781,17504,17517,17518,15830,16114,15796,15798,16087,16085,16086,16136,15752,15755,15756,16169,15759,15829,15754,15777] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.624,0.278,0.702]
select surf_pocket20, protein and id [2395,2618,2619,2620,2577,2576,2394,2308,2390,2307,2544,2545,2306,2571,2303,2304,2305,2281,2277,2573,2607,2608,2282,2285,2284] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.839,0.361,0.902]
select surf_pocket21, protein and id [20451,20820,20687,20558,20548,20817,20354,20450,20356,20358,20360,20355,20357,20381,20314,20315,20316] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.678,0.278,0.702]
select surf_pocket22, protein and id [6482,6483,6484,4742,4746,4793,4794,4795,5101,6130,4828,4761,4763,5134,4711,4716,4717,4719,4720,4721,4724,6469,4714,5050,5051,5052,5079] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.894]
select surf_pocket23, protein and id [13339,13340,13341,13342,13343,13606,13579,13580,13642,13643,13653,13654,13655,13608,13611,13612,13430,13429,13312,13316,13317,13320] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.667]
select surf_pocket24, protein and id [3276,3277,3796,3762,3787,7946,3772,3780,3784,7920,7922,6289,6258,3314,3316,3284] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.824]
select surf_pocket25, protein and id [17469,17472,17223,17225,17228,15145,15146,15387,15395,15396,15426,15431,15432,15430,17483,15420,15418,17482,17487,16791,16788,16789,16802,15394,16803] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.612]
select surf_pocket26, protein and id [11204,11205,18172,18211,18213,11202,18788,11206,18783,18764,18756,18760,18769,11243,18062,11175,18169,11213,11173,11170,18061,18063,18064,18065] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.753]
select surf_pocket27, protein and id [18955,18957,14819,14822,18981,14311,14312,14831,17324,17293,14797,14815,14807,14351,14319,14349] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.561]
select surf_pocket28, protein and id [6721,6747,6722,7370,6590,8548,8576,8547,8553,7364,8556,8554,7369,7354,8551,6749,6588] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.682]
select surf_pocket29, protein and id [7484,6117,6139,6137,6133,6136,6141,6156,7490,6182,6183,7503,7489,6144,6184,7479,7483,7482] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.506]
select surf_pocket30, protein and id [18707,18713,18719,19502,17970,17971,19519,19520,19521,19545,18723,18724,18725,18002,18001,19615] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.616]
select surf_pocket31, protein and id [12241,12244,12013,12009,12010,12011,12012,12014,12015,12254,12256,11986,12253,12240,12277,12016,12255,11985,11984] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.451]
select surf_pocket32, protein and id [4391,4397,4385,4387,6447,4383,6434,6448,6437,6193,4361,6452,4352,4360,4359,5753,5764,5768,5754,5757,5738,5767] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.545]
select surf_pocket33, protein and id [16010,16036,16042,16043,16046,16014,16016,16038,16358,16286,16288,16073,16075,16040,16318,16317] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.396]
select surf_pocket34, protein and id [6764,6954,6955,6952,10635,10639,10640,10641,10649,10650,6801,6803,10796,6796,6797,6800,10813,6790,10800] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.475]
select surf_pocket35, protein and id [15808,15809,15810,15812,16184,16187,16179,16180,16182,16225,16159,16160,16546,16568,16569,16570,16572,15811,15813,16573,16574,16544,16604,16606] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.341]
select surf_pocket36, protein and id [231,404,435,436,209,372,377,514,460,240,463,263,229,206,233,208,234] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.408]
select surf_pocket37, protein and id [11329,11295,11299,11300,11306,11272,11274,11275,11438,11443,11580,11610,11611,11526,11529,11470,11501,11502] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.290]
select surf_pocket38, protein and id [1153,920,1178,1188,1190,1189,919,918,949,943,944,945,946,947,948,950] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.384,0.361]
select surf_pocket39, protein and id [11628,13036,13028,13026,13027,11887,11890,13025,11650,11651,11626,11647,12657,12658,12659] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.325,0.278]
select surf_pocket40, protein and id [18657,18654,18634,18370,18610,19568,19597,19598,19592,19593,19596,19572,19575] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.451,0.361]
select surf_pocket41, protein and id [17152,18518,18519,18523,17191,17174,17168,17171,17176,18525,17219,18524,17217,17218,17179,18538] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.380,0.278]
select surf_pocket42, protein and id [2798,2806,2808,2809,21992,21990,19847,19836,19843,19846,21994,19773,19873,19799,19848,19834] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.522,0.361]
select surf_pocket43, protein and id [7619,7622,8562,8563,7335,8533,8557,8558,8561,8537,8540,7575,7599] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.431,0.278]
select surf_pocket44, protein and id [3318,3320,3346,3347,3314,3316,7938,7939,7940,3321,3787,3284,3382,3383] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.592,0.361]
select surf_pocket45, protein and id [4975,5323,4979,4981,5005,5282,5283,5253,5251,5011,5001,5003,5007,5008,5038,5040] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.486,0.278]
select surf_pocket46, protein and id [2993,2994,2955,3264,2953,2951,2528,2957,2958,2563,2527,3287] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.663,0.361]
select surf_pocket47, protein and id [14182,14184,14365,14368,14183,14225,14226,14189,14188,14186,14660,14681,14187,14397,14682,14646,14658] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.541,0.278]
select surf_pocket48, protein and id [13562,13598,13990,13989,13992,13993,14028,14029,14299,14322,13563] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.729,0.361]
select surf_pocket49, protein and id [17110,17113,17553,17126,17100,17103,17106,17468,16784,16798,17547] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.596,0.278]
select surf_pocket50, protein and id [5749,6068,6091,6075,6518,6078,6512,6433,5763,6071] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.800,0.361]
select surf_pocket51, protein and id [3148,3330,3333,3646,3147,3149,3190,3154,3153,3191,3151,3623,3625,3611,3362,3647] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.647,0.278]
select surf_pocket52, protein and id [7793,349,7746,7148,7150,285,7743,7187,7173,7181,7182,7186,7174,7175,7177,7178,7172,7213] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.871,0.361]
select surf_pocket53, protein and id [18778,18779,18781,11351,18183,18185,18208,18216,18217,18221,18222,18248,18210,18212,18213,18207,18828] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.698,0.702,0.278]
select surf_pocket54, protein and id [14381,14852,14855,14853,14854,14406,14408,14719,14416,14415,14418,18974,14382,14823,18972] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.863,0.902,0.361]
select surf_pocket55, protein and id [44,7114,7158,45,309,306,7113,7157,7144,7145,7147] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.643,0.702,0.278]
select surf_pocket56, protein and id [2395,2421,2423,2649,2684,2578,2419,2417,2435,2456,2381,2410] 
set surface_color,  pcol56, surf_pocket56 
   
        
        deselect
        
        orient
        