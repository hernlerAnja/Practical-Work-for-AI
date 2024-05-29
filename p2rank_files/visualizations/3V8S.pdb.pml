
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
        
        load "data/3V8S.pdb", protein
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
 
        load "data/3V8S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7116,7117,7229,7061,7063,8081,7517,9377,9372,9374,9376,7715,8082,7664,7516,7716,8054,8055,8058,7059,9381,7070,7065,7066,7068,8163,8164,8165,7118,7245,7246,7668,7686,7691] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [11393,10345,10346,10347,10287,10294,10893,10290,10292,11392,11394,10288,12601,11283,10944,12605,10915,12603,11310,11311,11386,10943,10945,10745,10892,10458,10897] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [1639,1641,1273,1275,1613,1614,2931,2933,1274,2920,1222,1640,1716,1723,1724,1223,675,676,677,629,630,638,1250,1249,1227,1239,1245,788,1220,1075,618,624,2936,2940,2941,622,625,627] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [4842,4868,4869,4870,4945,4854,4952,4953,4503,4843,3859,4846,3849,3851,6160,6162,6164,3846,3847,3853,3856,3858,4474,3905,3904,4452,3906,4456,4017,4451] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [743,744,764,718,720,722,532,762,781,782,3257,3258,3261,3262,3264,525,526,529,509,515,736,737,721,562,561,3243,3246,3250,3254,3253,3245,3266,3209,3210,3211,3195,1115,1113,1114] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [6418,3403,3404,6421,6423,6425,6440,6439,6438,3327,3329,95,96,3396,3395,3321,3425,31,59,61,62,3748,36,34,3738,3744,3754,69,72,24,60,93] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [656,821,651,654,630,638,639,641,805,970,971,1721,1722,1723,802,803,804,1602,1614,924,926,928,925,658,660,661,1624,1720,1586,1745,1746,923,1737,1738,1739,905] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [9832,9836,9844,9845,12862,12864,12866,6472,6502,6503,6506,6511,6475,6477,6460,6461,9768,9828,9762,12860,6478,6479,6536,6537,6512,6507,9837,12879,12880,12881,9772,10191,9866,6505,10189,10185,10195,10179] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [7095,7097,8186,8308,8309,8310,8311,8318,7099,7080,7082,7092,7347,7366,7101,7102,7103,7104,7105,7106,7118,7243,7244,7245,7246,7411,8160,8161,8178,7071,7079,8163,8164,8162,8065,8027,8042,8043,7367,7365,8180,7412,7262] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [10326,10575,10592,10593,10594,10596,10324,10317,10328,10309,10316,10491,11407,11408,11406,11391,11295,11392,11394,10473,10474,10475,11393,11409,10640,11528,11416,11256,11255,11523] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [6960,9732,9741,9765,9701,9708,6607,6608,6615,6603,6533,6539,6541,6616,9631,9652,9636,9705,9707,9739,6609,6614,6599,6600,6602,6962] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [105,3300,3331,3332,94,96,3322,166,167,3324,92,162,168,159,3266,3267,3211,175,3189,174,3190,3193,3195,173,3291,521,509,515,3260,3258,3261,3264,3294,3295,3298,196,100,158,161,120,121] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [6478,6479,10202,6465,6448,6449,6450,6464,10390,10391,10392,10414,10783,10784,10785,10450,10452,10388,10413,10769,10771,10772,6476,6442,10773,12871,10434,10774,10432,6466] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [4153,4050,3876,3880,3883,3885,4152,4155,4033,4034,4199,4200,4965,4966,4949,3868,3869,3870,4950,4814,4975,5095,5087,4135,4967,4968,5082,5083,4815,4032] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [9634,9702,9705,9707,6966,6970,6973,9631,9632,6950,9691,6958,9694,9695,7002,7003,7004,6957,6967,7554,7555,7556,7223,7161,7159,7162,7163,7177,7178,7184,7185,9687] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [6211,6231,6254,6212,6213,6214,3879,4082,4085,4042,3897,3898,3899,3887,3888,6238,6244,4056,4070,6246,6249,4406,4408,4055,4083,3874,6230,6243,6245,6227] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [12776,12779,12710,10827,12712,12788,10823,10824,9919,9934,9922,12768,12702,12707,12697,9960,9962,12734,12735,9947,12765] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [950,980,988,989,126,990,948,949,944,945,946,947,119,125,124,1020,135,143,146,3641,3643,952,3153,3155,181] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [6587,10083,10084,7389,7390,7393,9594,7385,7387,7386,7388,7391,6560,6565,6569,7421,7430,7431,7461,7463,6567,6576,6580,6584,6566,6602,9596,9611,6622] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [3478,3519,3521,3493,6269,6271,6276,6261,6265,6266,6293,6294,4383,3479,3481,6347,4382,6256,6262,4392,6324,6335,6338,4386,4395] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [3993,4344,4009,4011,4343,3949,3951,3947,3792,35,3758,37,3738,3754,3755,1,6,7,9,23,24,3965,25,3791,3972,3973,3950,4342,6430] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [10315,12655,12672,12652,12653,12654,10523,10524,10511,10526,10496,10497,12683,12684,12686,12695,10339,10330,10337,10338,10340,10319,10328,10329,10847,10848,10849,10480,10483] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [264,3118,3104,3106,3109,1153,250,838,841,843,830,832,837,249,290,292,3064,3047,3050,1154,1157,3032,3034,3037,3039,1163,3105,869,870,871] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [10619,10617,10620,10614,10616,10621,10622,12825,10648,10650,12840,10613,6853,9813,9814,9815,9816,6869,9809,6854,6856,9795,9796,9794,9805,9789,10653,10654,10657,10658,10659,10690] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [6382,6384,412,413,4179,4181,4174,4176,415,3348,3354,3355,3410,4209,4249,4172,4213,4216,4217,4218,4173,3364,3363,3367,3372,426,428,3373,3374,3375] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [9478,9481,9559,9483,6689,6690,6731,6733,6705,9477,9488,9550,9505,6691,6693,7595,7598,7594,9497] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [3774,3775,4378,3820,3914,3915,6245,4024,3797,3929,6203,6204,6206,3796,4042,3899,6211,4428,4405,4407,4408,4426] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [2982,2984,3013,3017,686,2977,669,670,1178,1179,3014,3015,3016,3020,2978,2979,658,659,667,668,634,826,827,1177,853,813,649] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [7075,7109,7110,7111,7100,7101,7102,7108,7254,7618,7620,7251,7086,7090,7099,7085,9462,9463,7267,7268,9425,9457] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [10848,10849,10483,10867,10340,10356,10355,10261,10465,10216,10238,10215,10237] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [6985,6986,6987,7032,7126,7008,7236,7254,7127] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [10960,11286,11287,11817,10959,10955,11572,11573,11816,11858,11853,11857,11851,11559,11560,11561,11562,11884,11886] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [6649,6650,6651,9880,9908,9877,9878,10062,9886,9855,9853,6655,6648,6620] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        