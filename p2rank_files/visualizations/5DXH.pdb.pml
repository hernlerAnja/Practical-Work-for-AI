
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
        
        load "data/5DXH.pdb", protein
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
 
        load "data/5DXH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6321,6322,6323,6465,6471,6482,6565,4744,4732,4737,4739,4733,4742,4743,6320,6284,6286,6290,6262,6472,6485,6298,6295,6294,6296,4770,4772,2210,2211,4734,2209,1385,1383,1384,2206,6347,6348,6349,6449,6468,6356,6357,6358,6385,6386,6350,6441,2269,2270,2247,2238,1399,1400,1401,6488,5797,5801,5052,4761,4764,4765,5049,5100,5101,5053,5055,6264,2099,5054,5807,5808,5809,4735,5018,5019,5017] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [15367,15586,15588,15665,16277,16278,16281,16193,16194,16273,16275,16276,15731,15666,15365,15302,15366,15683,15670,15584,15303,16282,16283,16297,15282,15046,15047,15029,15044,15058,15089,15090,15755,15756,15059,15677,15681,15112,15283,15686,15712] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.490,0.902]
select surf_pocket3, protein and id [7106,7189,6603,6647,7107,6622,6477,7190,6258,6479,6556,7170,7188,7186,6561,7191,7194,6257,7196,7081,6579,6568,6574,6577,6572,6174,5980,6173,6193,5950,5981,5937,5938,5935,5949,6194,6557,6218,6003,6573] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.349,0.702]
select surf_pocket4, protein and id [13846,13848,13851,13852,15404,15430,15431,15432,15574,13845,11359,10532,13841,13842,14158,14159,14160,14209,14210,14161,14163,13843,13844,14126,14127,13879,13881,15403,15371,15373,15395,14162,14906,15597,14164,14915,14916,14917,15591,15594,15581,14918] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.408,0.902]
select surf_pocket5, protein and id [3606,3581,3594,8319,2651,2653,2669,8963,2662,3565,3578,8254,8283,8960,8961,8962,8284,8292,8293,3612,3613,3438,3436,3437,8225,9001,9002,8965,9037,8257,8258,8223,8964,3243,3433,3234,9038,2660,2665,3430,3428,3432,3566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.282,0.702]
select surf_pocket6, protein and id [605,968,973,5427,5424,44,5425,23,5426,21,754,755,990,992,15,18,19,29,36,5483,12,5113,5116,5117,5138,5136,5118,6508,6514,6512,5451,5452,6536,6537,6520,5482,6201,5142,5143,5146,5148,6517,6521,5090] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.396,0.361,0.902]
select surf_pocket7, protein and id [15617,15621,15623,15626,15645,15646,14226,14222,14231,14251,14257,14247,9160,9753,10140,14227,10116,10138,9177,14252,14255,9166,15629,14245,14246,9187,14534,14535,14536,9167,9169,9171,14560,14561,15310,9182,9185,9186,14591,10119,10121,14533,9902] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.341,0.278,0.702]
select surf_pocket8, protein and id [7656,7711,7736,7734,6243,6246,6247,7215,7216,7723,7724,7725,7727,6274,7658,6281,6245,6280,7774,7782,7796,7028,7024,7810,7809,7020,7804,7660,7023,7021,7034,7780] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.482,0.361,0.902]
select surf_pocket9, protein and id [12653,12658,12650,12654,12659,12394,12390,12469,12387,10243,10228,13986,12430,10226,10227,12415,13975,13977,12418,12421,12428,12406,13954,13963,13970,14315,13933,12385,12662,12666,12495,12497,14281,13988,14311,14305] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.408,0.278,0.702]
select surf_pocket10, protein and id [6118,6120,6566,6562,6563,6564,6570,6588,6589,6565,6113,6111,6119,6122,5829,5830,5831,6124,6121,6123,6149,5809,6559,5786,5800,6164,6150,6153] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.565,0.361,0.902]
select surf_pocket11, protein and id [1362,5351,5353,5352,5011,1351,5010,1350,5311,2426,2420,2408,2412,2406,2407,2427,5321,5323,5779,5780,1358,1360,2087,2090,1348,5814,5812,5813] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.475,0.278,0.702]
select surf_pocket12, protein and id [7181,7180,7099,6978,7262,7263,7265,7307,7279] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.651,0.361,0.902]
select surf_pocket13, protein and id [17412,17379,17380,18118,18119,12689,12703,12542,12546,12547,12675,12714,18156,12545,12539,14275,12674,12687,17409,17410,17411,17413,14276,17447,17418,17414] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.541,0.278,0.702]
select surf_pocket14, protein and id [1596,1597,2031,2032,2033,2340,1994,1995,1996,1997,1998,1999,1820,1822,1823,1825,1817,1851,1852,1853,1826,1861,1964,1963,1818,1686,1687,2339] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.737,0.361,0.902]
select surf_pocket15, protein and id [16351,16350,16368,16353,16186,16140,16352,16139,16036,16060,16267,16268,16065,16395] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.604,0.278,0.702]
select surf_pocket16, protein and id [14432,14888,14460,10496,10498,10499,10508,14120,14119,10510,10509,11568,10506,11238,14923,14922,11582,14420,11574,11575,14889,14461,11556,11560,14462,11554,11555] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.820,0.361,0.902]
select surf_pocket17, protein and id [15495,15457,15459,15549,15551,15465,15467,10547,10548,10549,11386,11417,10619,11385,11418,11395,11382,11391,11392,11415,11358,11357,15453,15456,15458,15461,15505,15460,15494,15466] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.671,0.278,0.702]
select surf_pocket18, protein and id [3545,3550,3553,3271,3285,3275,4878,4854,1095,4866,3540,4879,3306,3309,3276,3278,3319,3313,4868,1080,5196,3556,1092,1078,1079] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.894]
select surf_pocket19, protein and id [74,83,8300,8301,37,38,101,31,73,75,77,72,80,81,82] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.663]
select surf_pocket20, protein and id [9220,9924,9218,17519,17520,17985,9229,9217,17456,17457,17461,18025,18027,17463,18054,17455,17464,17452,9222,9225,17450,9932,9933] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.812]
select surf_pocket21, protein and id [12635,12641,12642,12644,12624,12364,12560,12649,16780,16782,13945,13947,13932,13933,13934,12645,12648,16774,14282,14284,12544,12556,12559,14283] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.596]
select surf_pocket22, protein and id [11488,11487,10999,10966,10972,10964,10967,10968,11178,11179,11180,11181,10744,10745,10834,10835,11001,11000] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.725]
select surf_pocket23, protein and id [8303,8298,74,8307,8873,8365,8366,8871,8301,8309,8310,77,69,70,72,81,784] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.533]
select surf_pocket24, protein and id [12529,12530,12541,12542,12546,12547,12714,12343,18156,12721,12722,11813,12545,11822,17380,18118,18119,11829,12703,12352] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.643]
select surf_pocket25, protein and id [4570,4568,4571,4855,4858,4892,4847,4850,4902,4889,4896,4901,3108,3109,3110,3111,4572,4581,4869,3316,3338,4883,4867] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.467]
select surf_pocket26, protein and id [5124,7701,6237,6239,7702,5133,5159,6238,6221,6525,5149,5150,5151,6518,6523,6516] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.557]
select surf_pocket27, protein and id [9179,9184,17452,17454,9221,9222,9223,9224,17450,17455,17456,17461,18027,9229,9209,9228,9220,9190,9194] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.400]
select surf_pocket28, protein and id [10076,10163,10164,10196,10167,10153,10168,10077,10080,10081,9752,9780,9784,9771,10082,10084,10085,10086,10051,9734,9763] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.475]
select surf_pocket29, protein and id [15673,15674,14938,14940,15679,15231,15221,15222,15252,15259,15266,15230,15246,15257,15696,15694,15228,15229,15233,15227] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.333]
select surf_pocket30, protein and id [11244,11364,11366,14918,15231,11230,15221,15222,14939,14940,11245,11247,11360,11361,10533] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.388]
select surf_pocket31, protein and id [14909,15673,15674,15668,15671,15672,14938,14940,15679,15231,15675,14918,14915,14907,14895,15252,15259,15246,15257,15233,15262,15273] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.290,0.278]
select surf_pocket32, protein and id [14511,14512,14513,14514,9848,14484,14485,14510,14507,9884,9885,9850,9883,14487,14839,14840,14845,14846,14849,9860,9839,9859,9842,9844,14841,14844,9886] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.416,0.361]
select surf_pocket33, protein and id [615,623,632,636,962,1008,1002,1005,928,929,927,934,936,937,938,932,1012,1048,1015,1016,1019,1020] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.357,0.278]
select surf_pocket34, protein and id [15348,15330,15331,15346,15347,14260,14259,14266,14268,16790,16792,15632,15634,15613,15625] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.502,0.361]
select surf_pocket35, protein and id [13690,13679,13680,13681,12235,12447,12237,12238,13967,14001,13992,12425,13998,13976,13978] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.424,0.278]
select surf_pocket36, protein and id [4454,4468,4470,4467,7591,7593,7614,4720,4721,6354,6362,6394,6395,6397,6355,6364,6365,6332,6360,6396,1407,7592] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.584,0.361]
select surf_pocket37, protein and id [13639,12638,13638,13940,13941,13942,13943,13945,12257,12258,12259,12656,12643,13954,13965,12628,13665,11944,11946,11945] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.486,0.278]
select surf_pocket38, protein and id [4805,5124,6237,6266,6236,6503,6504,5097,4768,4766,5096,5098,5123,4770,4771,7682] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.671,0.361]
select surf_pocket39, protein and id [5398,5401,5402,5403,5404,5405,5737,5740,696,700,706,738,975,702,5730,5732,711,712,694,5735,5435,734,735,736,737,5400,973] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.553,0.278]
select surf_pocket40, protein and id [999,1000,1038,5193,5194,1024,3571,5166,14,1028,1063,5197,5187,5188,5189] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.753,0.361]
select surf_pocket41, protein and id [11494,15183,10746,11479,11484,15181,10750,10753,10749,11559,11525,11495,11496,11490] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.620,0.278]
select surf_pocket42, protein and id [2411,2412,2376,2058,2057,2331,2332,2348,6074,6072,1602,1605,2110,2346,2347,2089] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.839,0.361]
select surf_pocket43, protein and id [10450,11273,11274,11287,11288,11293,11272,11295,11510,10921,10923,10446,10448,10449,10919,10915,11263,10913,11188,11174,11190,11278] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.686,0.278]
select surf_pocket44, protein and id [15720,15721,15722,15723,15724,15763,15786,15787,15788,15866,15904,15905,15864,16218] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.878,0.902,0.361]
select surf_pocket45, protein and id [12548,12551,18184,18191,18155,18212,12554] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.647,0.702,0.278]
select surf_pocket46, protein and id [15141,14880,14881,14902] 
set surface_color,  pcol46, surf_pocket46 
   
        
        deselect
        
        orient
        