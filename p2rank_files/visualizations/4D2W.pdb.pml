
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
        
        load "data/4D2W.pdb", protein
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
 
        load "data/4D2W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3293,5365,3646,3659,3772,3675,3679,5332,5313,5330,5331,5364,5329,5316,5322,5326,3769,3771,5311,5312,3320,5302,5307,3273,2703,5314,3268,3677,3266,3267,3271,3281,3282,2962,2940,5337,5338,5339,5340,5334,5354,5355,2974,2964,3802,3618,3778,3780,2959,3793,2998,2999,3773,3774,3777,3779,2864,2865,2866,3241,3242,2753,2755,3107,3108,3106,2754,2849,2772,3246,3264,2702,3260,3274,2704,3648,3650,3651,3309,3310,3641,3642,3905,3311,5363,5361,5490,5790,5200,5202,5203,4121,5172,5173,5174,5504,5505,5506,5507,5789,3869,3635,5344,5500,5487,3617,3879,3880,3883,3875,3876,3877,3878,5190,5192,5778,5779,5780,5781,3888,3884,5788,3892,3896,5185,4148,4147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [7878,7879,721,7909,1074,1075,7880,1087,7888,7887,7890,8076,1063,8068,8074,8078,8079,1046,1241,7853,710,7856,7871,7874,718,1103,701,699,1245,7885,312,7886,367,180,389,217,688,690,686,692,694,695,702,150,7877,200,201,696,1102,1194,536,535,1183,1189,1192,1195,1200,1210,1202,1203,1225,390,1216,1217,7891,7892,7861,185,178,148,149,669,670,309,310,311,426,427,387,388,179,402,295,456,457,534,745,7912,7913,8035,8038,8365,8052,8055,8363,8364,7854,1076,1079] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6358,5880,5883,6236,6265,6264,6354,6356,6357,2706,2709,2712,2719,5372,5371,2713,2714,2715,5697,5863,5872,5875,5873,5861,5848,5850,5854,5856,5857,5858,2700,5319,5320,5321,5388,2914,2727,6224,6225,2912,2913,2722,2724,2725,2726,6249,5351,5552,5554,2721,2723,6365,6362,6363,6364,6410,6208,6241,2873,3200,2744,2747,6237,6238,2870,2696,2693,2694,2887,2888,2889,5481,5698,5831,5832,5466,5375,5376,5382,5482,5483,5588,5589,5350,5564] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [316,8800,172,173,628,8816,336,319,329,359,333,334,335,8474,8813,8476,8477,9027,9028,9035,9029,9031,9032,8815,25,626,627,619,353,616,617,618,36,8,9048,9036,9044,9380,9334,9040,6,192,194,8811,161,193,8938,8940,8128,8129,360,190,166,167,169,171,8937,8783,8962,8824,8030,8031,8932,8163,8139,8939,8123,8124,8953] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2567,2553,2578,2580,5900,5937,6241,3199,3200,5898,6439,6441,6663,6665,6231,6232,5930,6618,6620,5929,2890,2887,2888,3188,3189,3190,3191,2570,2889,6414,6417,6418,6426,6430,6664,2907,2550,2563,6691,2554,6646,6645,6647,6648,6225] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [8839,8931,8029,8030,8031,8929,8932,8933,8164,8431,8432,8436,8437,8438,8433,8272,7862,7866,7864,7868,7919,7920,8028,158,141,194,8455,8458,8811,8840,161,8940,140,142,160,145,151,152,155,159,8824,8937,131,136,139,8485,8446,8447,8448,8429,8014,8411,8273,8406,8407,7937,8027] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [676,677,678,679,2456,526,497,541,542,545,2484,2487,2455,2479,508,2077,2078,2079,2080,279,680,684,564,2488,274,2447,2452,2453,2449,2451,2427,2435,2423,562,1179,1159,1161,1131,1122,1139,1141] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1252,1265,1274,1249,1253,1261,1257,1078,1079,738,1069,1070,1276,8053,8054,8055,8364,8070,8071,8072,7718,7727,1528,1533,1574,7735,8353,8356,8354,8355,1063,8078,1248,1061] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [10280,8278,8301,8413,8414,8415,8416,8916,8299,8279,8282,9894,9897,9895,9896,8233,8234,8241,8242,8244,8245,8859,8865,8876,8878,7993,10277,10311,10312,10303,8417,8420,8421,8868,7998,8896,8895,10247,10248,10251,10273,10275] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [8512,8504,1,6,9288,9290,9264,7,8,68,30,29,4,44,8507,8501,8523,8806,8807,8815,8473,8475,8816] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5107,3134,3136,2828,5075,5104,5106,5072,5074,4697,4698,4699,5098,2833,3248,3249,3250,3251,3756,3079,3080,3255,3252,3256,3700,3704,3707,3696,3697,3699,3713,3714,3716,3718,3736,3259,3113,3114,3117,4696,5042,5068,5070,5043,5046,3735] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5839,5840,5841,6341,7240,7241,7618,7650,7649,7641,7648,5670,7242,5450,5726,5846,5838,5451,5445,7585,7589,7239,7613,7608,7614,7615,7611,7609,7597,5724,5703,5659,5707,5704,6284,6292,6301,6303,5669,6321,5849] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6724,6721,6723,6743,8612,8620,8651,6720,6744,8445,8849,8851,8884,8885,8886,8887,8888,8889,8897,8898,8899,6483,6719,8494,8495,8496] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8257,8259,8648,8671,8672,9841,9846,9850,9826,9847,9843,6488,6489,6493,9827,8258,8897,8898,8636,8639,8640,8612,8610,8651,8634,8635,8644,8249,8246] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [7973,7974,10022,10024,10041,10211,10212,10033,10035,10039,10000,10360,10037,10204,10230,10199,10202,10205,10229,10231,10206,10209] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2217,2218,2375,2378,2380,2381,2382,2385,2388,2205,2207,2216,2405,2406,2370,84] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4994,4997,5000,4837,4835,4834,4836,4899,4832,4833,4856,4898,5001,5004,5006,5007,4924] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [902,1987,1989,1990,2009,2010,2008,875,873,1161,876] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        