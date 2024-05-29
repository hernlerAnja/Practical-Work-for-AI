
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
        
        load "data/5SWO.pdb", protein
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
 
        load "data/5SWO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5537,8220,8228,8232,8235,8236,8238,5545,5546,5538,5542,3630,5531,5544,5535,5536,5551,5552,5553,5510,5534,3637,3638,3635,3650,3651,9733,9734,8277,8278,8279,8274,3778,3781,9796,3628,3765,3766,9760,9762,9804,9770,9772,9771,9744,3660,3662,8252,8253,165,9741,158,163,9731,5528,5527,5529,6899,6900,6901,6906,6595,6596,6597,6598,6613,6614,6615,166,6586,3735,3739,3740,3455,3732,3715,3725,3726,3729,5216,3714,3731,3713,3673,5203] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [3024,4645,4649,3027,4650,4673,4651,4652,3033,3023,3026,4393,4438,4413,4439,4440,4436,4410,3032,8951,8987,8988,8989,8956,3041,9317,9319,9322,9330,4661,4624,4627,4640,4653,4657,4659,4626,4634,3020,3021,4629,4630,4911,4914,4915,4916,4917,3022,4382,4385,4390,3009,3019,8970,8971,8972,8969,8973,8976,4913] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [5429,5478,6864,6638,6640,6670,6699,6697,6698,6858,6861,6942,5427,5428,5430,5432,5431,5433,5395,5396,6175,6184,6186,6185,5115,5139,5110,5111,5113,5119,5121,5479,5117,5148,6671,5150] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [7690,8762,10656,10657,10658,7688,7689,10685,3666,7728,7716,7722,7724,7726,7717,7720,7679,7704,7732,10693,10694,10695,8306,8308,8326,8327,7681,7682,8300,8363,8364,8365,8275,8311,7677,7683,7684,7686,7687,7650,7661,7656,8303,8304,8734,8735,8736,8733,8761,8758,8759,8760,8731,8732,8699,8705,8708,3691,8285] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [6998,7511,7512,7594,7022,6307,6308,6352,6353,6321,6322,6309,6634,7591,7593,7595,7596,7599,7600,7601,6569,6590,6570,6933,6931,6937,6944,6950,6550,6932,6954,6948,6949,6373,6375,6953,6981,6853,6850,6855,6549] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [8303,8304,8724,8736,8761,8755,8758,8759,8760,8766,8723,3673,3688,3692,3696,3700,3708,3689,3691,3690,8771,8767,8768,3730,8286,8290,8291,8293,8295,8284,8285,3714,3727,3728,8964,8971,8945,8959,8961,8962,8979,8726,3722,3704,2971,2972,3004,3061,3707,8960,8958,8776,8781,3698,4916,4917,3721,3019,3058,3057,8789,8792,8762,3668,8274] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [187,191,192,182,183,5829,5838,5860,5861,5830,6574,6913,6896,6578,6577,196,6890,6893,6897,908,909,5802,5803,5804,5805,5491,5494,5495,5496,5468,6884,1144,1146,5516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [4348,4349,4379,8879,8881,8691,8692,4384,8854,8849,8852,8877,8837,8838,8844,8997,8912,8913,8890,4346,8399,8400,8401,8389,8395,8398,8690,8397,4431,9013,9014,8883,4404] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [9702,9704,7658,7687,7697,3661,9703,9663,9631,9664,7698,3662,8252,8251,7662,7664,7626,7627,3655,3656,10601,10624,3666,7690,3683,10656,7688,7689,9692,10622,10623,7691,3657] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [5388,5389,5701,1504,1502,5693,5685,5689,2578,2581,1505,2568,2574,5729,5730,5731,6157,6158,1516,6191,1514,2244,6218,2561,2563,2564,2566] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [4729,4078,4079,4080,4081,4172,4163,4175,4699,4070,4696,4697,4680,4705,4708,4476,4506,4164,4165,4166,9312,4148,4134,9311,4650,4651,4447] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [5133,5098,5099,5122,5121,6731,6734,6729,6773,6730,6771,5120,6708,8148,6740,6742,5089,5090,1556,1560,1562,1551,1554,6772,2365,6733,4845,4846,4847,4848,8124,8126,4832] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [1202,1081,1082,1083,1084,1086,1069,1162,1169,1173,1174,1156,1159,789,790,791,792,740,769,786,777,794,1117,1118,1119,758,909,1066,823,1090,1087,1088,1091,1092] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [10667,10668,8740,8741,8742,10669,9432,10704,8779,9430,3397,9429,9409,9406,8738,9395,9411,10692,10695,10701,10730,10702,10703] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [4154,4155,4156,4159,4153,9115,9116,4139,4142,9108,9107,4197,4269,4270,4487,4496,4182,4184,4185,4170,4161,4162,4418,4417,4457,4453,4450,4455,4296,4297] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [6733,6761,6762,6764,6816,2421,2422,2390,1625,2391,2392,2361,2362,2363,1555,2360,2388,2397,2398,2401,2402,2389,6696,6843,6725,6720,6721,6723,6724,6825,6726,6734,6728,6773,6772] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [1249,3485,5244,5232,1232,1233,1234,5574,5257,3750,3753,3745] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [5781,5782,5783,857,1095,832,854,855,856,5742,5743,5748,5753,1103,1104,5744,1094,829,1106,1127,1129,888,1125] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [6523,6524,6525,6941,6526,6513,6163,6164,6184,6206,6208,6495,6497,6499,6500,6938,6529,6939,6946,6940,6176,6541] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [7728,7721,7722,7723,7724,7725,7726,7720,7719,7732,8712,10807,10759,10760,10761,10731,10689,10691,10692,10722,10724,10806,10836,8708,8744,8745] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [3588,3587,3600,3476,3478,1249,3485,3758,3757,3750,3753,3745] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [2954,3075,3076,3698,3414,3416,3417,3415,8781,8784,2972,3413,8768] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [7975,7850,8581,7927,7928,7849,8548,8549,8568,8550,8551] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [6606,6586,6590,6570,6632,6633,6634,7596,7599,7601,6593,6594,6625,7617,6600] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [7182,7184,7223,7053,6990,6991,7055,7054,7051,6974,7536] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [3813,10542,9764,10539,2852,3794,3801,10505,10502,10504,2868,10508,3806,10497,10498] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [2733,2736,4682,4685,3943,3297,4656,4714,4713,4715] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        