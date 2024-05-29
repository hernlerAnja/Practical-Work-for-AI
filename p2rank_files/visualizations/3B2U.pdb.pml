
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
        
        load "data/3B2U.pdb", protein
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
 
        load "data/3B2U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11642,11644,11672,13636,13437,11647,11663,9644,9645,9646,11667,13624,9636,9643,11674,13650,13651,9497,11633,13451,11652,13248,13249,13237,13238,13623,13619,13628,13618,13621,13622,9487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [772,774,1066,1068,1308,788,86,87,787,802,73,71,72,10734,10735,10798,10799,10784,1071,1057,1060,1064,1514,10749,1058,1513,1050,805,10782,10785,1065,1072,1075,10748,10347,10776] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.533,0.902]
select surf_pocket3, protein and id [27848,27849,27850,29949,29950,28580,28571,28574,28576,29937,29812,29813,29814,29815,29816,29798,29800,29802,29803,28591,29809,19672,19681,28595,19684,29797,28593,19675,19959,19961,27864,27860,29799,29796] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.400,0.702]
select surf_pocket4, protein and id [19594,19595,19367,19587,18624,19324,19342,20042,18608,18609,18610,19323,19603,19325,19608,19612,28934,19601,19597,18607,29389,29375,29390,29343,29338,29339,29340,29344,29372,29373,29352,29354] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.490,0.902]
select surf_pocket5, protein and id [24282,33533,33540,33544,32562,33526,33527,33986,33987,33519,33529,33535,32548,33257,32561,33536,32546,32547,24683,24684,24719,24717,24711,24733,24734,24669] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.365,0.702]
select surf_pocket6, protein and id [9291,9275,9274,9276,9290,11216,11222,11225,11226,11211,11213,1151,10000,10011,10013,10015,11209,11210,1140,1432,1139,1147,1148,11362,11363,11350,11229,9994,9996,9985,9997,11230] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.451,0.902]
select surf_pocket7, protein and id [4759,15397,15403,15405,15407,5476,5477,5457,5722,5458,5459,5729,5481,4744,5750,5751,15369,15370,15419,5736,5737,4743,4745,5456,5446,5730,5731,6177,5502,6178,15384] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.333,0.702]
select surf_pocket8, protein and id [15026,15003,15006,15007,15341,15027,15030,5423,5424,5426,4738,4715,4726,5430,15434,4711,5425,4712] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.408,0.902]
select surf_pocket9, protein and id [1127,1128,1466,1480,1558,1559,9333,1124,1147,1126,9302,9303,9307,9309,9310,9311,9320,9321,10018,10019,1150,9306,10013,9304,9305,10016,10014,10015,1477,1448,1592,1574,1573,1556,9436,9437] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.302,0.702]
select surf_pocket10, protein and id [14956,14957,14958,13963,13964,14673,14945,14949,6158,6159,6208,6209,6198,6193,6194,13978,13977,14689,14690,6163,6186,14935,14942,14943] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.361,0.365,0.902]
select surf_pocket11, protein and id [2380,675,728,2004,1856,1858,2379,2426,2420,2422,2425,689,4437,4443] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.294,0.278,0.702]
select surf_pocket12, protein and id [33196,34915,34333,34335,34481,34483,36879,36880,33143,33158,34897,34856,36874,34857] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.396,0.361,0.902]
select surf_pocket13, protein and id [20537,20539,20391,20389,19226,20949,20908,20917,20922,19264,20513,22965,22959] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.325,0.278,0.702]
select surf_pocket14, protein and id [33601,23945,23259,23946,23947,23951,33634,33600,33952,33953,33597,33939,33598,33599,33623,23232,23233,23236,23247,34031,34032,33620,33617,25130,25132,25133,25140] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.439,0.361,0.902]
select surf_pocket15, protein and id [24321,24320,24658,24662,24666,24319,24747,32541,32537,24748,32518,32540,33227,32529,24340,24655,24653,24341,33220,33221,33223,24338,24343,33222,32515,32514] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.357,0.278,0.702]
select surf_pocket16, protein and id [7595,7596,7597,7598,7599,7600,7601,7607,7611,6009,6010,7612,5874,5877,7539,6008,5873,7350,7348,7349,7555,7553,6024,7342,7262,5638,5605,5607,6025,5649,5637] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.482,0.361,0.902]
select surf_pocket17, protein and id [13899,15849,13898,13900,14620,15971,15846,15847,15848,15850,15843,15851,15983,15984,14609,13915,13914,5820,5823,14634,14635,5812,5811,14618,14624,13916,15832,15837,15836] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.392,0.278,0.702]
select surf_pocket18, protein and id [1495,10331,10332,1499,1507,1522,1509,10768,10333,10321,10311,10312,9339,1544,1534,1535,1545,9340,1528,1530,10066,9354,10048,10304,10305,10049] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.525,0.361,0.902]
select surf_pocket19, protein and id [33972,33995,34018,24267,33968,34003,23265,23266,23279,23280,23975,23977,24240,24239,24246,24247,24249,23991,24268,24253,23976] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.424,0.278,0.702]
select surf_pocket20, protein and id [31664,31671,31673,31672,31924,31926,31913,31914,31688,31690,32420,32449,31943,32448,32413,32414] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.565,0.361,0.902]
select surf_pocket21, protein and id [20503,20500,20501,20502,28996,19261,20491,20497,20505,19273,19276,20637,20638,20625,20504,18545,18544,18546,18562,28984,19270,19272,20486,20490] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.459,0.278,0.702]
select surf_pocket22, protein and id [25607,25564,25605,25045,25047,25573,23920,23868,25613,25620,25621,25622,25623,25172,25195,25193,23919,23921,27613] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.608,0.361,0.902]
select surf_pocket23, protein and id [19661,19683,28594,28595,28593,27884,27907,28599,19694,19691,19677,19678,19680,19696,19642,20006,20008,20009,20087,20088,19995,19977,27880,19637,19638] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.490,0.278,0.702]
select surf_pocket24, protein and id [9,2104,19,23,24,10409,739,7,8,730,733,735,724,1967,1969,1971,2092,2105,1968,1958,1972,736,10398,10397] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.651,0.361,0.902]
select surf_pocket25, protein and id [13651,13658,11676,11633,11642,11262,11264,13657,11114,11116,13451,9936,9988] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.522,0.278,0.702]
select surf_pocket26, protein and id [28628,28891,28898,28899,28905,28906,28901,29153,28919,28920,28615,20024,20073,20074,20059,27927,27928,27912,27913,27914] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.694,0.361,0.902]
select surf_pocket27, protein and id [25147,25153,25156,25158,25159,25160,25294,25280,23201,23926,23928,23216,33624,23932,23929,23200,23202,25281,25293,33612] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.557,0.278,0.702]
select surf_pocket28, protein and id [30281,29703,29849,30225,30224,28568,32240,30265,28516,28530,29726] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.737,0.361,0.902]
select surf_pocket29, protein and id [1952,1953,1958,749,750,736,1954,1967,1930,10409,739,1946,1947,1951,752,754,10405,10404,10406,10410,10397] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.588,0.278,0.702]
select surf_pocket30, protein and id [15018,15027,15029,5411,5422,4695,6625,6631,6634,5396,5402,5407,5405,6636,6638,6635,6771,6758,6772,4680,4679,4681] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.776,0.361,0.902]
select surf_pocket31, protein and id [28992,28993,28996,19289,19291,19287,20491,19273,19276,28984,19270,19272,20484,20485,20486,20479,20481,20490] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.620,0.278,0.702]
select surf_pocket32, protein and id [32482,32483,32484,32499,33202,33204,24332,24333,24344,32498,24341,34441,34444,34445,34435,33208,34569,33193,33199,24619,24621,34446,34448,34581,34582] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.820,0.361,0.902]
select surf_pocket33, protein and id [8175,8199,8201,7979,7989,7990,7991,8219,7954,7958,7961,7996,8178,8202,8176,8200,8137,8139,8138,7956,8217,8136,7950,7955,7939,7945,7949,7948] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.655,0.278,0.702]
select surf_pocket34, protein and id [6130,6223,13930,13944,13945,5798,5800,13934,5822,5816,5796,6112,6222,6238] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.863,0.361,0.902]
select surf_pocket35, protein and id [18576,18590,18591,29402,29403,29404,18574,18573,18586,28969,29311,28995,18580,28971,28972,28973,28970,29418,29419,18706,18709,18710,29401,29293] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.686,0.278,0.702]
select surf_pocket36, protein and id [15883,15885,18300,18301,15735,18295,16258,14612,16299] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.894]
select surf_pocket37, protein and id [31344,31185,31205,31156,31151,31160,31342,31418,31155,31417,31184,31195,31196,31197,31198,31202,31145,31384,31399,31400,31401,31402,31419,31162,31382,31383,31345,31161] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.678]
select surf_pocket38, protein and id [3861,4106,4118,4134,4135,4645,4646,3876,3900,4616,4617,4623,3860,3859,3871,3852] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.855]
select surf_pocket39, protein and id [2825,2994,3003,3073,3075,30998,31000,30992,3011,3010,3029,2820,2817,2822,2803,3054,3055,3057,30417,30987,30989,30974,30980,30983,30986,3053] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.647]
select surf_pocket40, protein and id [25147,25141,25144,23926,23928,33624,23932,23929,33620,33612,33621,23945,23942,23943,23947,25140,25143,25142] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.812]
select surf_pocket41, protein and id [17215,17218,17228,17229,17230,17461,17460,17462,17379,17238,17188,17189,17178,17184,17382,17381,17193,17444,17445,17443,17442,17418,17419,17421,17196] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.616]
select surf_pocket42, protein and id [752,753,754,758,43,39,40,10405,10406,10408,65,66,10386,10384,10385] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.769]
select surf_pocket43, protein and id [21887,21890,21900,21901,22129,22130,21902,22046,22047,22048,21910,21865,21869,21872,21874,22050,21861,21856,21860,21907,22086,22089,22111,22112,22113,21866,21867,21850] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.580]
select surf_pocket44, protein and id [5820,5823,14637,14634,14635,5819,14624,15832,15837,15823,15830,15831,15836,15825,15822,14639] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.725]
select surf_pocket45, protein and id [23141,23147,23159,23166,23167,22377,22386,22403,22404,23142,22385,22631] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.549]
select surf_pocket46, protein and id [13690,13518,13519,9961,13640,13643,13670,13663,9468,9471,9476,9480,9496,9494,9466,9470,13687,9967,9959,9960] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.682]
select surf_pocket47, protein and id [27470,23892,23893,27637,23899,27614,27615,27616,27617,27625,23392,23396,23397,23406,23422,27469,27595,27596,27598,27618,23210,23891,27641] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.514]
select surf_pocket48, protein and id [29325,18603,28972,28973,18580,19295,19294,28949,28992,28993,19289,19291,19290,29006,28995,18602] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.643]
select surf_pocket49, protein and id [2039,2040,1826,1827,3791,3792,3525,3511,3510,3524,1825,1836,1837,3996,4006,3995,4005,3492,3494,3775] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.482]
select surf_pocket50, protein and id [6618,6619,15027,15029,5424,5426,5411,5422,6610,6611,6613,6614,6625,15026,15025] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.600]
select surf_pocket51, protein and id [12583,12603,12606,12565,12586,12557,12561,12562,12563,12787,12789,12813,12546,12521,12556,12534,12536,12749,12747,12750,12829,12830,12597,12811,12812,12810,12585,12596,12598] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.451]
select surf_pocket52, protein and id [4899,5370,4886,4901,8898,8899,8900,9025,4871,4875,4876,4877,8897,5378,9055,9067,9071,9048,5372,9044] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.557]
select surf_pocket53, protein and id [24341,33220,33221,33223,34435,33208,33218,33219,24332,24344,33202,33204,24340,34428,34429,34430,34431,34432,34434] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.416]
select surf_pocket54, protein and id [9215,9221,8716,9216,9240,8474,8466,8491,8485,8728,9241,8515,8516,8517,8518] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.514]
select surf_pocket55, protein and id [35793,35791,35792,36035,36036,36037,35776,35787,36052,36054,36034,36012,36053,35827,35795,35813,35816,35826,35977,35979,35782,35786] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.278,0.384]
select surf_pocket56, protein and id [36295,37051,37052,37057,36319,36303,36555,36569,36543,37080,36572,37073,37081,36314,36343,36346] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.475]
select surf_pocket57, protein and id [29780,29781,30158,30159,30160,30362,30367,30375,30361,30348,30731,30744,30746,30747,30588,30790,30791,30349,30363] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.278,0.353]
select surf_pocket58, protein and id [15085,16828,15081,16768,16769,16842,15202,15204,15080,15099,16785,14862,15215,15216,15217,15231,16572,16571,16570] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.361,0.431]
select surf_pocket59, protein and id [28539,28540,28541,32222,28068,28050,28055,28070,28547,32252,28039,28040,32225,32101,32102,32103,32104,32272,28042,32269] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.278,0.318]
select surf_pocket60, protein and id [29671,31610,31593,31609,31803,31804,31813,31814,29672,29673,29675,29680,29681,29666,29670,29682] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.361,0.388]
select surf_pocket61, protein and id [2840,2841,2996,2859,1028,1029,2860,1282,1284,2847,1259,1260,1261] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.278,0.286]
select surf_pocket62, protein and id [10275,10281,10282,10283,12100,12101,10537,12082,12084,12237,12081,12088,10517,10518,10519,10536] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.373,0.361]
select surf_pocket63, protein and id [26512,26495,26734,26758,26731,26773,26756,26757,26774,26695,26518,26514,26506,26535,26694,26532,26510,26501] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.306,0.278]
select surf_pocket64, protein and id [13864,13865,13353,13354,13086,13101,13103,13836,13842] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.416,0.361]
select surf_pocket65, protein and id [27786,27280,27034,27785,27053,27051,27814,27815,27792,27306,27307,27026] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.341,0.278]
select surf_pocket66, protein and id [26949,26663,26665,26680,26681,26509,27169,27179,27180,26966,25229,25025,25015,25010,25228,25014,25024,25026] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.459,0.361]
select surf_pocket67, protein and id [31635,31627,31454,31481,31453,31658,31686,31490,31689] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.373,0.278]
select surf_pocket68, protein and id [35312,35313,35468,35319,33734,33755,33756,33757,33498,35331,35332,33497] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.502,0.361]
select surf_pocket69, protein and id [36865,32702,32704,36862,32689,36736,32674,32678,32679,32680,33169,33175,36892,33167,33168,36734,36735,36737,36909] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.408,0.278]
select surf_pocket70, protein and id [35295,35545,35547,7791,35527,35528,7780,35501,35526,35275,7790,35289,35297,35309,35466,35475,35482,35483] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.541,0.361]
select surf_pocket71, protein and id [30689,28869,30701,30702,29105,29106,28870,29128,30681,30682,30683,30838] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.439,0.278]
select surf_pocket72, protein and id [25125,25124,26090,25498,25499,25500,25707,25929,25931,25688,25689,25702,25703,26134,26133] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.584,0.361]
select surf_pocket73, protein and id [43,39,10408,10386,10812,10813,10384,10720] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.471,0.278]
select surf_pocket74, protein and id [14664,14444,14529,14661,14043,13985,14028] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.627,0.361]
select surf_pocket75, protein and id [5798,5799,5800,13957,13934,14638,14639,14643,5819,5820,5822,14637] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.506,0.278]
select surf_pocket76, protein and id [18283,14089,14098,14114,18332,14084,14088,14094,18313,14591,18324,18158,18161,18286,14585,14584,14583,14112] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.671,0.361]
select surf_pocket77, protein and id [199,4296,4473,4474,4475,4295,201,209,214,700,4425,227,229,203,4447,4455,4448,4472,706,4444] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.537,0.278]
select surf_pocket78, protein and id [6671,5399,9043,7083,7043,7042] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.714,0.361]
select surf_pocket79, protein and id [7595,7596,7598,7599,7600,7601,7607,7611,6009,6010,7612,7524,5873,7539,6008,5892,5997] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.569,0.278]
select surf_pocket80, protein and id [14906,16731,16732,16713,16719,14914,16868,15139,15140,15157,15158,15159,16712,16711] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.753,0.361]
select surf_pocket81, protein and id [29047,30739,29185,29186,29187,29201,30756,29050,28818,30798,30525,30801,30811,30799,30800,30795] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.702,0.604,0.278]
select surf_pocket82, protein and id [33536,32547,32548,24280,24281,24282,33533,33535,33537,24297,24669,24683] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.902,0.796,0.361]
select surf_pocket83, protein and id [21809,21816,22521,22019,22020,22284,22514,21804,21801,21807,22002,22282] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.702,0.635,0.278]
select surf_pocket84, protein and id [34261,34274,34275,34276,34280,34350,34103,34104,34321,34323,34325,34272] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.902,0.839,0.361]
select surf_pocket85, protein and id [29046,30739,29185,29186,29065,29174,30525,30801,30807,30811,30714,30798,30799,30800,30795,30796,30724,30738] 
set surface_color,  pcol85, surf_pocket85 
set_color pcol86 = [0.702,0.671,0.278]
select surf_pocket86, protein and id [2700,977,1356,1340,1342,1341,1202,1203,2914,2956,1205,2897] 
set surface_color,  pcol86, surf_pocket86 
set_color pcol87 = [0.902,0.882,0.361]
select surf_pocket87, protein and id [31955,31967,32461,31963,32398,32462,31968,32401,32156,32118,32123] 
set surface_color,  pcol87, surf_pocket87 
set_color pcol88 = [0.698,0.702,0.278]
select surf_pocket88, protein and id [19558,19566,19406,19408,21171,21520,21172,19389,19390] 
set surface_color,  pcol88, surf_pocket88 
set_color pcol89 = [0.878,0.902,0.361]
select surf_pocket89, protein and id [5674,5662,7611,5996,7624] 
set surface_color,  pcol89, surf_pocket89 
set_color pcol90 = [0.667,0.702,0.278]
select surf_pocket90, protein and id [11625,11106,11623,10885,10884,11047,11052,11053,11104,11132,11061,11042,11054,11055,11056,11057,11058] 
set surface_color,  pcol90, surf_pocket90 
set_color pcol91 = [0.835,0.902,0.361]
select surf_pocket91, protein and id [14537,14538,14539,14630,14631,15839,15840,14151,16349,14213,16350,14214,14628] 
set surface_color,  pcol91, surf_pocket91 
set_color pcol92 = [0.631,0.702,0.278]
select surf_pocket92, protein and id [5451,4752,4809,4823,5231] 
set surface_color,  pcol92, surf_pocket92 
   
        
        deselect
        
        orient
        