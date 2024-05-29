
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
        
        load "data/4JSP.pdb", protein
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
 
        load "data/4JSP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9242,9249,9250,9253,8931,8932,8933,10322,10347,10348,8916,8917,8920,11016,11029,10707,8937,9267,9606,9611,9614,9943,9950,9616,9619,9947,9965,9966,9639,9961,9258,9620,9623,9261,9264,9928,9932,9941,9942,10321,10328,9595,9593,9594,9919,9922,9927,9601,9592,9715,10294,10304,10305,10687,10678,10685,10690,8907,9368,6869,6866,6868,6882,9243,6867,6881,10307,10306,10696,10703,10704,11003,11008,11013,6893,11005] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [19982,19986,20316,20319,20324,20327,20333,19997,19998,19999,21388,22095,20003,22110,21773,21413,20994,21370,21371,21372,21373,21387,21759,21762,21769,21770,21774,21414,20658,20659,20306,20308,20309,20993,20315,17932,17934,20661,17947,17948,20988,20660,21744,20985,21360,20672,20677,20680,20998,21007,21008,21009,20330,21394,21031,20682,21013,21016,20685,20686,20689,21032,20667,22074,22079,22082,22088,22092,19976,19974,19975,19973,19983,21756,21757,17933,17959,21751,21753,22069,22071] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [12367,13099,13100,11883,11885,12114,12366,12368,11882,11884,12115,13067,12710,12740,12741,13096,13098,12351,12334,12357,12352,12353,12354,12356,11890,11887,11886,12165,12142,12689,12691,12665,12667,12668,12327,12336,12337,12329,12717] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.369,0.702]
