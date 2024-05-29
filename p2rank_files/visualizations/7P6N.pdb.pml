
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
        
        load "data/7P6N.pdb", protein
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
 
        load "data/7P6N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [22816,23566,23567,23568,23569,23562,23563,22650,22651,23561,22922,23482,23481,23091,23096,22506,22751,22752,22769,22773,23582,22771,22527,22649,22526,23069,22468,22634,22472,24614,24616,22504,22667,22477,22479,22480,22488,22489,23454,22474,23118,23119,23120,23121,23114,24642,24619,22496,22490,22492,22497,22921,23068,23073,23583,23584,23591] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [6899,7060,7061,7864,7529,7530,7531,7528,7892,7978,7979,7865,7973,7976,6907,6902,7077,6906,6914,6916,7180,7183,7227,7178,7179,7181,7992,7332,7971,7972,6918,7059,6937,6878,6882,6884,6936,9111,7504,9113,9115,7891,7044,7479,7483,7501,7505,7331,7478,7506,6900,6887,6889,6890,6885,8001,7993,7154,7994,7495] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.494,0.902]
select surf_pocket3, protein and id [16216,16222,16269,16210,16214,17308,17311,17304,17303,16663,16810,16268,16376,16811,16391,16863,17196,18495,18497,16862,16860,16861,17224,18480,18485,18487,18489,18490,16877,16876,16878,17197,17200,17223,16664,16837,16838,16833] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.353,0.702]
select surf_pocket4, protein and id [14104,14105,14106,15362,15364,13720,13715,14187,13273,13274,13275,14190,14185,14186,13692,13693,13545,13697,14079,14078,13742,13743,13744,13745,13104,13098,13099,13101,13092,15358,15365,15360,15355,13103,13149,13150,13151,13258,13096] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [4379,5992,4378,4380,4350,4354,4355,4740,4180,4327,4328,3910,3908,3909,3738,3739,3727,3733,3731,3784,3785,3786,3748,5985,5990,3893,5995,6002,4713,4714,4828,4741,4825,4826,4821,4820,4393,4394,4717] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.290,0.702]
select surf_pocket6, protein and id [1702,1594,1621,1622,1235,1231,612,774,1258,1259,1260,1261,608,2879,2872,2877,2882,1061,1701,1236,1703,1706,1707,1709,789,1208,1209,666,667,614] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.388,0.361,0.902]
select surf_pocket7, protein and id [11045,10965,10966,11046,10553,10011,10552,10133,10134,10135,10575,12237,10010,10118,9956,10405,10605,10602,10603,10604,9961,9958,12235,12228,12233,9952,12238,12222,10938,10939,10942,11050,11051,11053] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.333,0.278,0.702]
select surf_pocket8, protein and id [19347,19356,19394,19517,19518,20433,20434,20436,20321,19516,19986,19987,19985,20348,20349,21618,21620,19988,19501,19788,19935,19936,19940,19952,19958,19963,20429,20430,20428,19789,19344,19346,19355,19341,19393,19335,19339] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.467,0.361,0.902]
select surf_pocket9, protein and id [11066,11067,11069,11051,11052,11053,9976,10253,10255,10257,10236,9980,9981,9988,9990,10911,10927,11068,11194,11075,10134,10135,10151,9998,10011,9963,9964,9972,9973,9974,9992,9994,9995,9996,9997] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.396,0.278,0.702]
select surf_pocket10, protein and id [632,620,628,629,1706,1708,1707,1709,791,788,790,667,1731,1722,1723,1724,1567,1829,636,644,646,892,637,641,795,807,650,652,909,911,913,1595,1605,1582,1583,1828,1830,1831] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.549,0.361,0.902]
select surf_pocket11, protein and id [19359,19363,19373,19371,19636,19638,19640,19534,19683,19618,19619,19356,19394,19517,19518,20433,20434,20435,20436,20449,20450,20451,20294,20458,19375,19357,19346,19355] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.459,0.278,0.702]
select surf_pocket12, protein and id [16234,16238,16515,16511,16513,17324,17326,16232,16239,16393,16230,16231,16390,16392,16397,16409,16254,16494,16248,16269,17452,17169,17185,17309,17311,17310,17333] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.631,0.361,0.902]
select surf_pocket13, protein and id [9902,10019,9925,9881,9880,10479,10528,10529,10506,10508,10143,10509,24023,24022,24021,10020,10004,23995,23996,24020] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.522,0.278,0.702]
select surf_pocket14, protein and id [3751,3755,3763,3765,3910,3908,3909,4029,4030,4032,4033,3747,3748,3756,3926,3738,3739,3786,3772,3773,4850,4011,4827,4842,4828,4825,4826,4841,4028] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.710,0.361,0.902]
select surf_pocket15, protein and id [14193,14215,13376,13273,13274,13275,14190,14192,14206,13395,13397,13113,13116,13112,13121,13132,13134,13135,13291,13151,13128,13130,13120] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.584,0.278,0.702]
select surf_pocket16, protein and id [10934,10941,10620,10933,11445,11447,10619,11515,11517,11216,11217,11218,11474,11446,11489,11226,11228,11202,11201,11203] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.792,0.361,0.902]
select surf_pocket17, protein and id [23145,23146,23144,23183,23185,24605,24606,23174,23109,24529,24532,24607,24519,24517,23149,23489] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.647,0.278,0.702]
select surf_pocket18, protein and id [933,935,937,938,3069,3061,3067,177,975,976,930,931,936,966,133,137,129,130,134,119,112] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.875,0.361,0.902]
select surf_pocket19, protein and id [6517,6520,7410,6516,6553,6555,9190,9174,9175,9247,9178,9189,9184,9185,6527,9244,9256] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.690]
select surf_pocket20, protein and id [12730,15461,12767,12769,15502,12731,12741,15514,15429,15433,15436,15432,15443,15505,13623,15426,13624] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.847]
select surf_pocket21, protein and id [3402,3404,6091,6102,3403,3365,3369,4259,6095,6164,6170,6173,3376,6152,4258,3366,6092] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.627]
select surf_pocket22, protein and id [16925,16893,18390,18400,18406,16891,16888,16892,16851,18403,18477,18478,16916,16882,16886] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.765]
select surf_pocket23, protein and id [3238,3248,3249,3253,3256,4049,4050,4052,4095,4094,4126,3231,3236,4085,6211,3255,3296,4055,4057,6203,6209,4056] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.565]
select surf_pocket24, protein and id [12225,12138,10628,10635,10630,10633,10634,10667,10669,10624,10658,12136,12148,12153,12143,12151,12152,10973,10593] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.682]
select surf_pocket25, protein and id [2402,18008,18010,17983,17984,17985,17982,17938,17941,2374,2375,2376,2377,17918,2400,17919] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.502]
select surf_pocket26, protein and id [2780,1291,1629,1289,1290,1249,2792,2798,2869,2870,1286,1314,1284,1323,1325,2782] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.604]
select surf_pocket27, protein and id [20659,20291,20557,20288,20560,20292,20293,20458,20453,20456,20596,20598,20626,20627,20656,20657,20701,20279,20546,20280,20282,20283,20284,20278] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.439]
select surf_pocket28, protein and id [9629,9627,9590,10483,10484,9594,12306,12316,12378,12309,12387,12384,9591,9589,9601,12302,12305] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.522]
select surf_pocket29, protein and id [20576,20577,20578,20874,20586,20588,20324,20562,20831,20832,20003,20900,20902,20002,20325] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.373]
select surf_pocket30, protein and id [14338,14368,14443,14036,14401,14340,14037,14040,14041,14035,14048,14305,14215] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.439]
select surf_pocket31, protein and id [13770,13807,15352,13809,13764,13798,13731,13733,15278,15351,15353,15275,14113,13775,15265,13773] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.310]
select surf_pocket32, protein and id [5904,5905,5908,5909,5981,5982,5983,4368,4403,4433,4410,4442,5895,4408,4748,4404,4405,5893,5910,5900] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.361]
select surf_pocket33, protein and id [10310,10280,10281,10282,12425,12417,12423,9456,9463,9478,9481,10319,9467,10320,10277,10274,10275,10279] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.310,0.278]
select surf_pocket34, protein and id [16532,16533,16535,16538,16577,16578,16540,16568,18677,16537,18675,15735,15736,15739,15779,15731,15732,15721,15714] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.439,0.361]
select surf_pocket35, protein and id [18984,21760,21763,18972,18973,21769,21701,21691,21694,19866,21770,21772,21690,19010,21700,21705,19012] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.373,0.278]
select surf_pocket36, protein and id [19976,21533,21536,21609,21610,21611,20007,20011,20041,20013,20016,20050,20052,20356,21521,21523] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.522,0.361]
select surf_pocket37, protein and id [21979,22836,22835,22796,22798,24806,24804,22826,24798,21990,21994,21997,22013,22014,22037,21972,22015,22790,22791,22792,22793,22794,22795] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.439,0.278]
select surf_pocket38, protein and id [22117,24768,22145,24756,24690,24692,24686,24687,24697,24759,22105,22106,22143] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.604,0.361]
select surf_pocket39, protein and id [4394,4395,4708,4709,4716,4717,5202,5204,4953,4954,4969,4700,4978,4980,5203,5246,4968,4970] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.502,0.278]
select surf_pocket40, protein and id [9029,9103,7519,9014,9016,7899,7559,7554,7584,7593,7595,7555,7556] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.682,0.361]
select surf_pocket41, protein and id [799,676,1165,1162,1164,1148,1150,1185,1184,537,536,1135,675,581,782] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.565,0.278]
select surf_pocket42, protein and id [1589,1590,1863,1837,1838,1275,1276,1597,1598,2089,2090,2091,2133,1851,1852,2159,1861] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.765,0.361]
select surf_pocket43, protein and id [17699,16877,16878,17199,17200,17474,17475,17476,17741,17484,17486,17698,17697,17767,17460] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.627,0.278]
select surf_pocket44, protein and id [16766,16767,16764,16786,16787,16139,16737,16183,16138,16160,16278,16401,16277,16384] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.847,0.361]
select surf_pocket45, protein and id [7405,6807,7431,7454,7455,7069,6945,7433,6946,6851,6806] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.690,0.278]
select surf_pocket46, protein and id [8242,8245,8779,8206,8755,8776,8208,7750] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.875,0.902,0.361]
select surf_pocket47, protein and id [4670,4672,4675,4679,4680,4676,4940,5072,5073,4988,4990,5018,5048,5049,5051,4683,4850] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.647,0.702,0.278]
select surf_pocket48, protein and id [3655,3918,4303,4304,3656,4281,4254,3700,3794,4283,3795] 
set surface_color,  pcol48, surf_pocket48 
   
        
        deselect
        
        orient
        