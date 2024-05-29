
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
        
        load "data/6JK8.pdb", protein
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
 
        load "data/6JK8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2327,2552,2789,2324,2326,2575,2787,2325,2479,2481,2797,2683,2944,2684,2849,2548,2390,2463,2464,2465,2630,2627,2629,2634,2635,2430,2641,2608,2609,2610,2366,2388,2389,2847,2652,2653,2648,2496,2743,2750,2745,2751,2480,2699,2700,2964,2527,2540,2544,2986,2965,2339,2796,3053,3039,3052,2945,2946,3309,3121,2538,2819,2820,2821,3120,2772,3013,3014,3033,3037,3189,3191,3193,3194,3277] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [44,46,231,233,154,155,176,353,152,177,61,121,124,198,376,378,199,354,355,498,524,527,528,529,530,518,519,417,418,248,249,250,251,430,96,98,126,91,273,85,415,232,411,413,550,551,779,428,497,496,476,475] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.494,0.902]
select surf_pocket3, protein and id [9432,9410,9434,9435,9117,9118,9321,9426,9322,9459,9485,9487,9292,9409,9584,9339,9582,9773,9683,9758,9759,8963,9119,9102,9458,9267,9269,9266,9460,9245,9246,9247,9249,9047,9028,9070,9068,9069,9025,9026] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.353,0.702]
select surf_pocket4, protein and id [6067,6068,6069,6400,6402,6071,6089,6401,5841,6196,6304,5945,6090,5946,6530,6416,6486,6108,6369,5963,5974,5982,5965,5962,5964,5966,5967,5968,5969,5842,6204,6207,6070,5984,5985,5986,6239,6241,6044,5810,5811,5814,5979,5983,5992,5993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.412,0.902]
select surf_pocket5, protein and id [3967,3970,3952,3919,3937,3945,3926,3931,3933,3935,3458,3964,3439,3450,4275,4282,4290,3479,3491,4296,3828,3829,3830,4276,3923,4277,4278,4274,4398,3249,3253,3254,3495,3501,3238,3244,3247,3248,3810,3811,3812,4026,9142,9143,9144,4027,4029,4389,3518,4383,4384,4386,4388,3517] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.286,0.702]
select surf_pocket6, protein and id [7375,7378,7287,7377,7389,7279,7942,7608,7611,7418,7591,7556,7568,7590,7610,7612,7613,7480,7644] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.392,0.361,0.902]
select surf_pocket7, protein and id [2485,2486,2487,2317,2318,2319,2489,5210,5212,5237,5277,10921,5246,5211,5209,5245,641,2333,2334,2335,2328,2332,2311,2316,2286,2287,2341,2357,2360,5249,5247,5274,5273,2383,5170,10914,10915,2503,5173,2502,5180,10913,10917,10918] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.337,0.278,0.702]
select surf_pocket8, protein and id [3435,9817,9819,3395,9847,3434,3433,3466,4333,9610,9331,9346,9593,9594,9595,9611,9538,9543,9566,9563,9565,4305,9359,9360,4319,4320,4309,4334,4335,4336,3402,3394,3396,9837,9820,9818,9532,9534,9348] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.475,0.361,0.902]
select surf_pocket9, protein and id [3653,3654,4157,4249,4259,4250,4448,4430,4449,3615,3638,3635,4153,4154,4155,3637,4468,3582,3560,3558,4179,3839,4177,4180,4234,4236,4159] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.400,0.278,0.702]
select surf_pocket10, protein and id [6788,6972,6600,6780,6781,6786,6611,6787,6613,6597,6599,8253,8242,8455,8257,8262,8301,8302,8304,8306,8303,8305,6980,8248,8222,8229,8230,8328,8239,6979,7194,8454,8461,8463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.557,0.361,0.902]
select surf_pocket11, protein and id [9650,9651,9652,9365,9409,9338,9212,9408,9118,9425,9427,9386,9387,9389,9404] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.467,0.278,0.702]
select surf_pocket12, protein and id [13376,13377,13379,13381,5287,5298,5300,13375,13192,13411,5309,265,267,258,71,440,13286,450,13316,5302,13284,13309,13314,712] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.639,0.361,0.902]
select surf_pocket13, protein and id [1792,1798,1799,1800,2035,2039,2040,1787,1789,1791,1886,2037,1982,1984,2046,1985,1906,1907,208,209,1773] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.529,0.278,0.702]
select surf_pocket14, protein and id [185,192,3,16,362,368,10,15,1788,1824,1826,1816,1817,1661,1665,1667,1790,1682,370,1618,1610] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.722,0.361,0.902]
select surf_pocket15, protein and id [9396,9397,9400,10583,10589,10590,9670,10560,10556,10559,9668,9416,9402,9415,9689,9691,9710,9712,9706,9707,9709,9667,9674,9221,9443,9444,10545,10547,9713,10543] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.596,0.278,0.702]
select surf_pocket16, protein and id [10459,10463,10465,10850,10863,10864,10318,10312,10647,10737,10320,10453,10630,10635,10464,10845,10849,10859,10206,10636,10736,10642,10445,10444,10452,10443] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.804,0.361,0.902]
select surf_pocket17, protein and id [9831,9915,10046,10022,10056,10058,9806,9805,9910,9913,9949,9952,9955,9946,9903,9944,9809,9676] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.659,0.278,0.702]
select surf_pocket18, protein and id [827,1423,1424,1427,1529,1633,1395,1398,1399,1404,1425,1014,814,815,824,1534,1531] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.890,0.361,0.902]
select surf_pocket19, protein and id [9661,10574,10575,10576,10578,10580,10581,9659,10566,10567,10857,10607,10609,10577,10579,10626,10625,10475,10476,10592,10595,10597,10871,10872,10873,10870] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.678]
select surf_pocket20, protein and id [10755,10765,10768,10770,10775,11605,11601,11600,10491,10499,10830,10832,10833,10492,10498,11618,11622,10496,10618,10506,10785,10485,10487] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.827]
select surf_pocket21, protein and id [5182,5184,636,652,2337,2335,2331,5183,643,642,663,1064,1072,650,651,662,1083,1085,2521,2530,2547,2512,2513,2514,2515,2509,1065,1066,1067] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.612]
select surf_pocket22, protein and id [10663,10668,10670,10682,10688,10347,10343,10340,10346,10707,10718,13270,13272,10692,10694,13217,13219,10396,10372,13216] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.745]
select surf_pocket23, protein and id [11755,11757,7013,7015,7231,6835,6836,6838,6839,11787,7031,11783,11785,11780,11781,11782] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.549]
select surf_pocket24, protein and id [8449,8451,8454,8428,8434,8435,7201,6993,6995,7205,7001,7004,7211,6994,6806,6807,6627,6798,6802,6805,8429,8464] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.663]
select surf_pocket25, protein and id [7476,11729,7674,7242,7251,7252,7253,7472,7240,7250,7691,7693,7473,7677,7678,11702,11725,11727,11685,11718,11719,11720,11686,11688,11690,11700,11684] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.482]
select surf_pocket26, protein and id [3442,3443,3970,4305,9356,9357,9358,9359,9360,4290,4289,4304,9127,9348,9143,9144,4044,3811] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.580]
select surf_pocket27, protein and id [3171,3191,3193,3274,3316,3317,3318,3420,3474] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.420]
select surf_pocket28, protein and id [4384,4385,4390,4382,3721,3724,3733,3732,3772,4371,4375,4376,3788,3769,4283,3704,3706,4295,4297] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.498]
select surf_pocket29, protein and id [2956,2971,2972,2973,10109,10110,10111,10112,10113,2955,2957,2902,10079,2709,3177,3178,3179,3180,3181,3182,2927,2893,2895,2897,2900,2901,2903,2904,10940,10929,10932,2905,2710] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.357]
select surf_pocket30, protein and id [9581,9582,9773,9807,9808,9487,9946,9758,9759] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.416]
select surf_pocket31, protein and id [9872,10871,10872,10873,10874,10978,10141,10142,10143,10994,10995,9885,9886,10566,10567,10856,10857,10574] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.290]
select surf_pocket32, protein and id [962,1240,964,1089,1092,1093,995,997,1076,999,979,991,1069,1073,1096,1051,1053,1005,989] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.388,0.361]
select surf_pocket33, protein and id [44,45,46,27,233,22,140,155,177,178,145,141,144,24,198,199] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.333,0.278]
select surf_pocket34, protein and id [1095,959,1119,1161,1162,1174,931,932,934,939,938,962,967,968,1133,1135,1163] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.471,0.361]
select surf_pocket35, protein and id [5173,2502,5170,10915,10912,10913,2485,2486,2487,2708,2489,5210,5212,5211,2717,2718,2720,2722,2504,2484] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.396,0.278]
select surf_pocket36, protein and id [403,220,222,224,393,628,405,630,242,5291,240,2375,5282,5285,5281,5287] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.553,0.361]
select surf_pocket37, protein and id [4990,4991,4992,4825,7536,7537,7538,4843,4845,4844,4869,4842,4838,7360,7733,7734,7770,7766] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.463,0.278]
select surf_pocket38, protein and id [2972,10112,10113,10127,9861,10104,3182,10088,3428,10086,10089,3209,3210] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.635,0.361]
select surf_pocket39, protein and id [7126,7024,7137,6966,7105,7130,7134,7163,7160] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.525,0.278]
select surf_pocket40, protein and id [10761,10763,5060,10633,10487,10488,10754,10616,10617,10622,10631,10632,10759,10755,10765,10768,11605,11606,11600,11608,5022,10618] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.718,0.361]
select surf_pocket41, protein and id [10430,10439,10656,10885,5104,5127,5138,5140,10440,10641,10884,5105,5128,5131,5070,5159,5164] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.592,0.278]
select surf_pocket42, protein and id [4990,4991,4992,4825,7537,4845,5729,5746,5541,7763,4989] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.800,0.361]
select surf_pocket43, protein and id [10830,11064,11043,10846,10283,10281,10282] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.655,0.278]
select surf_pocket44, protein and id [2981,2721,2722,2709,2956,2970,2971,2972,10127,2978,3207,3209,10123,10125,10929,10932,10912,2710,2708] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.882,0.361]
select surf_pocket45, protein and id [7686,7663,7615,7619,7854,7855,7607] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.678,0.702,0.278]
select surf_pocket46, protein and id [907,13258,13260,13256,905,702,13286,13287,5232,5269,5268,708,711] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.835,0.902,0.361]
select surf_pocket47, protein and id [6642,6736,6639,6640,6641,6618,6774,6751,6795,6796] 
set surface_color,  pcol47, surf_pocket47 
   
        
        deselect
        
        orient
        