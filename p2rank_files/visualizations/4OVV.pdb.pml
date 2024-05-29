
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
        
        load "data/4OVV.pdb", protein
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
 
        load "data/4OVV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6622,6623,2351,4,1541,1542,6621,6659,6652,6658,6,7,8,6648,6650,6689,6690,6867,13,58,5351,5352,5353,5354,5355,5356,6098,6107,6108,6109,5401,5402,6798,6595,6596,6624,6563,6565,6620,6783,6766,6782,6768,6769,6789,6102,6786,1525,1526,2352,2350,2348,2379,2378,5319,5320,2389,2347,2376,2409,5034,5038,5040,5041,5042,6599,5043,5045,5044,5035,5071,5073,5012,5036,6697] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [5458,5459,5460,3594,3596,5475,5476,8153,8160,8161,8162,8163,8145,8157,8203,8204,8199,3601,3603,3604,9524,3616,3617,3637,5465,5467,5468,5469,3747,9552,3732,9562,9520,9522,9561,3628,3626,8177,9531,5450,5452,6540,9586,3701,3705,3421,3699,3681,3698,3692,3680,3695,3694,5126,5127,5139] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [8227,8229,7605,7606,7607,8689,7649,7651,8686,8687,10441,8289,8290,7653,7654,7647,8666,3630,3631,3632,3633,3649,10401,10402,10403,10404,3634,8716,8224,8230,8231,8236,8237,8210,8225,8251,8252,7615,7608,7609,7611,7613,7614,7602,7640,10431,9420,9421,7586,7588,8258,7656,8712,8715,8688,8690,8653,8651,8652,8658,8711,8685] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [1105,1109,5419,156,1125,1131,1132,1133,158,5728,1114,159,5725,5726,5727,167,173,168,171,5417,5418,5414,5416,5439,6809,5753,6815,5443,5447,6818,6822,5752,6821,6838,1107,1146,1136,1142,1148,738,742,744,745,1135,160,894,895,896,183,184,185,733,1103,1104,1106,1112,1080,1077,1082,727,779] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [4549,4563,4573,4574,4575,4361,4362,4363,4334,4336,4576,3002,4582,4584,4547,8916,4335,3006,9157,4840,4553,2994,2995,2996,2998,4552,4313,4316,4308,8917,8905,8911,8901,8900,8918,2984,2993,4836] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [7518,6281,6282,7516,7517,7519,6250,7436,6923,6237,6236,6948,6922,6947,6559,7525,7526,6495,6494,6251,6875,6862,6873,6878,6906,7437,6775,6779,6474,6475,6238,6302,6304,6856,6858,6855,6857] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [8894,8895,8898,8900,3005,8908,8907,8909,2994,3687,3670,2978,2979,3688,3004,3689,3034,3036,3033,3662,8886,8735,8736,8888,8891,8739,8738,3666,2946,2947,3656,3657,8226,8712,8713,8714,8690,8218,8209,8211,8222,3680,3693,3695,3696,3675,3639,3654,3655,3658,8709,3006,3633,3634,8227,8229,3637,8210,8199] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [1639,1640,1641,1637,1638,2407,2399,2414,2420,2421,82,92,110,7177,125,6744,76,7232,7233,7234,7237,7210,95,97,7211,73,6727,7266,7267,1602] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [8643,8644,8792,8926,4327,8790,8791,8942,8858,8836,8645,8646,4269,4270,8795,8827,8828,8798,8825,8788,8787,8322,8324,8325,8326,8638,8619,8633,8636] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5312,5622,5624,5652,1489,5654,6080,5653,6081,6114,5612,2565,1492,2548,2568,5613,2558,1491,1501,1502,1503,2231,2547,2549,2552,2555,6115] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [8944,8947,9001,9003,8937,8938,8956,9048,8864,9022,9024,9015,9019,9056,8782,8845,8848,8850,8783,8844,8837] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [4839,4840,2994,4286,4293,8900,4830,3689,2993,3687,3688,8216,8217,8218,8219,8220,8209,8211,8215,4291,4294,4297,3690,3693,3694,3696] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [4628,4631,4370,4095,4107,4108,4110,4066,4622,4603,4652,4046,4397,4399,4395,4123,4619,4044,4045,4047,9159,9153,4106,4572,4574,4575,4365,4358,4557] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [8711,10413,10414,10415,8692,8693,8694,8695,8696,8697,8610,8609,9222,9190,9196,9239,9181,9182,9183,9185,9187,9188,8733,8776,9197,9199,9189,9193,10410,10438,10436,10437,10442,10443,10476,10447,10449,10404] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [1086,1090,819,841,842,816,1110,1112,1081,1082,843,844,875,876,877,878,1111,1113,5667,5670,5703,5704,5705,5706,1114] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [3626,8176,8177,8178,8186,7616,7583,7587,7589,3628,7551,7549,9534,9491,9492,9493,9494,9453,7612,7614,7622,7623,7624,9454] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [6087,6099,6101,6103,6107,6129,6466,6447,6448,6449,6450,6451,6444,6454,12,14,6131,6866,6864,45,47,6421,6423,6420,6422,6424,6425] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [2351,4,13,14,6107,6108,6109,6110,23,24,25,1525,1526,2350,5319] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [1149,1153,1156,1157,1160,1189,1069,1161,1143,1056,1057,1073,1072,773,1079,756,1103,1080,1075,1077,1078,1146,1074,764,781,786] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [6825,9562,6521,6523,6824,6831,5450,5452,6823,6522,6540,5458,5459,5460,8161,8163] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [6655,6660,6661,6665,6667,8049,8051,6695,6698,6694,5054,5045,5021,5022,5056,6633,8073,1547,1548,6696,6656,6654,6630,4771,4768,4769,4754,4755] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [6750,7,6651,6741,6742,2419,77,78,55,2417] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [8902,8908,8679,8680,8905,8906,8907,4310,4312,8900,4293,4308,8215,8222,4291,4294,8656,8226,8678,8690,8223] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [5701,6032,6038,6041,6005,6033,6034,6036,1116,5703,5705,853,876,877,878,879,843,875,854,837,852] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [4685,4651,4684,4440,4647,4677,4648,4649,3986,4021,3992,3993,4676,3994] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [9084,9138,9085,8978,8976,8977,8988,8998,9069,9133,9139,8964,8945,8948,8944,8955,9047] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [2553,2488,2552,2198,2473,6375,2229,2230,2231,6140,2199,2200,6365,6367,6366] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [3443,3553,3554,3525,3527,3475,3724,3448,3441,3444,3442,3447,3471,3472] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [6916,6915,6979,7147,7107,7109,7148] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [4847,4836,4553,2984,4587,4582,4584,4585] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        