select surf_pocket4, protein and id [1644,1675,2032,2033,2034,1285,1286,1288,1290,1300,2001,1674,821,814,1076,1099,1301,1302,817,819,818,1048,1049,1271,1625,1651,1599,1601,1261,1263] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.439,0.902]
select surf_pocket5, protein and id [6099,6100,6522,6525,6526,6527,6567,6573,7368,7393,7394,7479,7481,7482,6422,6424,6425,6427,6509,6510,6514,6184,5934,5935,5970,5921,6116,6117,6516,6529,6532,6560,6556] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.314,0.702]
select surf_pocket6, protein and id [17633,17639,18434,18460,18547,18548,18443,17165,17591,17593,17036,17166,17182,17183,17575,17576,18545,18549,17491,17493,17250,18553,16987,16988,17626,18459,17622,17588,17580,17582,17595,17598,17592,17488,17490,17000,17001,18556,17037,17019,17205,17206] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.373,0.902]
select surf_pocket7, protein and id [2312,2319,2347,2183,2116,2182,2346,2117,1137,2080,2081,2082,1104,1113,1114,1090,1102,836,854,852,2323,2292,2211,2212,2018,2020,2056,2083,2084,2054,2023,2024,2021,2022,1093,1095] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.298,0.278,0.702]
select surf_pocket8, protein and id [13379,13385,13389,13378,13413,13381,11918,13183,12170,12179,12180,12203,13412,13087,13088,11902,13090,11920,13084,13249,13277,13278,13086,13248,13358,13120,13122,12161,12159,12168,12156,13147,13148,13146,13149,13150] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.416,0.361,0.902]
select surf_pocket9, protein and id [2710,17830,17832,17833,18020,18021,21711,21709,21710,21712,17856,17857,17855,17862,17863,2771,22051,22039,21879,21880,22046,17854,17865,17868,17866,17867,22054,2708,2711,2737,18045,18046,18047,18048,17834] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.349,0.278,0.702]
select surf_pocket10, protein and id [16568,16570,16571,938,16530,16532,16533,681,670,671,674,701,908,937,713,936,682,16594,16596,897,898,899,928,646,647,774,775,907,901,904,16567,16527,16563,16556,673,708] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.486,0.361,0.902]
select surf_pocket11, protein and id [7028,7026,7027,7029,7030,7033,7721,7729,7734,177,7004,7006,7034,7035,7036,7134,7176,7137,139,107,109,7058,7060,104,7753,147,7748] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.404,0.278,0.702]
select surf_pocket12, protein and id [7612,7613,7631,8525,9221,9220,9370,9371,6873,6869,6870,6857,7594,7595,6839,7603,8521,7605,6900,6901,6902,9023,9025,8523] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.553,0.361,0.902]
select surf_pocket13, protein and id [2618,2619,2620,2649,2577,2578,2422,2419,2421,2683,2684,2435,2393,2394,2386,2395,2456,2544,2545,2445,2306,2571,2308,2607,2608,2576,2573,2305,2307,2304] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.455,0.278,0.702]
select surf_pocket14, protein and id [21911,19713,22102,21820,21822,19714,22117,21818,21819,21821,21823,21824,21785,21797,21798,22118,19846,19847,19850,19845,21912,21983] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.620,0.361,0.902]
select surf_pocket15, protein and id [10719,11036,11052,10731,10732,11051,8647,8648,8778,8779,8780,8781,8784,10757,10758,10845,10846,10917,10752,10753,10754,10756] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.510,0.278,0.702]
select surf_pocket16, protein and id [13370,13371,13372,13374,13452,13611,13460,13461,13522,13610,13639,13684,13685,13686,13715,13642,13643,13644,13483,13485,13487,13488,13489,13750,13501,13749,13459,13511,13347,13637,13348,13351,13343,13673,13674] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.690,0.361,0.902]
select surf_pocket17, protein and id [18092,18094,18095,18096,18093,18070,18072,18102,11170,11173,11175,11213,18124,18200,18203,18100,18101,18795,18800,11205,11243,18242,18787] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.565,0.278,0.702]
select surf_pocket18, protein and id [6161,6162,4418,6163,6165,4394,4416,4419,4421,6470,4108,8047,4135,4479,6201,6202,8032,8054,8045,8048,4444,4478,4445,6476,4106,4109,6192,4392,4395,6193] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.757,0.361,0.902]
select surf_pocket19, protein and id [17514,17503,17521,17513,17518,15451,15453,15449,15457,15463,15167,15168,15427,15177,15461,15462,15169,17254,17256,17259,15176,17292,15418,15425,16833,16837,16819,16820,16822,16834,15420,15142] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.616,0.278,0.702]
select surf_pocket20, protein and id [3885,3839,3844,3884,7989,3443,3444,3433,3434,3403,8019,8020,8021,8022,8023,8024,7985,8018,8185,8187,8155,3843] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.827,0.361,0.902]
select surf_pocket21, protein and id [14951,14950,14499,14500,19088,19090,19251,19253,19089,14509,14510,19084,19085,19086,19087,19221,19055,14909,14910,14905,14468,14469,14440,14438,19051,19052] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.671,0.278,0.702]
select surf_pocket22, protein and id [18671,17905,17923,17966,17967,17968,17911,17912,17913,20089,20091,18660,18662,18669,18661,20285,20286,20287,20436,20437,20280,20281,18647,19591,18679,18678,19588,19587,19589] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.894,0.361,0.902]
select surf_pocket23, protein and id [15482,15484,15487,15490,15510,17227,17228,17229,17231,17542,19113,19114,15544,15545,15511,15500,15174,15461,15201,17258,17267,17268,15175,17519,17520,17521,15485,15458,15460] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.678]
select surf_pocket24, protein and id [2431,17787,17788,17813,19622,19620,19621,19614,17654,17656,18420,18430,18431,18436,18422,18435,19642] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.839]
select surf_pocket25, protein and id [4395,4396,4397,6448,6447,6437,6190,6193,6455,4076,4111,4110,4101,4103,4361,6188] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.624]
select surf_pocket26, protein and id [18032,19551,19552,18738,18745,18750,19646,18751,18754,18001,18002,19576,19535,19536,19533,19550,18756,18782] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.769]
select surf_pocket27, protein and id [11443,11306,11329,11529,11580,11610,11522,11526,11609,11295,11299,11303,11272,11274,11275,11294,11469,11501,11502,11470,11579,11297] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.573]
select surf_pocket28, protein and id [231,209,436,228,404,229,263,240,206,208,237,233,234,513,514,463,543,544,456,460,451,377] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.702]
select surf_pocket29, protein and id [4352,4359,4395,4396,4397,6448,4385,4387,6447,6437,6193,6455,4361,5767,5768,5753,5754,5756,4354,5771] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.518]
select surf_pocket30, protein and id [9416,9783,9523,9513,9652,9281,9782,9792,9346,9319,9320,9415,9322,9280,9323,9325,9785,9345] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.631]
select surf_pocket31, protein and id [7335,7355,8561,8557,8558,8562,8540,7619,7622,7334,8563,8533,7600,8537,8538,8542,7575,7599] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.467]
select surf_pocket32, protein and id [13667,13668,13316,13317,14353,14351,14330,13286,13290,14024,13628,13629,14060,14019,14059,13594,14017,14021,13593,14023,14051] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.565]
select surf_pocket33, protein and id [15777,15785,15808,15783,15786,15787,15812,15860,15861,16117,16118,17548,17550,15780,17534,17535,17547,15790,16115,16143,16145,15820,15821,16197,16200,15827,15829,16167,15814] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.412]
select surf_pocket34, protein and id [20851,20412,20411,20847,20848,20849,20858,20718,20386,20388,20389,20391,20347,20346,20481,20482,20579,20589,20385] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.498]
select surf_pocket35, protein and id [2993,2994,2601,2602,2559,2562,2563,2222,2224,2250,2251,3287,3015] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.361]
select surf_pocket36, protein and id [7688,8484,8485,8486,7690,6966,8510,7684,8580,8467,8470,6935,6936] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.427]
select surf_pocket37, protein and id [8576,6721,6720,6747,6722,6590,8548,8554,8556,7354,7356,7364,7369,6588,7370,7363,7365] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.306]
select surf_pocket38, protein and id [6484,6482,4742,4743,4746,4794,4748,4761,5101,4755,5134,6483,4795,5077,5079,5052,4763,5051,5049,4711,4685,4714,4716,4717,4720,4719,4754,4721,4724] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.361]
select surf_pocket39, protein and id [11398,11358,11420,11422,11359,11328,11443,11326,11329,11606,11627,11629,11444,11607,11608,11609,11610,12643] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.306,0.278]
select surf_pocket40, protein and id [17908,17909,17894,17897,19607,19615,19617,19611,19618,17839,2439,2441,2440,17848,17849,17850,17812,17815,17814] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.427,0.361]
select surf_pocket41, protein and id [10637,10639,6917,10649,10644,10646,6913,6950,6951,6802,6803,6952,6953,6983,6954,6955,10661,6801,6797,6800,6975,10631,10629] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.361,0.278]
select surf_pocket42, protein and id [7512,7513,7622,7334,7335,7336,7355,8540,8537,7574,7575] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.498,0.361]
select surf_pocket43, protein and id [18641,18688,18400,18579,18578,18640,18402,19603,19606,18421,18401] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.412,0.278]
select surf_pocket44, protein and id [7938,7940,3787,3347,3314,3316,3788,3320,3321,3318,3382,7937,7939,3346] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.565,0.361]
select surf_pocket45, protein and id [3045,3182,3184,3320,3321,3318,3043,3008,3011,3012,3355,3382,3348,3346,3046] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.467,0.278]
select surf_pocket46, protein and id [14411,14412,14384,14387,14076,14109,14111,14421,14250,14414,14248,14386,14074,14077,14078,14448] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.631,0.361]
select surf_pocket47, protein and id [14218,14399,14215,14396,14213,14214,14256,14219,14220,14257,14428,14712,14713,14689,14677,14679,14217,14691] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.518,0.278]
select surf_pocket48, protein and id [3149,3151,3152,3611,3623,3625,3613,3362,3646,3647,3154,3147,3148,3153,3190,3191,3330,3333] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.702,0.361]
select surf_pocket49, protein and id [4777,5124,4775,5537,5538,5147,5145,5149,5152,5154,5190,4773,5571,5125] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.573,0.278]
select surf_pocket50, protein and id [3158,3161,3171,2698,3172,3001,2694,2728,2976,2977,2761,2735,2762,2696,2738] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.769,0.361]
select surf_pocket51, protein and id [6518,6078,6075,6065,6092,6071,6073,6058,6433,5749,5756,5763,6091,6512,6513] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.624,0.278]
select surf_pocket52, protein and id [19005,14412,14382,19003,19004,19006,14854,14853,14380,14384,14387,14386] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.839,0.361]
select surf_pocket53, protein and id [18017,18018,21705,21715,17981,17983,17868,18013,18016,17869,21725,21727,21703,21695] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.678,0.278]
select surf_pocket54, protein and id [9907,9595,9713,9714,9715,6882,8495,10035,6883,9906] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.894,0.902,0.361]
select surf_pocket55, protein and id [17144,17578,17584,17141,17157,17158,17131,17137,17499,16815,16822,16829] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.671,0.702,0.278]
select surf_pocket56, protein and id [12982,12996,13107,12733] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.827,0.902,0.361]
select surf_pocket57, protein and id [3569,3575,3598,3923,3893,3895,3432,3434,3881] 
set surface_color,  pcol57, surf_pocket57 
   
        
        deselect
        
        orient
        