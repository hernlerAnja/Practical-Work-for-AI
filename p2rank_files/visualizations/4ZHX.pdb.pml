
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
        
        load "data/4ZHX.pdb", protein
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
 
        load "data/4ZHX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10510,10513,10514,10515,10517,10518,10519,10657,10659,10661,11831,11709,11804,11689,11819,11823,11818,11832,11817,10520,10496,10503,10494,10497,10498,10499,10500,10917,10918,11801,11840,10471,11839,10630,10633,10634,10636,10650,10652,10669,11694,10651,10668,11691,11692,11690,11825,11824,10676,10672,10673,10626,4201,4203,4221,4223,4200,10670,10671,10628,10707,10705,2451,2454,2456,10678,10680,4222,9852,9998,11256,11260,10524,10525,10526,10527,10528,11693,11245,11246,9988,9989,9990,10003,10004,10005,11251,11253,11255,10516,11123,11121,11118,11122,11124,11127,11128,11707,11108,11103,11105,11115,11116,9841,9843,9848,9849,9855,10637,9856,9857,11695,4210,4202,9674,4215] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [13590,13849,13851,14065,13609,7284,7285,7283,7273,7281,13841,13873,13857,12898,12899,7292,12242,12244,12377,12867,12885,12888,12890,13489,14064,13495,14082,13589,13591,12879,13041,13042,14041,14047,14044,14045,14051,14052,14060,14029,13878,13881,13874,13877,13021,13024,13039,13040,14054,12889,14056,12881,12886,12887,13469,13470,13471,12378,12382,12383,13622,13623,13652,7321,13636,13637,13587,13608,13631,13626,13628,13818,13820,13657,7299,7320,13809,13811,13816,13817,13842,13843,13844,13847,13840,13614,12375,12376,12386,12390,12391,13616,12392,13618,13472,12400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [1193,1196,1197,1200,273,275,678,110,120,1199,158,159,160,102,103,108,109,1191,1089,1096,1098,1116,1117,728,719,727,730,1192,1206,543,1182,1188,112,119,707,695,697,701,704,545,683,259,104,106,107,463,464] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [12995,12997,12999,7278,7279,9138,9142,9143,9144,9145,9164,9133,13004,13023,13022,13038,13040,14036,14039,9157,7291,9152,12897,12247,12898,7293,7294,7295,12240,13005,13008,13007,12061,12235,7157,7159,13049,13051,13076,13078,7145,13043,12236,12228] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [4826,4676,4677,4678,4725,4727,5296,4673,4726,4670,4671,4674,5111,5244,5261,5263,5686,5267,5273,5687,5293,5270,5285,5768,5759,5762,5763,5767,5769,5671,5766,4840,4681,4686,4687,4842,5760,5659,5666,5294,5761] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [169,283,3500,79,167,168,84,21,76,3495,280,282,655,656,152,153,149,151,279,3525,3526,3527,3528,3524,299,634,3300,3301,3302,3545,3484,3493,3281,3559,3546] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [4712,4846,4847,4849,4850,5198,5199,5200,8185,8186,8187,5221,5222,8166,8447,8432,8433,8434,4644,4646,4588,8390,4716,4718,4719,4720,4735,4736,8413,8414,8415,8416,4643,4651,8367,8383,8369] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [12005,12006,12003,12014,12015,7112,7113,9418,9420,7120,11985,9430,9431,7168,9417,12044,7180,12045,7050,7051,7047,7072,7080,7081,7110,7109,7171,7167,7169,9413] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [12160,9306,12157,7373,9307,9309,12158,12159,9345,9292,9329,12216,7362,7369,12183,12190,12223,9491,12214,12215,9287,7391,9488,9490,12191,12194,12213] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [1468,1475,1465,1466,1467,1472,1981,1979,984,1982,1989,960,4268,4270,4267,4256,4260,4261,4262,4263,1017,982,983,995,1469,4092,4094,1938,1943,1945,1962,4119,4120,1948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [9254,7942,5856,7866,6008,6009,7960,5845,5850,5853,7962,5840,5846,5847,7961,7689,7690,5849,7687,7846,7829,7830,7843,7844] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [9657,2417,2463,2407,4480,4475,4476,4477,4479,9600,9616,9618,9627,9628,2409,4488,4489,2378,2347,2348,2381,2377,2344,2369,2372] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [6545,6547,6039,6042,6555,6035,6036,5554,6045,6038,9212,5553,6026,9030,9202,9203,9204,6504,6511,9032,9057,6514,9058,6509] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [8126,8128,7422,7424,7425,7430,7429,7442,7443,7527,7528,8127,8129,7498,7517,7953,7838,7934,7852,7841,7848,7849,7507,7854] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [5311,5313,5315,5654,5349,6180,6178,6179,6168,6139,6165,5342,5343] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [13275,13197,13198,13199,13200,13262,13950,14227,14235,14225,14226,14233,14257,13201,13202,13203,14199,14201,14204,14246] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [970,2199,1009,2250,2198,2200,2239,2242,2228,2233,996,2157,2158,2159,994,520,496,511,513,968,2135,2125,2137,2229,939,961,963,966,2141,519] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [9836,9826,4367,9827,9828,9829,4350,4403,4365,4385,4387,9795,9770,9772,9794,9796,9803,4364,9771,4546,4548,9804,9807,2498,2517,2494,2520,4343,4345,2515,2495,2499,4143,9679,4139] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [2806,2958,2959,2961,2943,2944,2945,1279,3063,4312,1270,3081,1439,1280,1284,1287,1289,1438,2981,1278] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [12889,14189,14174,14161,12832,12865,12866,13032,12867,12890,13490,13485,13482,14188,14196,13033,14197,13470,13483,13285] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [11263,11461,11493,11495,11511,11517,11246,11274,11224,11227,11693,11459,11273,11673,11680,11686,11684,11700,11524,11696,11703] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [9971,10259,9972,9973,10337,10338,9989,9990,10003,10005,10013,10287,10288,10336,10524,10011,10012,10506,10508,10523,10520,10510] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [12347,12713,12718,12359,12879,12867,12360,12895,12377,12877,12881,12891,12894,12728,12725,12729,12731,12709,12859,12352,12646,12355,12358,12679,12376,12390,12391,12392] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [745,747,749,783,1569,776,1595,772,773,1608,1609,1368,1610,1598,1599] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [11245,11246,11227,11693,11226,11121,11122,11128,11707,11686,11684,11700,11690,11696,11703,11709] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [8009,8011,9378,12960,12961,12973,7984,9244,9382,9399,9397,9385] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [10353,10366,10560,3114,3122,10594,10592,10559,9941,9944,9946,9949,9950,9953] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [12963,12965,12737,12930,12931,12724,12333,12337,12340,12284,7988,12328,12331] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [9284,9300,9302,9336,7405,8106,7426,9280,7418,8107] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [13094,13133,11915,11916,11918,11919,11920,14234,14235,13068,13210,13982] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [5568,6794,5077,5079,5086,5538,5511,6766,6703,6795,6701,6707,5062,5540] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [8785,5182,5187,8749,8786,8642,5192,4911,4912,8867,8890,8892,4878,4886,8859,8860,8766,8764] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [8319,8320,8322,8317,8316,8318,8321,8721,8532,8705,8677,8678,8511] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [10697,10723,10726,11624,11625,11877,10727,10728,10721,10761,10836] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [2551,3232,4342,4338,4358,4360,2531] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [7996,12959,7985,7999,8035,8003,8004,7995,7993,7994,7785,7788,12950] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        