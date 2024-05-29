
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
        
        load "data/6EIL.pdb", protein
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
 
        load "data/6EIL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2923,1127,2924,2925,2933,2896,2934,6562,3116,5631,5634,5636,5760,6598,6576,6543,6555,5758,6559,5762,6561,5706,5753,1061,1074,1007,6602,1062,2562,2559,2560,2561,3163,3166,3181,2593,2594,3167,3205,3207,5596,5597,2893,2897,3106,3112,3127,3145,3147,3148,3118,3173,3177,5648,2932,2547,6546,6547,5709,6580,862,566,561,564,551,540,1010,902] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8721,8720,8690,8150,8152,8151,8740,8746,8183,8184,8701,8718,972,8685,154,939,956,158,957,958,6155,156,6150,6144,8679,8683,27,102,105,8691,10,30,32,8750,8754,6668,6165,6168,6170,6466,8468,8469,8470,976,978,6666,6667,6669,8496,8497,8506,8507,8149,8233,6731,6679,6682,6506] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [12026,16917,16920,16922,12040,12044,12045,17420,17419,17421,17418,19474,19455,19470,19423,19413,19416,18933,12025,11226,16907,12024,11222,11224,11217,11097,11099,19418,11095,19425,19488,12007,12009,12011,11173,11193,11170,19240,19241,18901,18886,18898,18899,18900,19435,19452,19454,19469,19230,19203,19204,17218,17484,18932,18982,19231,19232,19236] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [13919,11634,13682,13936,13929,13933,13918,11929,11930,12796,11897,11635,11673,11674,11675,13716,12899,12953,12892,12872,11566,11564,11562,11579,12502,12793,12812,12841,12844,12863] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [19738,19740,19741,18749,3384,3385,3386,3370,4147,19734,19753,21484,21579,5301,5302,21581,21582,5274,4146,4094,19727,19728,19729,19754,19757,18748,18770,18822,18774,18775,3397,3419,3420,3422,3382,3383,5285,5286,19293,2986,3001,21578,21597,18693,21609,21636,21534] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [18982,19182,19185,19187,18964,19016,19015,19186,16962,16854,18110,17185,18147,17818,17819,18158,18129,19165,18216,18270,18161,18180,18148,19201,19202,19203,19204,19197,19198,17216,17217,17218,17483,18116,17214,18113,18115,17817,18114,18111,16961,16963,16850,16867,16873,16876,16851,16852,16923,16922] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7414,8265,8267,6102,6098,6171,6209,6210,6211,6115,6121,6123,8463,8467,8233,8451,8453,8215,6170,6465,6466,8468,8469,8470,7345,7348,7349,7350,7053,6464,8452,7344,7347,7363,6433,7381,7392,7397,7398,7395,7450] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [861,1757,1759,1760,606,1758,1754,1755,829,566,567,605,607,2676,2880,1824,2677,1860,2625,2878,2879,1773,498,494,495,511,1792,1805,1201,2890,2891,2643,2894,2895,2897,1128,2896] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [13599,13600,13601,13633,13668,14189,14170,11632,11634,13682,13935,13936,11930,11629,17314,16512,16514,14140,11625,17333,17334,17332,13972,13973,14128,12131,12133,12130,17313,17295,14132,14134,17350,17354,13962,13963,13964,13968] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [19691,19692,19293,2986,21502,21503,3419,3422,19693,20453,20454,5377,5378,5379,5380,5381,20449,20450,19677,2409,2483,3433,3434,3431,3429,3430,3446,3447,3450,2436,2354,2410,5408,5395,5396,19701,19702,19690,19703,19729,5302,19689,19704,19726,21500,2332] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [10794,10795,16129,16174,16177,13470,13522,13448,13449,8957,8958,16176,16191,16192,13371,14452,14025,14453,14441,14444,14449,14468,14469,14472,14455,14513,8970,8992,8995,8967,8955,8956] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [3072,6583,6582,2549,2932,3069,3132,2956,2955,3053,3008,3046,3001,3023,2999,3000,2515,3403,3404,2965,2998,3397] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [8571,8975,8574,8139,8529,8105,8581,8596,8619,8643,8645,8647,976,978,979,8138,8505,8506,8553,8703,8705,8718,8137,8977] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [11223,11225,16906,16897,16902,16903,16898,16881,17278,16879,12081,12082,16497,11208,11209,11990,16513,16496,16511,11618,11619] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [17314,16512,16514,14139,14140,14203,16383,16385,16387,16400,16510,14189,14170,14185,14188,14195,14199,14229,14227,14132,14134,16404,17313,17295,14128] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [1013,1014,921,922,5745,5744,138,141,550,547,549,6151,155,157,6154,6617,6618,6526,5761,6146] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [12668,12669,12672,12697,12698,12699,20549,11118,20550,20551,11133,19396,20494,20495,19417,20123,20124,20125,20492,20493,12673,12675,11154] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [1630,9759,9761,1631,1654,50,1635,1661,9390,9815,9816,9817,1637,84,86,63,65,9814,1660,8682] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [19710,19711,18854,19704,19239,19379,19381,19263,19315,19330,19353,19308,19305,19272,19287] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [9006,8992,8995,9000,9023,10776,10870,10871,10872,10874,9004,9002,9003,10889,7999,8000,10888,8559,10794] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [7999,15169,8000,8995,10870,10872,10873,10874,10889,16096,16085,16105,14444,16106,16109,14392,14405,14406,14407] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [12601,12603,12612,12209,12207,12208,12157,12160,12730,19356,12631,12636,12637,12638,19354] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [3089,3090,4186,7224,4187,4188,4242,4243,4244,3817,5651,5654,5666,5667,5669,3816,7249,3109,3111,7250,7220,7223,5688,5690,7248] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [14837,14838,14839,16421,15245,15256,16406,14840,18017,16442,18016,17987,17990,17991,15208,15210,15209,15207,14851] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [9006,8992,8995,9000,10776,10874,8559,14419,14025,14441,14444,10794,16106,16109] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [7281,7151,7153,6743,6744,3049,7187,7188,6693,6694,7282,6696,6634] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [2630,3206,3226,3204,3227,3637,3166,2629,1892,1894] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [6712,6711,8535,8626,8648,8647,8528,8529,1049,980,1048,1050] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [2141,2140,2223,2695,1925,1926,2771,2772,2794,2696,2736] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        