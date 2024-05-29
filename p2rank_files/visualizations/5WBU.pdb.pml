
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
        
        load "data/5WBU.pdb", protein
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
 
        load "data/5WBU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9928,9932,10311,10319,9614,9941,9943,10320,10321,10322,9592,9601,9919,9927,9249,9606,9611,9250,10328,9942,10348,9593,9594,9595,9947,9961,9965,10294,10303,10304,9242,10678,10685,10687,8907,8913,8916,8917,8920,6866,6868,9243,6867,10307,8933,10700,10704,10707,10703,11017,11016,11008,11013,6890,6891,6893,11003,11005,9253,8929,8930,8931,9267,8932,11029,9616,9620,9623,9258,9261,9264,9265,9678,9619,9640,9639,9635,9657,8953,6882,9920,6881] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.424,0.702]
select surf_pocket2, protein and id [12950,13257,13243,13244,13250,13256,13286,13287,13288,13289,12122,12124,12127,12123,12125,12980,12981,12596,12405,12607,12577,12382,12608,12354,12355,12571,12595,12593,12594,13245,13248,11866,11887,11890,12130,13233,13313,12403,12895,12897,12898,12875,12925,12923,12929,12930,11868,12953,12931,12568,12956,12957,12906,12907,12569] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.510,0.902]
select surf_pocket3, protein and id [581,584,585,821,824,814,816,817,818,819,1301,1046,1048,1076,1302,1268,1271,1265,560,531,792,1993,1990,1988,1989,1995,2001,2002,1644,1097,1099,1288,1289,1290,1674,1675,2032,2033,2034,1287,1978,2058,1592,1591,1623,1624,1647,1649,1650,1262,1625,1651,1600,562,1601,1593] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.373,0.702]
select surf_pocket4, protein and id [20175,20184,20185,20186,20187,20188,21577,22284,20516,20520,20522,20208,21962,20168,20171,20505,20508,20861,20513,21182,21183,21558,21559,21933,21566,21945,21948,21562,21575,21576,21574,21174,20162,20497,20504,20847,20856,21955,21958,21583,21959,21963,21603,21549,20172,22271,22258,22263,22267,22268,22272,21196,21205,21197,21198,21202,20890,20894,20912,20537,21216,21220,20933,20866,20869,20871,20875,20874,20519,20878,21187] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.443,0.902]
select surf_pocket5, protein and id [18623,18649,18737,17353,17355,17372,17764,17371,17394,17828,17175,17176,17190,17225,17208,17393,17395,17189,18648,17787,17790,18719,17771,17784,17769,17815,17779,17781,17782,17811,17777,17780,17822,18734,18736,18632,18738,18742,17682,17439,18743,18745] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.322,0.702]
select surf_pocket6, protein and id [7483,7487,7488,7490,6117,6139,6116,6138,6140,7368,7377,5920,5921,5934,5935,5970,5971,5953,6532,6516,6522,6524,6525,6526,6527,6098,6100,6556,6560,6567,6573,7393,7479,7481,7394,7482,6529,6535,6514,6427,6509] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.376,0.902]
select surf_pocket7, protein and id [20848,20849,21174,20498,20162,20163,20497,20504,20847,21182,21558,21559,21933,21945,21562,18122,18121,18123,20850,20168,20171,18136,18137,21175,21942,20970,21549,18146,18148,22260,22258,22263,22267,21940,18145] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.290,0.278,0.702]
select surf_pocket8, protein and id [13273,13275,13438,13336,13337,13437,13276,13311,12142,13279,12158,12160,12410,13312,13547,13578,13466,13467,12396,13371,13372,13566,13573,13574,13602,13567,13601] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.408,0.361,0.902]
select surf_pocket9, protein and id [18019,18022,18207,18209,18210,18051,18052,18055,18056,18057,21895,21896,22069,22051,22068,2711,2710,2737,18042,18043,18045,18046,22240,22067,21885,21890,21894,18235,18236,18237,17983,18023,18234,18021,18170,18172,18058,2738,2674] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.341,0.278,0.702]
select surf_pocket10, protein and id [2311,2313,2318,2312,1104,2319,2346,2347,2116,2117,852,854,2020,2183,2056,2057,2081,2082,2292,836,2024,2021,2211,2212,1090,2182,2018] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.475,0.361,0.902]
select surf_pocket11, protein and id [8664,8779,8780,8784,10846,8781,10845,10757,10758,10732,10719,10720,10754,10756,10752,10753,11036,8648,11050,11051,11052] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.392,0.278,0.702]
select surf_pocket12, protein and id [19919,20034,22291,22306,19903,22012,22011,22013,22100,22101,22007,22008,22009,21974,22307,21987,22305,21975,20035,20036,20039] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.541,0.361,0.902]
select surf_pocket13, protein and id [8185,8021,8022,8023,8024,8155,8018,8019,7986,7988,7989,7990,8020,3844,3843,3839,3884,3444,3433,3434,3443,3374,3402,3403,3885,3894,3470,8187] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.447,0.278,0.702]
select surf_pocket14, protein and id [7028,7030,7034,7004,7035,7036,109,7060,147,148,7721,7734,7725,7748,7753,177,7134,7027,7026,7058,7176,7729,7137,107,110,7062,136,139] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.604,0.361,0.902]
select surf_pocket15, protein and id [4395,4394,4445,4418,4434,6163,6165,6192,6476,4421,4416,6470,6475,8047,8048,4480,4478,4479,4106,6202,4108,4135,4459] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.498,0.278,0.702]
select surf_pocket16, protein and id [7612,7613,9219,9220,9221,9023,7581,7588,7596,6857,9370,9371,6869,7593,7595,7603,6839,6901,6902,9025,6851,9222,8521,8525,6870,6873] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.671,0.361,0.902]
select surf_pocket17, protein and id [17420,19302,15390,15735,15734,19303,15673,15676,15671,15689,17418,17725,17731,15700,15649,15650,17447,17457,15361,15363] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.549,0.278,0.702]
select surf_pocket18, protein and id [20474,20475,20476,20477,20625,20626,18836,18868,19780,18124,18125,18128,18848,18106,18850,20280,18094,18112,20278,18851,18157,18858,19776,18156,18843] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.737,0.361,0.902]
select surf_pocket19, protein and id [9513,9319,9321,9323,9325,9279,9320,9322,9281,9652,9785,9523,9415,9416,9783,9787,9788,9782,9781] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.600,0.278,0.702]
select surf_pocket20, protein and id [17008,17009,17703,17010,17011,15616,17023,15607,17443,17692,17697,17445,17448,17702,15640,15638,15650,15651,15652,15365,15366,15358,17022] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.804,0.361,0.902]
select surf_pocket21, protein and id [3314,3316,3286,7946,7920,7922,3277,3315,3796,3276,3765,3766,3759,3284,3761,3762,3763,3787,3784,3780] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.651,0.278,0.702]
select surf_pocket22, protein and id [18743,18744,18745,18758,17388,17391,17399,17396,17411,17431,18734,18738,18739,18742,17437,17438,17439,18737,17372,17394,17392] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.871,0.361,0.902]
select surf_pocket23, protein and id [13561,13563,13798,13800,13796,13799,13558,13826,13559,13560,13537,13875,13828,13862,13863,13831,13832,13833,13649,13650] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.698]
select surf_pocket24, protein and id [16050,16016,16018,16305,16306,15966,15971,15972,15975,15976,15940,15967,15969,15970,16389,15979,16355,16356,16304,16332,16334,16001,17736,17737,17738,15997,15998,16049,15692,17723,15690,15691,17724] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.867]
select surf_pocket25, protein and id [19440,14698,14699,15140,14688,14689,19410,14725,19442,14657,14658,15099,14629,15139,19273,19274,19275,19276,19277,19278,19279,19243,19244] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.647]
select surf_pocket26, protein and id [6188,6190,4110,4111,6193,4352,4361,4103,4396,4397,5753,5754,5755,4383,4385,6447,5756,6448,6437,6442,4395,5767,5768] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.800]
select surf_pocket27, protein and id [7483,7484,7487,7488,7489,7490,6117,6139,6156,6133,6136,6137,6141,6183,7503,6182,6184,6144,7479,7482] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.596]
select surf_pocket28, protein and id [20576,20768,20578,20580,20671,20670,21040,20907,20574,20575,20534,20536,20577,21036,21037,21038,21042,20778] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.733]
select surf_pocket29, protein and id [2618,2620,2576,2577,2578,2573,2545,2306,2308,2544,2394,2395,2282,2607,2608,2303,2571] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.545]
select surf_pocket30, protein and id [5050,5077,4761,4763,5051,5100,5101,5049,6483,4794,4795,4711,4714,4716,4717,4720,4721,4724,4742,4746,6481,6482] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.667]
select surf_pocket31, protein and id [14569,14531,14532,14539,14541,15051,19175,19177,15016,15017,15018,15020,15014,15042,14571,15035,15039,19201,15021] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.494]
select surf_pocket32, protein and id [18430,18976,18984,18989,18980,19003,11480,11483,19008,18283,18282,18289,18290,18291,11453,18305,18389,18392,11413,11415,18431,11442,11445,18259] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.600]
select surf_pocket33, protein and id [15042,14571,14600,14601,14602,19194,14573,14575,14439,14637,14569,14539,14540,14541,14576,14438] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.443]
select surf_pocket34, protein and id [19811,19809,19803,18002,18004,2431,17841,18619,18620,19831,18624,18625,17845,17842,17843,17977,17976] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.537]
select surf_pocket35, protein and id [16577,16263,16266,16293,16295,16509,16506,16545,16544,16260,16537,16538,16258,16230,16231,16232,16234] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.392]
select surf_pocket36, protein and id [12495,12496,12252,12254,12255,12256,12257,12517,12253,12249,12250,12251,12480,12481,12494,12484,12218,12222,12224,12226] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.471]
select surf_pocket37, protein and id [6915,6801,6803,6764,6787,6796,6797,6800,6790,6917,10641,10796,6952,6954,6955,10635,10640,6951,6788,10813,10814] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.341]
select surf_pocket38, protein and id [3314,3316,3286,3318,3321,3284,3320,3345,3346,3382,3383,7938,7939,3347,3787,7937] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.404]
select surf_pocket39, protein and id [13245,13248,11866,11887,11890,12130,11891,13256,12127,12897,12898,12899,11868] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.290]
select surf_pocket40, protein and id [14573,14575,14437,14439,14610,14637,14300,14600,14601,14267,14269,14576,14263,14266,14438] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.380,0.361]
select surf_pocket41, protein and id [646,16785,775,906,904,905,925,928,773,908,673,752,903,647,680,681,682,937,938,936,671,674] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.322,0.278]
select surf_pocket42, protein and id [4975,5007,5008,5011,5038,5040,5251,5254,5003,5005,4976,4977,4979,5283,5289,5322,5290] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.447,0.361]
select surf_pocket43, protein and id [11710,11741,11819,11820,11742,11766,11755,11757,11762,11683,11535,11512,11514,11515,11516,11546,11569,11849] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.373,0.278]
select surf_pocket44, protein and id [3008,3184,3011,3012,3014,3183,3318,3321,3045,3355,3182,3320,3345,3346,3382,3383,3347] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.514,0.361]
select surf_pocket45, protein and id [7678,7684,7688,7689,7690,6966,7672,8467,8470,8486,8510,6935,8484,8485,6967,8580,6936] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.424,0.278]
select surf_pocket46, protein and id [6721,6722,6587,6588,6590,8576,8556,7365,7370,7364,7369,8554,6586] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.580,0.361]
select surf_pocket47, protein and id [18221,18222,19739,19740,19741,18939,19835,18943,18944,18945,18190,18191,19722,19765] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.478,0.278]
select surf_pocket48, protein and id [2441,18098,2440,18067,18001,18003,18004,19804,19805,19806,19807,18039,18028,18083,18038,19796,18097,18086] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.647,0.361]
select surf_pocket49, protein and id [404,210,206,209,229,208,240,263,436,451,456,460,513,514,377,435] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.529,0.278]
select surf_pocket50, protein and id [920,1178,916,1174,1188,1189,1190,912,946,948,949,950,1211,943,944,945,947,1175] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.710,0.361]
select surf_pocket51, protein and id [1090,1095,2054,2083,2084,1093,2055,2056,2081,2082,2086,1104,1113,1114,1137] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.580,0.278]
select surf_pocket52, protein and id [19816,19817,19818,19788,19795,18877,19786,18590,18830,18854,18855,19792,18874] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.776,0.361]
select surf_pocket53, protein and id [12401,13309,12443,12399,12396,13335,13338,13339,13310,13336,13337,13311,12410,12420] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.631,0.278]
select surf_pocket54, protein and id [8533,7335,8537,8540,8557,8558,8561,8562,8563,8531,7619,7622,7599,7575,7600] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.843,0.361]
select surf_pocket55, protein and id [5763,6071,6065,6068,6429,5749,5756,6433,6091,6092,6512,6513,6078,6075,6518] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.682,0.278]
select surf_pocket56, protein and id [14589,14586,14588,14923,14445,14463,14471,14499,14560,14959] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.890,0.902,0.361]
select surf_pocket57, protein and id [14402,14408,14409,14901,14585,14588,14617,14902,14404,14406,14880,14445,14446] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.667,0.702,0.278]
select surf_pocket58, protein and id [3208,3216,3244,3305,3704,3333,3334,3668,3331,3190] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.824,0.902,0.361]
select surf_pocket59, protein and id [16792,16030,16794,16793,16445,16399,16400,16404,16407,16014,16379,16402] 
set surface_color,  pcol59, surf_pocket59 
   
        
        deselect
        
        orient
        