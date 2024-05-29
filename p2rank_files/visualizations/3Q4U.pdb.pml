
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
        
        load "data/3Q4U.pdb", protein
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
 
        load "data/3Q4U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6005,4921,4926,4927,4924,4986,4987,5081,4974,4981,4985,5587,5612,5613,5614,5579,5586,5615,5549,6004,5521,5546,5578,5622,4929,4928,4973,4930,6006,5977,5989,6077,5095,5349,5096,5097,4972,5348,5515,5501,5516,5093,5089,5979,5978,5980,5981,4931,4932,4938,4971,4939,4942,4947,4968,4970,4950,6267,5990,5950,5966,5967,6085,6247,6248,4952,6254,6262,6263,6260,6261,4956,4960,6082,6078,6079,5220,5221,575,586,604,587,590,5542,5544,4922,4923,5540,603,565,5651,580,576,572,5559,5568,5566,5570,5572,5569,620,602] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1122,1134,1112,1123,1125,728,731,1149,1150,1151,735,736,764,379,256,257,258,1229,1230,1233,1236,311,114,120,124,126,128,664,650,508,665,1228,670,1111,1394,1395,1095,1414,1401,93,94,96,98,99,100,101,103,689,691,695,698,149,151,254,132,134,135,122,110,111,150,242] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [7409,7414,7415,7417,8072,7410,7411,7412,7416,7475,7470,7474,7588,7589,8572,8575,8568,8569,7462,7463,7476,7585,7587,7991,7710,7418,7426,7427,7459,7460,7430,7436,7439,7441,7445,7457,8032,7573,7581,8069,8495,8039,8494,8030,8036,8496,7845,8567,8005,8006,8049,8068,8034,8470,8468,8456,8457,8440,8742,8748,7435,7449,8103,8077,8076,8105,8467,8479] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [6771,6776,6777,6778,6779,9136,9139,9141,9108,9127,9146,4932,4939,4942,5602,5604,6709,5979,5973,5980,5981,5982,6702,6731,6734,6736,6733,6710,6711,9152,9153,2671,2672,2678,2679,2680,2459,8155,8156,9109,2522,9092,6691,5606,5643,6687,6704,9156,9160,6766,6780,6793,6785,4956,4960,6760,6284,6285,6286,6282,6298,6268,5965,6267,5966,5967,6278,6263,6269,2493,2502,2504,2456,2457,2458,8138,8129,2523] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [2708,3191,3622,3198,3594,2971,3623,3694,2620,2558,2559,2561,2563,2621,3199,3224,3227,2716,2707,2720,2722,2723,3127,3113,3606,3702,3695,3699,3601,2568,2569,2575,2576,2724,3696,3147,3154,3156,3158,3161,3171,3133] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [9179,9081,9159,9215,9216,9049,6672,9180,6959,6962,6963,9214,9212,6739,6740,6568,6600,9148,6748,6725,6909,6922,6755,6948,6749,6913,6917,9414,9411,9412,9425,9428,9429,9431,6937,6931,6941,6942,6944,6946,9225] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [369,1371,1367,1369,1370,1361,1362,1363,1364,3781,3782,3783,3792,367,395,362,1386,365,1351,2857,325,326,328,329,2859,2893,357,359,361,2820,324,2822,3738,3740,3741,3742,2865,3735,3802,3753,2787,3815,2825,2827,2828,2829,2831,2832,2855,2858,3811,3812,2788,2789,2792,3819,3813,3814,3803,3726,3729] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [163,164,6026,63,62,5624,5658,5659,33,619,640,618,620,5576,64,65,5663,160,266,143,142,144,637,265,270,5727,6035,6041,6043,5729,5626,5705,5706] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [589,591,4907,4910,4912,4915,4916,2979,4898,5000,2924,2925,2926,2667,2668,2669,592,2992,2993,2990,2692,2702,2994,3138,3140,3142,3144,583,2976,2980,2973,2922,2923,2913,2983,2907,2871,2903,2904,2905,2688,4917,4933,4937,4920,4921,4925,4927] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5652,5639,564,565,5651,580,576,572,575,604,590,603,5569,2507,2999,579,2663,2664,2665,2666,2993,2486,2489,2490,2506,2508,2516,2481,3012,3013,568,569,3121,602,5612,5640,5643,5644,5611] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [8829,8830,8869,8964,8932,8934,8870,8884,8885,8759,8796,8800,8802,8786,9289,8827,8848,8722,8737,8430,8700,8750,8594,8746,8749,8752,8753,8439,8756,8425,8426,8429] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [1084,1590,1592,1538,1082,1522,1523,1501,1482,1483,1480,1621,1357,1358,1359,1390,1399,1402,1403,1405,1406,1453,1375,1085,1080,1081,1356] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [6336,6376,6335,6375,5939,5940,6209,6391,6228,6256,6333,6480,6482,6445,5936,5937,6447,5935,6243,6258,6259,6252,6291,6292,6293,6262,6265,6306,6308,6255,6518] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [8470,8471,8472,8094,8096,8092,8455,8457,8762,8761,7435,9266,8779,9185,8780,9186,8778,8776,8763,8792,9258,9260,9261,9274,8767] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [1112,1124,1125,1126,1127,1921,1914,1915,753,755,114,1415,1929,1432,1433,1431,1119,1118,1445,1845,1846,111] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [3582,3584,3596,3597,3598,3599,3591,3887,3888,3214,3216,3218,4280,3590,4155,4356,3857,3871,3873,3874,3875,4364,4343,4350,4281,4347,4348,4349,3856,2569,2576,2577,2579,2583] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [2345,2346,2339,2343,1602,2331,2332,2333,2334,2328,1598,1600,1601,1603,1608,1638,2322,2311,1573,1574,974,943,966,967,2338,969,1596,1597] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [3841,3844,3846,3847,3848,4058,3924,3925,3965,3964,3550,3552,3553,3556,3557,3845,4027,4029,4031,3980,3881,3891,3808,3809] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [8312,9673,8946,9682,9685,8942,8915,8944,8918,8945,8314,8978,8952,8954,9667,9670,9672,9671,9650,9661,8310,8311,8323,8325] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [2945,3166,3167,3164,3638,3639,3635,3146,3149,2947,3134,3136,3138,3140,3142,3144,2959,2932,2940,2942,2972,2973] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [7212,7216,5833,7219,5824,6453,6455,6456,6425,6429,5822,6457,5821,6497,7195,7201,7204,7206,7207,7205,6465,6469,6471,7211] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [3436,4073,4754,4757,4758,4759,4760,4764,4765,4769,4748,4047,4049,4037,4040,4041,4012,4014,4011,3434,3441,3447] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [8530,8531,8533,8195,8227,8114,8116,8149,8502,8229,2437,8507,8516,8164,8196,8194] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [5524,5526,5532,5554,6021,5530,5555,5350,5337,5320,5325,6022,5351] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [58,73,74,185,186,210,211,6648,6627,201,6649,57,56,6626,5676,5679,6625,6630,6635] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [6683,6668,6671,6676,9163,9187,6663,6658,6672,6675,9180,6959,6962,6963,6965,9212,6971,9209,9210,9178,9179,9158] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [5821,5836,5840,5843,6414,5908,6411,6137,6139,6154,6427,6429,6457] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [3643,3657,3634,3658,3188,3238,3237,3629,3660,3317,3351,3286,3318] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [509,510,675,679,681,469,496,479,477,1167] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [1290,1291,1288,1564,1574,1575,1303,1305,985,1602,974,981,966,1053] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        