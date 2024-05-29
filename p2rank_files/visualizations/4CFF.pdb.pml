
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
        
        load "data/4CFF.pdb", protein
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
 
        load "data/4CFF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [12269,13493,13496,13619,13620,13476,13477,13487,13492,13601,13602,12897,12898,12895,12402,14070,14075,14076,14077,14078,14088,14074,14083,13893,13900,14105,12880,12884,12885,12886,12887,12888,12866,7288,13038,13039,13040,13041,14057,7280,7278,7279,13022,7291,12268,13020,14052,14053,14064,14067,14068,14069,13875,13876,13871,13873,13870,13883,13884,13887,13888,13890,13885,13892,13901,13904,13023,13633,13634,13637,12403,12407,12408,13639,7295,7316,13642,13647,13832,13833,13835,13648,13826,13820,13831,13625,13627,13629,12400,12401,12411,12415,12416,12417,13478] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [11267,11258,11263,11265,9987,9988,9990,9994,9995,10002,10003,10004,11257,11286,11236,11239,2540,11284,11473,11523,9853,2556,11277,11272,11275,2530,11508,9855,9856,10536,10660,10678,10679,11708,11702,11705,11706,11721,11535,10658,10661,10676,10525,10526,10527,11125,11130,11134,11726,11712,11713,11714,10533,10534,10535,10511,10518,10521,10522,10523,10524,11240,10665,11716,11115,10504,2549,2538,2541,2542,11511,11513,11509,11542,11690,11691,11285,2577,2578,11462,11464,11471,11469,11470,11306] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.498,0.902]
