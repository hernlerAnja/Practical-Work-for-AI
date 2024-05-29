
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
        
        load "data/5ZZ4.pdb", protein
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
 
        load "data/5ZZ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11123,11101,10646,10737,11119,10618,10622,10605,10606,10607,10609,10621,10600,10644,10645,10589,10590,10592,10593,11115,11122,10632,10613,10625,10627,10752,10753,10754,11609,11635,11630,11631,11636,11637,11640,11608,11632,11610,11612,11096,11531,10614,11671,11516,11517,11518,11503,11532,11604,11148,11149,11141,11144,11140,10616,10601,11706,11481,11708,11709,11507] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [5212,5240,5241,4858,4855,4854,5190,5227,5226,4863,4862,4810,5313,5319,5321,4468,4469,4470,4453,4837,4833,4836,4328,4330,5317,5344,5318,5380,4295,4347,4348,4349,4296,4298,4299,4312,4315,4319,4321,4335,4325] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [1050,1145,1036,1045,1064,1065,1137,110,674,677,655,673,130,134,119,121,126,127,1168,282,281,628,629,630,265,111,165,166,167,113,114,648,652,634,148,139,146,681,682] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [8556,8669,8670,8554,8555,9445,9446,8888,8531,8506,8508,8515,8516,8502,8503,9038,9057,9031,9035,9039,8499,8500,9431,9549,9526,9523,9524,9525,9518,8519,8523,8528,8532,8535,8537,9417,9065,9064,9060,8655,9012,8667,8668,8654,8656] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [2250,3260,2248,2378,2379,2380,2269,2229,2223,2228,2236,2232,2241,2268,2212,2215,2216,2219,2221,2363,2722,3156,2727,2749,2745,2748,3236,3229,3234,3235,3237,3137,3142,3128,3157,2770,2774,2775,2767,2376] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [7317,7326,7331,7424,7426,7418,7423,6420,6407,6408,6412,6413,6416,6961,6964,6968,7345,7346,6943,6396,6942,6573,6916,6557,6453,6399,6452,6451,6397,6933,6939,6921,6400,6432,6434,7449,6574,6572,6439,6425] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [12357,12359,12361,12356,12358,12360,12325,12326,12355,12298,12323,12328,12329,12331,12332,12333,12334,12204,12218,12202,10216,10131,10135,10122,10136,10273,10274,10275,10278,10279,10277,10120,12299,10241,10243] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [5957,5720,5753,5755,5756,5757,5955,5831,5926,5790,5791,5946,5940,5931,5971,5974,5977,5802,5806,5808,5809,5774,5954,5956,5984,7989,7999,8000,8021,8022,7924,7938,8033,7939,7990,7969] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [3874,3634,3873,3875,3892,3690,3895,1714,1715,1737,1704,3899,3902,1748,3849,3844,3720,1652,1684,3724,3727,3737,3709,3749,1639,1653,1654,3670,3671,3688,3667,3714,3864,3708,3696] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [8178,8182,8183,8179,8181,8024,8025,8026,6012,6013,6014,8147,8145,8150,8151,8156,8118,8148,5919,5932,5930,5931,5942,6074,6076,6038,6040,6071,6073,6075,6070,6043,6044,6046,6048,6049,5917,8119,8120,8121] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [1754,1764,1755,1893,1894,1895,1859,1860,1889,1890,1891,1892,3837,3851,3988,3990,3835,1862,1863,1867,1868,1857,1835,1739,1741,1750,3986,3952,3954,3930,3932,3984,3985,3987,3989,3958,3962,3929,1940,1758,1865,1937] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [11005,10998,10999,11081,10896,10902,10903,10983,10849,11605,11611,11097,10968,11606,11619,11621,10966,11623,11622,11616,11634,11635] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [2609,2528,2723,2502,2522,2107,2632,2471,2631,2707,3236,3230,3231,2592,3248,3246,2593,2594,3260] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [1778,1546,1777,1779,1796,1799,3832,3810,3811,3800,1806,1638,1633,1628,1632,3750,3777,3778,3748,3780,1583,1582,1600,1604,1579,1581] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [5314,5315,4680,4697,5330,4811,5313,5320,4468,4469,4470,5325,5343,5344,4610,4796,4710,4711,4712,4719,4617,4795] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [9997,9927,10158,10160,10177,10019,10009,10013,9985,9981,9963,9962,12177,12178,12168,12167,10187,12147,12113,12115,12117] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [1204,1247,134,138,1014,1169,1170,1248,1011,1051,1142,1050,1141,148,146,1163,1164,1165,1168,282,1040] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [12242,12240,12005,12041,12042,12059,12038,12259,12262,12256,12092,12093,12094,12095,12063,10095,10085,10118,12269,10117] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [5422,5424,5349,5350,5485,5486,5175,5606,5607,5608,5417,5429,5427,5475,5477,5479,5348,5352,5432,5524] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [8997,8925,9013,8903,8761,8816,9535,9537,9525] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [4704,4706,4707,4708,4429,4431,4701,4702,4211,4432,4391,4392,4393,4394,4395,4396,4389,4390] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [5421,5423,5424,5349,5187,5190,5227,5226,5215,4320,5339,4330,5341,5344,5318,5340,5380,5345,5346,4315,4319] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [7453,7527,7537,7452,7584,7532,7534,7535,7695,7280,7454,7455,7529,7711,7283,7708,7710,7592,7593,7461,7456,7457,7459] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [6308,6551,6493,6807,6808,6810,6811,6492,6495,6498,6533,6535,6536,6534,6306,6499,6500] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [3106,3339,3131,2240,3340,3130,3141,3142,3143,3103,2236,2232,2237,3255,3256,3257,3296,3234,3233] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [11714,11872,11702,11763,11873,11467,11892,11893,11466,11707,11709,11770,11639,11716,11641] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [3386,3431,3764,3414,3415,3699,3694,3697,2791,2828,3430,3644,3133,3131,3132,3377,3376] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [1172,1173,1246,1248,999,1174,1176,1253,1251,1256,1432,1433,1434,1003,1311,1350,1304] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [7295,7528,7485,7450,7451,7529,7332,7331,7424,7422,7423,6420,6416,6421,6434,7449,7446,7445,7444] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [515,496,1144,630,1167,1154,1156,1138,1137,1139] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [6825,6665,6721,6717,6718,6716,6901,6802,6722,6803] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [8526,8519,8523,8537,9431,9523,9627,9554,9629,9522,9544,9545,9546,9550,9551,9585,9395,9432] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [7321,7623,7624,7320,7953,7954,7579,6985,7607,7608,7888,7896,7883] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [7915,7916,7917,7914,7877,7878,7879,7823,8062,8064,7860,7856,7859,5892,5893,5882,5881,5883,5914,8091,8093] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [214,241,243,244,242,213,220,525,527,523] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [6917,6788,7435,7437,6803,6786,7449,7425,6901,6902,7448,6716,7418,7419,7420] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [8661,8465,8467,8455,8448,8451] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        