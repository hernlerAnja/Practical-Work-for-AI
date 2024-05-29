
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
        
        load "data/6LF3.pdb", protein
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
 
        load "data/6LF3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [15798,15800,12530,12562,12563,15796,15797,15799,15795,11807,11808,11809,11811,11810,11843,11845,11671,11672,12529,12531,12532,12533,16819,11681,16795,16797,11648,11654,11655,11647,12549,12550,12551,16703,12546,12547,16780,16781,16782,16784,12548,12545,11818,11835,11836,16779,16783,16777,16778,12539,11436,11447,11438,15944,11423,11425,11426,11435,11801,12194,15948,15947,12197,11814] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [2618,3318,3339,3311,3312,3313,3315,3305,2616,3340,4054,4052,4067,4049,4050,4051,4053,4055,2617,2619,2620,2621,2614,2615,2589,2592,4035,4036,4037,2656,3173,3175,3176,3316,3152,3185,3349,4065,4011,4034,4043,2632,2634,3151,2942,2923,2951,3296,1784,1632,1633,1634,1635,1636,2930,2929,2540,2009,3701,2025,3322] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [8609,8595,8597,8598,8602,8606,8596,8982,8983,8842,8843,9016,8818,8824,8826,8819,8618,9368,7460,7461,8978,8980,8985,8989,8981,8979,9014,9719,9716,9717,9733,9734,9703,9710,9711,8290,8291,8292,9720,9721,9722,9718,8294,8295,9005,9006,9007,9678,7308,9704,9701,9702,8308,8332,8852,8310,7310,7312,7321,7309,7311,7313] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [337,478,320,321,338,313,311,85,113,101,89,91,92,104,1196,1197,1198,1199,4619,4620,4622,4475,4476,1227,1229,4470,4471,4472,4473,4474,1173,82,467,4863,458,863,480,473,476,474,475,477,335,509,511,5472,1211,1212,1213,1214,1215,1216,1217,1207,5470,5494,5454,5456,5457,5453,5458,5459,5378,5452,484,501,502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.396,0.902]
