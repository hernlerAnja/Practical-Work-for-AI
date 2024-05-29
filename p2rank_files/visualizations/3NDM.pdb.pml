
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
        
        load "data/3NDM.pdb", protein
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
 
        load "data/3NDM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6997,7001,7052,7053,7054,6995,6999,7165,9101,7650,7652,9103,9105,9112,7004,7007,7990,7991,7994,7649,8093,8017,8101,7180,8092,7599,7600,7604] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [702,1604,655,664,1602,1605,1608,1298,1299,1297,1300,1314,828,829,700,701,1248,1631,1632,1247,813,1270,1274,643,645,647,2878,2880,2883,649,652,2890,1266,1273,1615,1705,1706,1707,1715] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.482,0.902]
select surf_pocket3, protein and id [3764,3767,3769,3770,3758,6076,4864,4764,4753,4412,4413,4414,4780,4781,6072,6073,6074,6075,4856,4415,6083,3945,4855,3817,3943,3816,3928,4362,4363,3762,4367,4379,4216,4215,3944] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [11113,11032,11107,11108,11116,10021,10022,10030,10031,10195,10614,10615,11016,10665,11005,10667,10664,11033,10016,10019,10069,10010,10014,10068,12325,12327,10619,10637,10642,10666,10180] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.392,0.902]
select surf_pocket5, protein and id [745,768,769,786,789,807,3138,3140,746,747,3139,3148,3165,586,587,588,3177,3178,3109,557,1138,1139,1140,3124,3175,3176,551,554,555,3107] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.290,0.278,0.702]
select surf_pocket6, protein and id [7532,7533,6629,6631,7534,9287,6626,6666,6668,9205,9215,9216,9221,9225,6641,6669,9278,6667,6655,7540,9199,9202,7530,9207,9208,9206,9227,5123,5126,4970,5141,5143] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.424,0.361,0.902]
select surf_pocket7, protein and id [1577,1593,679,949,951,952,948,950,681,682,947,1730,1737,1856,830,1615,1713,1714,1715,1727,1728,1736,655,664,829,672,676,667,671] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.365,0.278,0.702]
select surf_pocket8, protein and id [9362,9426,9427,9428,9429,9451,9453,9454,9457,9458,9463,9421,9423,9464,9364,9365,6551,6552,6536,6537,6535,6539,6543,6544,6469,6475,6477,6479,9487,9358,9359,9379,6498,9416,6886,9420,9417,6909,9390] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.514,0.361,0.902]
select surf_pocket9, protein and id [6472,9558,9559,9566,9567,9492,12581,6410,6412,12582,6414,12599,12585,6447,6448,6449,6408,6438,6439] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.435,0.278,0.702]
select surf_pocket10, protein and id [10048,10049,10297,10046,10298,10315,10317,10318,11131,11138,10316,11130,11128,11129,10034,10038,10039,10050,10054,10021,10022,10030,10031,10197,11115,11114,11116,10213,10194,10195,10196,10978,11016,10056,10069,10055] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.608,0.361,0.902]
select surf_pocket11, protein and id [4863,4726,4742,4864,4764,4862,4741,3769,3770,3778,3779,4879,4886,3782,3786,5010,4757,4065,3794,3796,3797,4064,4066,3791,3944,3961,3787,3798,3800,3802,3804,3945,3817,3942,4062,4063,4877,4043,4046] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.510,0.278,0.702]
select surf_pocket12, protein and id [7198,7301,7303,8101,8099,8100,7181,7182,7028,7031,7033,8114,7283,8116,7006,7007,7015,7016,7054,7035,7019,7024] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.698,0.361,0.902]
select surf_pocket13, protein and id [3314,3315,6333,6335,3306,3307,121,118,120,96,6330,60,62,88,87,3336] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.580,0.278,0.702]
select surf_pocket14, protein and id [7638,7640,9090,9093,7712,7714,9005,9014,9015,9019,9020,9009,9010,7674,7671,7702,7677,7680,7682,7648,8025,8051,9002,9003,9004] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.792,0.361,0.902]
select surf_pocket15, protein and id [4084,438,4085,4086,4087,4090,4092,4083,3275,3279,6293,6295,6310,4127,4128,4130,4129,3259,3264,3265,3301,4120,6318,6320,4102,3283,3266,3284,3285,3286,3282] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.651,0.278,0.702]
select surf_pocket16, protein and id [7339,7324,7325,7326,7328,7321,7322,7323,7320,7327,7329,7357,7365,7366,6496,9820,9324,9317,9322,6515,6516,6518,6523,6558,6511,6512,9805,6520,6521,6522,6502,6503,7367] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.886,0.361,0.902]
select surf_pocket17, protein and id [9535,10381,9518,10382,10372,9511,10335,9520,9516,10412,10414,6790,10337,12540,10336,10342,10344,12545,12547,9531,9533,9573,9527,6789,9536,9538,9537] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.675]
select surf_pocket18, protein and id [3202,3203,3174,3175,3176,3112,3211,3212,3177,3178,3110,3124,533,534,3235,3123,221,191,199,200,3107,3106] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.824]
select surf_pocket19, protein and id [10689,10655,12313,10692,10717,11040,10653,12242,10729,10731,12228,12316,12233,12238,12244,12248,10663,10697] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.604]
select surf_pocket20, protein and id [7845,8751,8752,8753,8783,8750,8842,8846,7844,8859,8861,8928,8853,8925,8926,8782,8747,8834] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.729]
select surf_pocket21, protein and id [3404,4295,4297,3392,3389,3390,4294,3394,6196,6198,3430,3431,3432,6177,6178,6179,6180,6186,6187,6173,6176,6246,6249,6258,4293,4303,4304] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.533]
select surf_pocket22, protein and id [3552,169,170,171,987,3072,975,977,1013,1014,969,970,972,3070,3071,3553,3554,1003,159,160,1005,144,1045,163,164,151,168] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.639]
select surf_pocket23, protein and id [8285,8286,8276,8277,8282,8287,7952,7953,8215,8216,8199,8214,8310,8275,7934,8349,8348,7951,8196,8813,8324,8341,8342,8343,7949] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.459]
select surf_pocket24, protein and id [317,277,1179,1182,1178,3035,2955,2956,315,316,2953,2954,2964,2957,289,3026] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.545]
select surf_pocket25, protein and id [4289,3826,3953,3686,4338,4339,3936,6132,3729,3685,3725,3707,4315,4317,4319,4305,6136,6131,6133,6134,3825,3810,6130,6135] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.388]
select surf_pocket26, protein and id [12501,12448,12439,9656,12498,12507,12510,10545,10546,12508,12425,12429,12430,12428,12431,9641,9681,9683,9684,9644,10549] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.451]
select surf_pocket27, protein and id [1286,1287,1288,2871,2783,2799,2785,2787,2792,1351,1353,1322,1325,1328,1296,1330,1639,2780,2782,1637,2781] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.318]
select surf_pocket28, protein and id [4283,3632,4266,4276,3658,3660,3661,4286,3630,3668,3674,3677,3682,3631,3628,3344,3662,6312,4289,3363,3364,3365,3395,3396,3633] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.361]
select surf_pocket29, protein and id [2357,2366,2361,2350,2351,2352,2141,2430,2344,2403,2405,2342,2133,2131,2365,2369,2397,2372] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.318,0.278]
select surf_pocket30, protein and id [7552,7554,7555,7556,6923,7190,7526,7173,6922,6945,7045,7047,7061,7062,7063,7046,9150,9164,9165,6944,6966,6968,6967] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.451,0.361]
select surf_pocket31, protein and id [4443,4445,4440,5976,4411,4437,4788,6064,5981,5990,5991,5992,6063,4403,6062,4477,4479] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.388,0.278]
select surf_pocket32, protein and id [1327,1333,1336,1337,1331,1376,1382,1421,2134,2122,1354,1390,1419,2124,2125] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.545,0.361]
select surf_pocket33, protein and id [3790,3799,3966,3967,3789,3798,3800,3801,3810,6135,6124,6144,6152,6153,6156,6137,6139,6148,3993,4318,4319,6136,3785] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.459,0.278]
select surf_pocket34, protein and id [7044,7047,7036,7038,7026,7027,7035,9182,7022,7555,7556,7190,9181,7553,7203,7204,9150,9164,9165] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.639,0.361]
select surf_pocket35, protein and id [12596,10490,10506,10507,6376,10135,10153,10156,10112,12598,10173,10491,10492,10493,10494,10495,10496,10172,10174,12593] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.533,0.278]
select surf_pocket36, protein and id [11282,11008,11294,10682,11009,11269,11283,11284,11606,11608,11581,11538,11539,11568,11575] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.729,0.361]
select surf_pocket37, protein and id [1174,710,711,838,1223,1224,1200,1202,571,821,570,611,614,592] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.604,0.278]
select surf_pocket38, protein and id [7475,7492,7490,9373,9375,9376,7476,7478,7480,7481,7491,7120,9391,9392,7138,7141,7159,7158] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.824,0.361]
select surf_pocket39, protein and id [3452,3505,3448,3477,6224,6216,6219,6220,3004,3000] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.675,0.278]
select surf_pocket40, protein and id [5029,5030,5031,5040,5042,5043,5329,5287,5286,4430,4756,4748] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.886,0.902,0.361]
select surf_pocket41, protein and id [2635,2699,2679,2688,2691,2695,2633,2634,2642,2658,2643,2651,2654,2701,2703,2704,2694,2716] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.651,0.702,0.278]
select surf_pocket42, protein and id [8235,8449,8484,8491,8516,8222,8223,8248,7993,7667,7985,8448,8447] 
set surface_color,  pcol42, surf_pocket42 
   
        
        deselect
        
        orient
        