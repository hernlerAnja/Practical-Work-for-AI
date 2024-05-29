
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
        
        load "data/4D2T.pdb", protein
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
 
        load "data/4D2T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2893,2894,6218,6233,6236,2752,5877,6413,6412,6227,6226,2916,2917,2918,6220,6232,2730,5876,5878,2590,6665,2572,2573,3203,3204,6435,6436,6664,6666,2601,5893,5895,5897,5932,5925,5922,5924,2909,2911,6417,6421,2910,3192,3193,3194,3195,6737,6425,6717,6620,6619,6621,6691,2571,6649,6647,6648,6646,2881,2887,2891,2874,2748,2750,2926,2736,2877] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1063,1075,1076,1079,8032,8034,8057,736,738,739,740,8033,8335,719,720,721,7892,7888,8014,7867,7871,8017,8343,8344,8027,8031,8058,7890,7891,7908,1061,1280,1258,1266,1270,1257,1262,765,768,1069,1070,1465,1281,7719,1535,1540,1581,775,7726,7728,7730,7716,7717,8332,8333,1463,1464,1490,1491,1492,1493,1503,1508,1510,1509,767] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [1192,1194,1087,1195,1201,1202,1203,1189,1200,1046,688,694,695,696,699,701,692,1102,1103,146,7856,7857,7859,184,185,7864,7865,182,149,148,217,147,150,1183,674,536,667,669,670,427,456,425,426,388,389,534,1210,457,200,201,293,294,295,310,311,312,402,178,364,686,713,718,721,748,745,1063,1074,7838,7858,7867,8058,3854,3859,710,707,708,7826,7829,7834,7837] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [5477,5478,5367,5843,5849,5851,5853,5831,5545,5547,5549,6358,6359,6357,6353,5584,6349,6351,5693,5476,5582,5583,5614,5826,5827,5559,5824,5461,5691,5875,5876,5878,6231,6259,6260,6352,5867,5852,5856,6244,6360,2730,2732,5312,5365,5366,5314,5316,5383,2737,5351,5344,5346,2723,2728,2729,2731,2735,2736] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [8390,8818,8412,8909,8385,8386,8912,8913,8141,8142,8143,7993,7845,7846,7848,7898,7899,8008,8009,8010,8404,8414,8415,8416,8417,8408,8410,8411,7847,7915,8425,8819,8426,8434,8437,8790,8910,8916,8917,8919,159,161,160,7844,7850,158,139,8899,8905,8928,8926,8252,8172,8171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [5698,5702,5699,5834,5835,7243,7241,7242,7642,7616,7619,7618,5445,5440,5442,7650,7651,5720,5721,5833,5719,7586,7609,7610,7611,7615,7590,7614,7598,6277,6279,6335,6336,5664,5836,6278,6287,6296,6298,6288,5665,5841,5844,6315,6316] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [3679,3768,3770,3771,3677,3678,3277,3271,3276,3285,3286,2721,5324,2717,2719,3776,3777,3778,3772,2757,2758,2759,2775,2853,3262,3264,3275,3250,3268,3270,3274,3112,3272,2718,2743,2868,2869,2870,3245,3002,3246,3003,5327,3297,3650,3294,5323,5325,5326,3289] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [276,279,687,1131,676,684,677,678,679,274,507,1179,2086,2087,508,2486,2085,2460,2462,2453,2454,2430,2455,2456,2458,2459,2463,2434,2084,2442,562,563,564,2494,2492,526,497,541,545,542,683,1122,1139,1141,1129,1130] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [3316,3882,3895,3314,3655,3902,3904,3906,4074,4075,4076,3312,3309,3351,3346,3341,3343,3344,3883,3887,3891,5167,5171,4120,4146,4121,4105,4114,4119,5172,4101,4102,4104,4107,4192,3654,3645,3646] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [3084,3253,3254,3255,5074,3073,4696,4697,4698,3715,3717,5103,2837,3138,3140,3252,3256,3260,3707,5105,5106,2832,3117,3118,3121,5041,5053,5070,5071,5073,5097,5045,3102,3754,3755,3083,3698,3735] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [30,31,70,32,115,1,2,33,35,7,8,8795,8449,8452,8456,8454,8491,68,8492,8486,8489,8481,8483,9237,9263,9265,9268,9275,9031,9032,9282,9280,9281,8484,8785,8786] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [8242,8392,8394,8395,8895,8257,8261,8213,8223,9858,8221,8224,8854,8847,8856,8858,8838,8258,8278,8280,10164,10168,10193,10194,10197,9857,9859,10226,10229,10220,10188,10190,8874,8875,7972,7977,10176,8400,8396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [8779,9008,628,336,210,8453,8792,8795,8456,8454,194,193,191,334,335,1,35,36,7,8,627,8436,8437,8791,161,169] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [8910,8916,8917,8918,8108,8919,8803,8790,159,161,160,158,162,163,7876,7878,8083,8779,8912,8913,8142,8143,8932,8103,8102,8104,8009,8010,7877,8118] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8876,8877,8629,6475,6484,6493,9789,9788,8238,8650,9808,9805,9809,8237,9851,9812,8224,8225,8228,9850,8615,8613,8614,9803,8618,8619,9799,8627,8628,8589,6491,9768,8591] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5784,5785,5358,5198,5360,3316,3882,3314,3655,5499,5501,5184,5775,5180,5196,5167,3637,3639,5335,5359] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [8864,8866,6716,8828,6720,6721,6722,6725,8863,8825,8827,8830,6715,8471,8473,8475,8424] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [619,353,616,9333,9336,9332,9312,5,6,8,25,627,9307,9008,628,9009,9013,9016,9017,9353] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [2918,6203,6220,6244,6360,6352,5549,6358,6359,6357,5477,5478,2735,2738,2737,5351] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2941,2942,2943,2739,2964,2968,3792,3776,3777,3778,3779,3771,2743,2962,2978,2869,2870,2963,5329] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [30,31,70,32,34,115,1,33,35,36,8456,8491,68,113,8492,8489] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [6055,6091,6068,6071,6318,6319,5678,5679,6317,6092,5666,5669,5677,7192,7193,7196,5665,7235,6030,6032] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3622,3663,3639,5328,5329,5330,5332,5327,3651,2968,3777,3779] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [7951,7952,9984,9986,9995,9997,10115,10119,10121,10147,10116,10114,10122,10146,7780] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [7568,7569,7381,7544,7545,7550,7348,7380,7538,7541,7368,7370] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [9961,10054,9960,10052,10129,10026,9993,9992,10128,9994] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        