select surf_pocket5, protein and id [14640,14499,14500,14501,14510,14674,14638,14639,14641,14476,14477,13874,13949,13950,13951,13952,13953,13955,14665,13948,14643,14647,14664,14637,14672,13967,13968,13923,13925,14630,15377,15379,15380,14276,15026,14267,15375,15376,15378,14255,14252,14254,13359,14248,14264,14273,13118,13119,15391,15336,15374,15359,15360,15361,15392,12969,12966,12967,12968,15362,13990,13966] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.286,0.278,0.702]
select surf_pocket6, protein and id [5789,6152,6153,6154,5767,5768,5778,6872,6873,6875,6871,6874,6881,6882,11161,10289,5777,5780,6849,6904,6905,10140,10137,10138,10141,10142,10139,6160,6149,6150,6151,6156,11045,6178,11121,11123,11124,11126,11122,11125,11119,11120,6539,10290,6891,6892,6893,6887,6888,6889,6890,6013,6011,5997,6014,6023,11137,6185,6187] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.416,0.361,0.902]
select surf_pocket7, protein and id [8207,8212,8229,7057,8230,9276,7055,8238,9286,9849,9847,7039,7040,9850,9852,7041,7044,7058,7048,7052,8199,8200,9240,8231,9260,9280,9851,7035,7036,7037,7038,9241,9242,9244] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.357,0.278,0.702]
select surf_pocket8, protein and id [13703,14851,14853,13649,13654,14850,14852,14854,13836,13802,13803,13650,13805,14869,14871,14873,15018,13734,13737,13705,13708,13707,13712,3912,13782] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.506,0.361,0.902]
select surf_pocket9, protein and id [9212,9214,9210,9209,7682,9213,8167,8168,8169,9211,8201,8205,8171,9215,8178,8147,8175,8176] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.427,0.278,0.702]
select surf_pocket10, protein and id [735,736,737,739,741,755,5391,5392,5393,5386,5400,4197,4200,4217,4219,4220,5380,1346,1347,1344,5369,5374] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.596,0.361,0.902]
select surf_pocket11, protein and id [6363,6365,6367,6364,6366,10976,9165,9166,9167,11005,11007,6362,6382,6384,6386,8021,10874,10876,10973,10974,10821,10908,10825,10820] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.498,0.278,0.702]
select surf_pocket12, protein and id [11058,11041,9886,11053,11059,9887,7020,9884,6416,6410,6411,6431,6415,6412,6413,6451,11067,11033,11036,7022,7023,9867] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.686,0.361,0.902]
select surf_pocket13, protein and id [12696,12691,13887,13888,13889,14918,14932,14919,14927,14938,14866,14898,14899,14900,14902,14903,14904,13858,15504,15505,15507,15509,15510,13856,13857,13864,13862,13865,12714,12716,13870,13876,13882,15508,12713,12715,13896] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.569,0.278,0.702]
select surf_pocket14, protein and id [8021,9192,9194,9193,9195,9196,9212,9214,9203,9204,9215,8001,9222,9360,7996,8045,8047,7992,8147,10850,6375,6374] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.776,0.361,0.902]
select surf_pocket15, protein and id [16478,12043,12044,12187,12189,16479,16634,12041,13679,12022,12024,16483,12021,12023,12025,16532,16533,16534,16544] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.639,0.278,0.702]
select surf_pocket16, protein and id [16688,16169,16656,16655,16692,16694,16695,16658,16662,12043,12044,16634,12039,12040,12042,12188,12038,12041,16665] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.867,0.361,0.902]
select surf_pocket17, protein and id [10951,10903,10770,10771,10802,10309,10340,10767,10803,10890,10925,10922,10941,15246,10751,10777,10867] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.690]
select surf_pocket18, protein and id [16716,16717,15542,15544,16711,16699,15545,12676,12677,12679,12680,12681,15525,12077,12068,12074,12075,12070,16694,12089,12069] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.843]
select surf_pocket19, protein and id [1818,1819,2291,6665,6666,6664,2292,6704,2964,2966,2972,2973,2974,2975,2281,2282,6640,6639,6643,2934,6705,6703,6647,6652,6662] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.620]
select surf_pocket20, protein and id [4174,1998,2521,2000,2547,4150,4158,2546,1380,1980,4083,4086,4116,4137,4142,2520,1996,2528,1977,1978,2523,2522,4179] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.753]
select surf_pocket21, protein and id [16691,16161,16163,16683,12579,16140,15543,16684,12675,16685,16686,16687,12654,12635,12638,12646,12582,12633,12671] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.549]
select surf_pocket22, protein and id [2469,2468,2471,3548,3526,3546,3525,2400,2403,2316,2370,2372,2371,2369,2320,3527,3528,3529] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.663]
select surf_pocket23, protein and id [7941,7938,7942,8074,8096,8122,7478,7480,7973,7974,8112,8093,7511] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.478]
select surf_pocket24, protein and id [8197,8199,7674,9809,7056,9825,9846,7654,7656,8196,9841,8223,7676,9821,9817,9822,7653,9783,9804,9806] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.573]
select surf_pocket25, protein and id [3573,3574,1362,4183,4184,4185,2524,2531,4182,2542,2548,1379,1381,1382,2562,2554,2528,3579,2536,3593] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.408]
select surf_pocket26, protein and id [6977,6980,6981,6983,7010,11025,11033,11028,11026,6996,7013,9885,7017,6993,6988,7005,10485,6921,6924,6954,10503,10505,6975,6992] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.482]
select surf_pocket27, protein and id [9016,8838,8877,8878,9015,9011,9035,9044,9046,9036,9037,8268,8269,8309,8241,8243] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.337]
select surf_pocket28, protein and id [5104,5100,5110,5136,5274,5106,4673,5236,5255,5258,5084] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.388]
select surf_pocket29, protein and id [1853,1839,6584,10393,10390,10402,6586,6604,10387,1692,1844,1847,1848,1849,6632] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.290,0.278]
select surf_pocket30, protein and id [2417,2420,2446,2297,2398,2298,2266,2262,2268,2272,2362,2436] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.420,0.361]
select surf_pocket31, protein and id [2633,3171,3182,3349,3210,3211,3368,3369,3370,2592,2593,2567,3344,3348,3379] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.361,0.278]
select surf_pocket32, protein and id [6217,6182,6206,6207,6208,6048,6186,6187,11072,11097,11098,6009,6049,11138,6240] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.510,0.361]
select surf_pocket33, protein and id [688,689,691,708,710,5241,5207,5209,5153,5154,5309,5307,690] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.431,0.278]
select surf_pocket34, protein and id [11005,11006,11004,10996,10997,11000,10976,11037,11034,6382,6384,6385,6386,6380,6381,6383,10998,10511,10512] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.600,0.361]
select surf_pocket35, protein and id [16561,16435,16548,16429,16460,16599,16425,16461,15998,16609,16583,16580] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.502,0.278]
select surf_pocket36, protein and id [3547,3548,3542,3543,3544,3545,2491,2492,2495,2499,2471,2531,2525,2529,2532,2493,2006] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.690,0.361]
select surf_pocket37, protein and id [13596,13600,13606,13602,13732,13754,13770,13632,13751,13169] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.573,0.278]
select surf_pocket38, protein and id [531,539,532,564,506,530,5405,5430,5431,541,372,373,510,511,5471] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.780,0.361]
select surf_pocket39, protein and id [13340,13826,14870,14872,15017,13804,13827,13805,13859,13863] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.643,0.278]
select surf_pocket40, protein and id [3960,3954,3955,3956,3936,13759,15091,13760,13206,13219,13222,13767] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.871,0.361]
select surf_pocket41, protein and id [11840,11864,11865,11866,11873,11875,16756,16755,11838,11843,11844,11845,11706,11707,11898,11832,16730] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.686,0.702,0.278]
select surf_pocket42, protein and id [2026,2307,2193,3680,3301,2192,2258,2257,2922,2986] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.835,0.902,0.361]
select surf_pocket43, protein and id [7268,7272,7275,7294,9657,7252,7253,7261,9605,9638,7244,9658,9659,7328,9604,9637,7393] 
set surface_color,  pcol43, surf_pocket43 
   
        
        deselect
        
        orient
        