select surf_pocket3, protein and id [13022,7290,7291,12265,12267,13020,13021,12261,9133,9134,9135,9136,9155,12253,9127,7274,7275,14060,13039,14057,14058,9124,9120,12086,9148,12994,12996,12998,12260,13007,12275,12276,13003,13004,13006,12272,12898,14059,14062,13050,7193,7196,13048,13075,13077,7184,7185,7186,13037,13043,13046,13035,13036,13042,12255] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.357,0.702]
select surf_pocket4, protein and id [5027,5217,5218,5296,5297,5432,5950,5946,5949,5299,5011,5437,5215,5958,5951,5954,5181,5184,5962,5963,5964,5180,4871,5955,4872,4860,4861,4910,4912,5874,5875,5847,4855,5484,5481,4854,4856,4858,4859,4911,5458,5461,5473,5957,5472,5025,4863] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [4396,9673,4392,4381,4382,4383,2548,2551,2536,4377,4368,10634,10636,4384,4403,10688,10686,2452,2454,2457,10681,10715,10713,11697,11700,10645,2552,10536,10642,10644,10660,10677,10641,10659,10675,9847,9848,9852,2446,2445] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.294,0.702]
select surf_pocket6, protein and id [5051,8202,8203,8201,8406,8431,8450,4897,4901,4919,4921,5035,4903,4904,4773,4772,4774,8383,8448,8449,4827,4828,4829,4831,4836,8432,8399,4905,8381,8382,8385,8388,8389,8397,8398,8182,5409,5410,8463,5387,5386,5388,5034] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.380,0.361,0.902]
select surf_pocket7, protein and id [1207,283,1206,267,688,693,112,114,167,111,115,740,705,1210,1211,1213,1115,1214,1205,1103,1130,1131,717,729,737,1202,555,711,714,1110,281,166,168,118,119,117,128] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.329,0.278,0.702]
select surf_pocket8, protein and id [3454,3455,3456,3683,3684,3685,3651,3652,3681,644,642,643,666,3435,3701,3702,3703,28,3641,3650,3634,3635,3636,3478,161,160,288,290,291,157,177,92,29,665,87] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.463,0.361,0.902]
select surf_pocket9, protein and id [9278,9481,7380,9297,9298,9299,9300,9301,12180,12183,12184,12182,9318,9336,9320,9283,12239,12240,12241,7376,7332,7363,7364,7365,12213,12208,12211,13707,7349,9302,9482,12248,7398,12238] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.388,0.278,0.702]
select surf_pocket10, protein and id [14079,13497,14199,14200,14186,14214,12875,12888,12889,12865,12866,12864,12831,13477,13486,13489,13490,13492,14213,12837,14221,12842,14212,13031,13032,14220,14222,13292,12868,12869,12870,14247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.541,0.361,0.902]
select surf_pocket11, protein and id [6034,6037,7840,7977,7978,7856,6041,7855,7874,7876,6196,6197,6028,9245,7958,6038,6045,7700,7673,7699,7697,7838,7853,7854,8983] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.451,0.278,0.702]
select surf_pocket12, protein and id [5250,5727,5729,5730,5265,5721,5767,5768,7011,7008,6996,6966,6968,6893,6905,6967,5267,6997,5273,5274,5719,5754,6925,6926,6927,7001,7007,7010] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.620,0.361,0.902]
select surf_pocket13, protein and id [6743,6744,6745,6746,6751,6750,6726,5718,6753,6010,9202,9204,6224,6231,6223,6230,5741,5742,5744,9021,9193,9194,9195,9023,6702,9048,6707,9049] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.514,0.278,0.702]
select surf_pocket14, protein and id [11124,11127,11115,11128,10929,10930,10502,10503,10504,10505,10507,10506,10508,10526,10527,11125,11130,11135,11136,11724,11139,11822,11824,11838,11837,11851,11852,11859,11860,10469,11821] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.698,0.361,0.902]
select surf_pocket15, protein and id [12039,12040,7151,7152,7111,7120,7121,7089,7090,12010,12009,7160,9421,9422,12028,12030,12031,9408,12069,12070,7219,9409,9411] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.576,0.278,0.702]
select surf_pocket16, protein and id [4526,4548,9826,2633,9828,4524,4531,4547,4542,4546,4566,4568,4584,4727,4729,9772,9771,9802,9803,9806,9827,9769,9770,9795,4545,9773,4730,9825,9835,2629,2632,2651] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.780,0.361,0.902]
select surf_pocket17, protein and id [10597,4615,4624,10598,10610,4636,4638,10576,10625,3246,3250,3251,3252,3253,3276,3277,4618,3287,3280,3237,3278,3235,4482,4483,4484] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.635,0.278,0.702]
select surf_pocket18, protein and id [506,521,523,982,984,530,2257,953,1023,1010,2181,2161,2222,2223,2224,2252,2253,2149,2183,955,529,2263] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.859,0.361,0.902]
select surf_pocket19, protein and id [2952,3092,3093,3227,3229,1293,3231,4493,1284,3211,3106,1297,1294,1298,1452,3107,3108,3109,3127,3129,1300] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.698,0.278,0.702]
select surf_pocket20, protein and id [5499,5501,5503,5537,6126,6367,6368,6327,5530,6353,5528,5527] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.863]
select surf_pocket21, protein and id [755,757,759,793,1609,786,783,1583,1624,1622,1623,1382,1611,1612] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.639]
select surf_pocket22, protein and id [8034,9368,9370,9235,8023,12959,12960,12969,12972,9367,9373,12987,8024,8025,7998,7999,8000,9376,9385,9388,9390] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.784]
select surf_pocket23, protein and id [5375,5377,5378,5380,8180,8769,8185,5370,5371,8226,8195,8198,8199,5067,5070,8665,8666,8667,8664,8545,8546,8644,8658,8642,8643,8645,8566,8567,8767] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.576]
select surf_pocket24, protein and id [9971,9972,10365,10366,10516,10531,10553,10533,10514,10511,10518,10528,9964,10362,10344,10346,10368,11120,10504,9989,10011,10012,9988,10002,10004,9967,9970] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.702]
select surf_pocket25, protein and id [4449,4451,996,997,1031,1032,1266,998,1000,1479,1480,2007,2009,2001,1999,2002,2006,1005,1511,1478,4441,4442,4443,4444,4448,4681,4428] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.518]
select surf_pocket26, protein and id [9989,10011,10012,9988,10265,9882,9967,9970,10301,10303,9971,9964,10344,10346,10262,10255] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.624]
select surf_pocket27, protein and id [3918,3920,3917,3798,3799,3895,3896,3897,3451,3819,3911,3898,3479,634,635,643,3433,636,3448,3452,3453,3456,3438,307] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.455]
select surf_pocket28, protein and id [8004,12353,12356,12358,12361,12362,12723,12736,12927,12930,8012,12964,12929,12364] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.545]
select surf_pocket29, protein and id [13497,14086,14199,14200,14184,14186,14187,14185,13517,13501,13325,13486,13489,13490,13492,14220,14222,14221,13291,13292,13293,13327,13320] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.392]
select surf_pocket30, protein and id [9096,12244,12245,12238,12251,12248,9066,9067,9068,9103,9104,9105,9098,9091,9094,9141,7300,9138,9140,7298,9115,9164,9072,9084,12091] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.467]
select surf_pocket31, protein and id [5056,5059,5060,8794,8817,8818,5370,5375,5380,8899,8922,5097,8924,5070,8891,8892,8778,8773] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.333]
select surf_pocket32, protein and id [10734,10848,9530,9532,9528,9529,9531,10731,11642,10733,11643,9552,9554,11897,10730,10769,10754,10764,10755,10741,10729,10735,10736,10770,11650] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.388]
select surf_pocket33, protein and id [2375,9587,9589,2374,9590,2340,2341,2342,10759,10783,9555,10793,10795,2351,9579,9580,10797,9577,9553] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.290,0.278]
select surf_pocket34, protein and id [7433,9271,9329,9293,9327,8122,7412,7413,9275,9291] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.412,0.361]
select surf_pocket35, protein and id [3470,3481,3484,3486,3487,3488,3836,3837,3884,3471,3880,7591,7559,7592,3905,3879,3878] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.353,0.278]
select surf_pocket36, protein and id [4656,9656,2420,2380,2381,2382,2466,2409,4657,2467,2468,2469,2471,2472,4670,2413,4669] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.494,0.361]
select surf_pocket37, protein and id [3257,9945,9940,9943,9949,9952,10568,9948,10361,10374,10567,10600,3265,10602] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.412,0.278]
select surf_pocket38, protein and id [4519,4523,4539,3375,3376,2686,2665] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.573,0.361]
select surf_pocket39, protein and id [138,142,145,141,298,673,1212,1226,283,412,440,411,447,437] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.475,0.278]
select surf_pocket40, protein and id [4669,9599,9617,4670,2412,2413,9626,2380,2381,2382,4656,4659,4657] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.651,0.361]
select surf_pocket41, protein and id [10835,10903,10920,10897,10900,10918,11920,10836,10837,11889,11890,10899] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.537,0.278]
select surf_pocket42, protein and id [8338,8335,8336,8334,8337,8339,8745,8702,8728,8729,8556,8535] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.729,0.361]
select surf_pocket43, protein and id [12384,12402,12385,12722,12380,12712,12876,12879,12893,12878,12724,12915,12727,12730,12728,12383,12401] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.600,0.278]
select surf_pocket44, protein and id [11943,13091,13092,13097,13098,13131,13093,13095,11942,11944,14259,13064,13067,14012,13210,14005,14004] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.808,0.361]
select surf_pocket45, protein and id [13143,13155,13157,13159,7113,13145,11992,11993,12000,12002,7114,7081] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.659,0.278]
select surf_pocket46, protein and id [12039,12040,7151,7111,7120,7090,7114,11990,11991,11992,11999,12000,12001,12002,12003] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.890,0.361]
select surf_pocket47, protein and id [13198,13262,13265,13197,13199,13280,13282,14251,14252,13201,13261] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.678,0.702,0.278]
select surf_pocket48, protein and id [316,353,4152,4144,4145,4177,626,4070,4071,4026,4045] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.831,0.902,0.361]
select surf_pocket49, protein and id [4508,4507,4509,4311,4609,4598] 
set surface_color,  pcol49, surf_pocket49 
   
        
        deselect
        
        orient
        