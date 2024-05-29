
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
        
        load "data/7V3P.pdb", protein
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
 
        load "data/7V3P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6775,6797,19539,19540,19501,19476,19008,6329,6331,6332,6824,6827,6823,6821,19554,19536,19504,19555,6861,6862,6799,6863,7762,8361,8362,8363,8608,8609,19039,19040,19041,18595,18596,18597,18598,18570,19002,19004,19005,18552,6803,6804,18571,6801,8392,8406,18551,6731,6732,6733,19478,19479,6281,6317,6280,6282,5347,5348,5874,5839,5840,5873,5787,5746,5750,5307,5728,5730,17610,17611,18076,18078,18047,18049,7559,7560,7561,7527,7525,7526,18074,18077,18591,18594,7867,7798,7800,7802,7801,8328,7743,8327,17575,17576,17577,18024,18025,18048,18050,7898,7899,7900,8393] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [4897,4900,4579,4583,4586,4551,4862,4552,4516,4472,25552,4473,4474,4549,4636,4637,4530,4532,21133,21134,22740,22742,22743,22824,21149,21150,4931,4932,4934,5345,5371,1375,22823,22822,22874,22873,22891,22893,22894,22943,22944,4596,4677,22825,5307,5305,5728,5730,5731,5746,5743,5747,5347,5348,5839,5840,5873,21180,21181] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [20453,18136,20434,20407,20408,20457,20458,20459,20376,17705,17707,17708,17709,17715,18089,17686,20454,20455,20464,20465,20467,20456,17673,17676,17672,18163,18164,18165,18172,18173,18134,18162,18166,18697,18733,18790,18786,18735,18768,18769,18120,18665,18097,18115,18729,17716,17719,17765,17768,17766,17767,18216] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.369,0.702]
