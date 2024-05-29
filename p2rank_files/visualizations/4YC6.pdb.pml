
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
        
        load "data/4YC6.pdb", protein
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
 
        load "data/4YC6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1108,1107,1182,259,640,638,83,141,140,692,680,681,242,647,664,87,674,675,678,667,103,110,1059,101,102,1190,1081,1077,1091,1073] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [3617,3618,3619,4000,3010,3016,3019,3028,3029,3011,4013,4117,4034,4035,4109,3067,3068,3186,3594,3601,3602,3590,3600,3169,3564,3574,3013,3014,3037,4004,4006,4008,4018,3030,3031,2708,3565,3566] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [9854,9856,9862,9872,8871,8873,8882,8883,8922,8884,9038,9971,9040,9888,9889,9963,9421,9288,9037,8921,8868,9023,9442,9455,9459,9461,9462,9437,9448,9473,9456,8870,8864,8865,8867] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [1302,1307,1335,1336,1631,1632,1347,1348,1602,1603,1593,1300,1636,5273,5274,5276,5275,5285,5296,5253,703,5301,735,740,741,744,745,746,747,5302,5303,5304,5391,1558,705,734,736,5300,757,1586,1582,1583,773,1587,5277,5278,5279,5280,709,710,5630,707,5634] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [5956,6945,6927,6545,6544,6546,5957,5993,5995,5994,5941,6515,6517,6528,6529,6113,6961,6962,7036,7044,6111,6494,6496,6492,6501,6518,6521,6096,6491,5946,5948,5955,5937,5938,5940,6931,6935] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [10088,8206,9489,9490,9491,9864,8557,10339,9522,9525,9526,9527,9486,9488,10363,8561,9847,9846,9856,9858,9848,8201,8202,8204,8212,8230,8318,9528,10053,10078,10081,10083,10089,10116,10079,10117,10128,10129,10383,10384,10054,10412,10413] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [4262,4558,4559,4530,4509,2321,2326,2349,2351,2353,3637,2703,3636,3673,3632,3667,3671,3663,4199,4229,4234,4235,4259,4263,4275,4529,3634,3635,4485,3991,3992,3993,3665,3630,4563,4565,4227,2346,2347,2348,2350,2352,2464] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [7190,7202,7456,7457,7412,7436,7162,6937,7161,7186,7189,7490,7126,7156,7151,7152,7201,7486,11107,7154,11488,6562,6563,6564,11484,6561,6559,6590,6594,6598,6600,6599,11128,11129,11130,11131,11245,11132,11134,6601,6919] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [4202,5422,5441,5442,5774,4187,4188,5773,4567,4228,4573,5418,4576,4190,5745,5754,5757] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [7115,7117,8369,7155,8700,8681,8672,7494,7500,7503,8684,8349,8699,8368,8701,8345,7129,7113,7114] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [5937,5938,5940,6571,6573,5922,5924,11447,11449,11450,11451,11493,11413,6929,11489,6935,6517,6527,6528,6529,6530,6927,6545,6544,6546,6521,6962] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [4509,4516,4510,3672,3673,3674,3632,3667,3668,3671,3661,3662,2703,3636,2710,2358,2362,2369,2374,2347,2348,2350,2375,2376,2377,2464] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [4315,6163,4316,4367,4369,6162,4366,3954,3955,3958,3959,3952,3953,4397,4176,4284,4285,3966,4283] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [1439,1441,9089,9090,9086,1355,1356,1388,1389,1386,1358,1032,1028,1031,1440,1438,1357,1027,1468,1470,1249] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [8902,9967,9968,9971,8891,9872,9999,8903,9823,9840,9820,9803,9798,9995] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [7242,7243,3236,3235,7295,7212,6880,6881,6879,6882,6885,6886,7324,7103,7148,7210] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [10136,10138,10139,10169,9809,9812,10170,9807,9808,9816,9817,9820,9813,308,10219,10221,10223,309] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [3210,7513,8673,7511,7512,3211,7738,7240,7242,3236,7261,7730,3218,3224,3232] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [10265,10236,10243,10985,10996,11007,10974,10991,10994,9746,9724,9748,9719,9752] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [3194,3195,3520,3193,3519,3542,3521,8667,8665,2979,2980,8445,3495] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [4342,4746,4743,5094,5102,4794,4752,4760,4351,5100,5101] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [3037,3038,3048,3986,3966,3969,4004,4006,4008,4018,3030,3031,3032,4114,4117,3029,3049,4141,4145] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [4381,4382,4383,3894,5131,5137,5140,5142,3867,3892,5146,3865,3869,4411,5120,3898,5151,5152,5153] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [10408,10490,10493,10522,10523,10797,10388,10488,10795,10519,11146,11149] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [11272,10421,10430,11626,11627,11628,11293,11276,11295,11296,10056,10041,10082,10427,11611] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [10439,11600,283,284,10174,10188,10167,282,10657,291,10137,10169,10178,10438,10440] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [10597,10648,10606,10612,10613,10614,10620,10647,10646,10160,10196,10600,10955,10956,10205] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [9047,9048,8834,2591,9396,9349,2811,9049,9373,9374,9375] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [7190,7202,7412,6931,6937,7161,7201,6561,6929,6562,6563,6910,6920,6921,6919] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [1415,1867,1832,1833,1816,1825,2167,1379,1424,2173,2174,2175] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [1454,1455,1456,2204,2210,2213,2215,2216,2225,2226,938,942,965,967,971,940] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [4554,4639,4550,4636,4534,4941,4943,4665,4668,4669,4634,5295,5292] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [5906,5907,6120,6121,6122,6448,5740,5861,6422,6424,6469,6446,5518] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        