select surf_pocket4, protein and id [14901,14968,22466,9502,9503,14148,14150,14151,14152,14153,14520,14549,14172,14173,9456,9452,9471,14990,14548,14518,14506,14519,14898,10948,10950,14900,10585,10586,10946,22463,22464,10952,10951,9453,10949,14921,14920,14969,14991,9520,9521,9523,9525,9524,9519,9522,14562,14564,15328,15329,15330,15315,14174] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.435,0.902]
select surf_pocket5, protein and id [6860,6857,6897,6915,6851,6856,6925,6928,6929,8544,8563,8585,6785,6787,6786,6428,6788,8442,8440,6894,6859,6863,6858,7762,8361,8362,8363,8608,8609,8380,8403,8406,8408,8586,8591,6417,6443,6444,6440,6491,6493,8518,8501,7561,7802] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.314,0.702]
select surf_pocket6, protein and id [2232,2233,2235,5001,5002,1814,1815,1816,2182,2195,1792,4953,5014,5009,5010,5056,5055,5057,1410,4582,1376,1393,1395,1392,1389,1391,1394,1820,1824,4608,4952,4974,4975,2262,22760,22762,4954,4956,4950,2220,2229,2231,2260,2245,4585] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.369,0.902]
select surf_pocket7, protein and id [22877,25534,25590,25591,25589,25601,25549,25552,20067,22804,22805,20065,20066,21147,21167,21168,21207,21209,21133,21134,22824,21148,21149,22874,22800] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.302,0.278,0.702]
select surf_pocket8, protein and id [19555,5893,5892,21116,22640,22641,22701,22702,22703,22704,22705,22681,5917,19552,22683,4933,4934,5370,5372,5373,4929,5399,5400,5401,21131,22744,22745,5396,4958,5348,5874,21182] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.424,0.361,0.902]
select surf_pocket9, protein and id [15426,15442,15446,15447,15555,15445,15533,15554,15511,15504,15532,15406,14282,14286,15742,15743,14281,15558,15920,15728,15741,15744,14689,15429,14687,14688,14309,14685] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.357,0.278,0.702]
select surf_pocket10, protein and id [22892,22894,22958,4624,428,430,431,26202,26203,26217,26229,1353,1355,469,470,887,888,22957,1331,1314,870,871,1310,1311,26231,26267] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.490,0.361,0.902]
select surf_pocket11, protein and id [25997,26017,26034,26035,26038,26039,558,26040,981,982,984,523,555,1020,25977,25979,520,522,22992,26160,26162,26157,519,559,148,150,26102,26103,26107,26108,26109,26122,26018,26094,26153,26146,26020,26022] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.408,0.278,0.702]
select surf_pocket12, protein and id [14671,14674,14675,14676,21732,21734,14651,14647,14764,14766,14809,21767,21768,14653,14622,14641,15141,15140,15157,15123,15135,15153,21627,21615,21614,21623,21730,15160,21598,21599,21600,21596,21613,14642,14688,21648,15112,15120,15125,15110,23918,14778] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.561,0.361,0.902]
select surf_pocket13, protein and id [3735,3733,3449,3450,3452,3453,3454,3455,3730,1257,1259,3376,3727,3364,3367,3373,3350,819,805,820,368,369,355,356,370] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.463,0.278,0.702]
select surf_pocket14, protein and id [5522,4842,5472,4881,5577,5289,5328,5288,5819,6023] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.631,0.361,0.902]
select surf_pocket15, protein and id [13364,12963,15902,15978,15981,15983,15869,15879,15893,15896,15982,16027,15984,13816,16255,16256,16259,16262,13379,16264,15905,12977,12627,12629] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.518,0.278,0.702]
select surf_pocket16, protein and id [19450,19452,19504,19410,19009,19011,19449,19446,19408,6712,6714,6715,6716,19417,18551,18959,18960,18995,18958,18465,19477,19480,19481,6702,6730,6731,18517,18518] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.698,0.361,0.902]
select surf_pocket17, protein and id [18740,20439,20441,18739,18662,18741,18760,20423,20424,21285,18643,18644,18648,18730,18720,19132,19131,18753,18758,18759,19190,18737,18738,18736,19584,19595,19095,19586,19575,19121,19127,19128] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.573,0.278,0.702]
select surf_pocket18, protein and id [19585,19586,21262,21268,19622,21057,21080,21083,21085,21119,21285,21286,21271,21038,21039,21040,21036,21054] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.769,0.361,0.902]
select surf_pocket19, protein and id [14659,14396,13999,14266] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.624,0.278,0.702]
select surf_pocket20, protein and id [14055,14056,14072,14074,10047,14073,8842,10048,13543,8841,8843,10020,10021,8830] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.839,0.361,0.902]
select surf_pocket21, protein and id [1640,2831,1071,1072,1098,1099,1100,1110,1111,1056,652,1672,1593,1057,1594,2786,2787,2813,1614,1615,2801,2814] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.678,0.278,0.702]
select surf_pocket22, protein and id [14174,15316,13657,14233,13669,13670,15330,15315,15345,13658,13659,13630,13631,14172,14173,13615] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.894]
select surf_pocket23, protein and id [22540,20203,20204,21039,21040,22604,20573,20574,20575,20576,22536,22600,22601,22602,22539,20544,20577,20171,20172,21069,21070,22603,22599,22665,20153] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.667]
select surf_pocket24, protein and id [13446,13447,13075,13076,13077,13037,13038,12705,13934,13890,13914,13936,13912,9998,10001,10038,10039,10040,13932,13111,10028] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.824]
select surf_pocket25, protein and id [9636,9637,22387,22431,22376,22377,22379,11636,22378,9638,11576,12323,11575,12310,12311,12312,12372,11844,9634,11595,11596,11597,9635,22412] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.612]
select surf_pocket26, protein and id [1440,2099,1707,2769,1626,2098] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.753]
select surf_pocket27, protein and id [23754,23751,23600,23764,23755,23756,23602,23601,23603,22008,23170,21967,21969,23626,23196,23680,23681,23745,23689,23691,23688,23692,23693,23635] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.561]
select surf_pocket28, protein and id [1724,1725,2902,2913,1726,2918,3040,2125,1722,2975,3004,2916,2982,3212,3213,3215] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.682]
select surf_pocket29, protein and id [16709,16706,12662,13853,13873,16579,13870,13429,13430,13013,16238,13022,12659,13008,13009,16236,16237] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.506]
select surf_pocket30, protein and id [7495,7897,7898,7899,7900,7494,17575,17576,17577,17539,17984,18023,18025,18048,17228,17227] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.616]
select surf_pocket31, protein and id [22612,22614,22599,22683,21069,21070,21080,21118,21083,21085,22682,21039,21040] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.451]
select surf_pocket32, protein and id [10085,10875,13541,13542,13543,13539,13540,10084,10884,10886,10097,10123,13130,13124,13126,13127,10083,13145,13579,13165,13166,14103,14102,14104] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.545]
select surf_pocket33, protein and id [14249,14250,14251,15411,13731,13766,13729,13734,13732,13733,14285,15409,15752,15753,13365,15882,15589,15592] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.396]
select surf_pocket34, protein and id [13971,13929,13951,13970,13930,13931,13933,9968,9969,13969,13950,14823,14825,14826,14791,9983,9970,14417,9940,9941,9944,9945,9933,9935,9934,9967] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.475]
select surf_pocket35, protein and id [9851,9854,9861,9865,9867,20299,20862,20958,20957,20834,20833,9848,9849,20292,20296,20257,20529,20530] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.341]
select surf_pocket36, protein and id [12789,13179,13180,13207,12787,12788,13598,13599,13091,13681,13682,12785,12841,13149,12784,12786,13239,13670] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.408]
select surf_pocket37, protein and id [6920,6919,6416,6417,6444,6450,6454,6455,6457,5967,5965,5984,6062,6063,6898,6907] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.290]
select surf_pocket38, protein and id [8814,8829,8826,8830,8800,8801,10861,10864,10056,10058,10050,8842,10862,10045,10048,10085,10875,10082,10084,10871,10081,10853,10044] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.384,0.361]
select surf_pocket39, protein and id [25832,25833,20076,20078,25942,25944,25946,25898,25877,25861,25862,25863,25864,20013,20014,20015,20016,20674,20675,19969] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.325,0.278]
select surf_pocket40, protein and id [17908,17520,18254,18253,18198,17855] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.451,0.361]
select surf_pocket41, protein and id [3707,3708,3709,56,1314,870,871,402,428,430] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.380,0.278]
select surf_pocket42, protein and id [18612,18613,19057,18614,19056,18598] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.522,0.361]
select surf_pocket43, protein and id [13842,13845,13847,16246,13814,16248,15915,13817,13818,13813,14354,14341,15963,13849] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.431,0.278]
select surf_pocket44, protein and id [15223,15224,15028,15000,9715,15031,15238,15234,15235,15033,15001,14611] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.592,0.361]
select surf_pocket45, protein and id [2125,2144,1722,1724,1725,3004,2982,3391,3026,3029,3212,3213,3215,1750,3199] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.486,0.278]
select surf_pocket46, protein and id [22024,22070,23550,21752,23352,23321] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.663,0.361]
select surf_pocket47, protein and id [6709,8457,6683,6699,6700,8456,8504,8505,6711,6752,6751,6753,6755,6756,6494,6492,6630,6551,8439] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.541,0.278]
select surf_pocket48, protein and id [16219,16236,16237,16220,16384,16433,16435,16283,16284,13011,13012,16238,13014,16709,16434,16579] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.729,0.361]
select surf_pocket49, protein and id [14394,14656,14658,14396,14440,14809,14844] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.596,0.278]
select surf_pocket50, protein and id [17923,18361,17505,17933,18358,18376,18373,17166,17169,17506,17499,17168,17493,17494,17473] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.800,0.361]
select surf_pocket51, protein and id [21392,20801,20984,20845,20952,20953,20844] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.647,0.278]
select surf_pocket52, protein and id [25519,25699,25719,25518,25563,25567,25640,25701,25704,25581] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.871,0.361]
select surf_pocket53, protein and id [23509,23148,23150,23152,22101,22106,22107,23113,23114,22068,23367,23396,23111,23408,23378,23390] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.698,0.702,0.278]
select surf_pocket54, protein and id [10699,10701,9367,10154,10155,10698,10700,10702,9331,9365,9366,9330,10269,10267,10268,10122,10153] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.863,0.902,0.361]
select surf_pocket55, protein and id [15087,15089,23931,15107,15120,15126,23918,23917,23915,23933,15090,15091,15200,23934] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.643,0.702,0.278]
select surf_pocket56, protein and id [966,22931,25980,964,1496,22863,25927,25928,1513,1512] 
set surface_color,  pcol56, surf_pocket56 
   
        
        deselect
        
        orient
        