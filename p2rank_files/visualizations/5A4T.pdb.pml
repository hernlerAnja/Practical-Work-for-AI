
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
        
        load "data/5A4T.pdb", protein
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
 
        load "data/5A4T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [522,297,296,2899,2901,2903,3302,3303,2894,2880,2821,2823,2872,2825,543,544,545,546,550,579,1460,520,3317,1289,1444,1445,1446,1287,1329,1306,1588,1305,1322,2808,2813,457,1459,305,307,282,289,299,302,292,1280,1466,1467,1279,1288,1567,1568,1570,1572,1574,1566,1576,1577,1583,1564,1565,1589,1597,1462,1465,1552,1553,3290,3296,3304,1556,1558,3293,3294,2868,2829,2865,1461,3305,3313,3308,3310] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8538,8525,8528,8534,5651,8533,5649,9783,5572,5574,5575,6065,6048,6052,6049,6050,6051,6038,9777,9779,6041,8756,5647,5569,5616,5613,9665,9664,9666,9687,9663,9517,9519,9509,9518,9794,9795,9796,9797,9803,9808,8541,8543,8815,6056,8785,9681,9680,9682,9683,6059,6060,9773,9786,9787,9788,8780,8781,8782,9679,8786,8787,9559,9536] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [1724,1725,1212,1720,1721,1722,1726,1727,1730,1176,1754,2681,2690,2700,2701,1751,1714,1715,1716,1717,2659,9937,10819,10820,10821,2694,2647,2691,9716,1496,9934,9918,9920,9921,9914,9915,9916,9917,9910,10300,10301,10302,1221,1249,1211,1225,1226,1187,2706,1177,1179,10811] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [6009,6005,6007,5879,5880,6436,5992,6434,6981,6983,6984,6987,6873,5834,5859,5860,6470,5823,5824,5826,6454,5822,5828,5831,6488,6861,6132,6889,6890,6461,6441,6458,6466,6982,6432,6431] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3384,3693,3260,3261,4233,4234,3257,3258,3259,3690,3692,3130,3131,3132,3244,3076,3078,3546,4230,4231,4232,3715,3716,3717,4146,3711,3710,3714,4237,4129,4145,3744,4117,3109,3111,3112,3086,3073,3074,3080,3083,4239,4238,4240,3687,3697] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [9559,8564,8505,8506,8508,8510,8511,8512,8562,8563,8518,9656,9657,9658,9576,8982,9147,9547,8676,9145,9123,9133,9158,9150,8543,8544,8693,8816,8691,8689,9660,9665,9664,9666,9663,8850,8981,9659,9673,9127,9129,9126,9128,9124] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1345,1346,944,1317,1437,440,897,911,274,909,910,914,326,328,279,307,308,282,276,270,893,327,453,455,890,892,922,457,580,745,1436,1438,1439,1440,1443,1444,1445,1446,1329,887,888] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [4489,4511,5418,5417,4488,4490,5409,5414,6793,6765,8151,8101,8143,8144,8106,8109,4876,5420,6755,6756,4290,7239,7252,7256,7254,8102,7258,7264,7253,7255,7265,7268,8100,8105,5454,5455,5456,7044,7039,7040,7260,7262,4494,4495,4508,4509,4510,4524,4514,4515,4520,4521,5443,4009,4011,4012,4519,4516,4518,5453,5462,5463,5452,4048,7233,7234,4049] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [9942,9935,9936,9946,9950,10854,10855,10856,2078,2079,2082,2043,9944,9945,9441,9442,10809,2656,2641,2643,10885,10886,2057,10863,1714,1715,1717,2659,9937,2658,10821,2649,2642,2650,1690,9451,1693,1695,1696,1701,1694,1700,1697,1687,1689,9479,9716,1496,9934] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [5849,5857,5859,7122,7115,6989,6873,6990,6833,6850,6831,7114,7121,7125,6866,6099,6100,6101,5854,8733,8735,8736,8740,7003,7004,7010,7011,6102,6103,6106,6131,6823,7112,8333,8335] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [3351,3352,3353,4239,497,499,3101,4089,4240,3106,3109,3111,3093,500,504,4256,4261,4079,4260,4361,4368,4370,4371,97,99,498,4347,4105,4106,4129,4118,4087,4088,4377,4382,492,3383,3261,4253,3277,3355,3358,3350] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [1707,1708,1504,1483,1497,1498,1265,1528,1521,1536,1701,1500,1511,1479,3312,1478,1465,1281,1572] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [7122,7103,7127,7131,7134,7135,8733,8735,7091,7094,7096,8312,8326,8331,8333,8335,8253,8300,7102,8255,8257,8245,8297,8304,8722,8728] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [2890,2891,2892,96,482,293,82,86,87,523,3286,3327,3328,524,296,2900,2902,98,498,3096,3097,3100] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [4357,4371,4391,9,4359,97,99,498,17,20,22,23,95,486,489,4347,4350,4352,497,499,500,4378,4383,492,496,61,64,90,68] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [6075,6076,8718,6034,5638,5640,5634,5650,5636,5648,8320,8318,8322,8323,8324,8332,8334,8526,8527,8528,8529,8532,8759,8760,5842,5843,5844,5845,5848] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [9699,9758,9720,9724,9741,9927,9928,9717,9921,9748,9715,9756,9511,9495,6058,6059,6060,9685,9792,9793] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [9771,9776,10138,10139,10323,5592,6387,10348,10346,5583,5606,5589,5590,9763,9764,9770,6369,6380,6370,6386,10321,9768,9765] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [842,825,826,836,830,4896,4897,4895,4920,4921,4922,31,54,37,843,38,40,829] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [7159,7362,7406,7407,7143,6856,6857,7145,7147,6865,6503,6505,6573,6575,7138,6850,6849,7125,7157] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [3625,3626,3630,3636,3643,2858,3642,2101,2103,2128,2126,2844,2835,2856] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [9551,9552,9841,9825,9827,9829,9840,9542,9543,10044,10088,10089,9195,9197,9199,9265,9267,9807] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [6108,6112,6115,9744,9750,9761,6083,6084,6404,6355,6335,6405,6137,6356,6357,6337,6138] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [3761,3763,4381,4414,4399,4401,4403,4106,4104,4121,4122,4618] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [9062,9079,9066,8267,8273,8274,8276,8290,7097,7457,7656,7665,9078,7639,7641] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [7618,7619,7620,7593,5454,5455,5456,8096,7585,7589,7587,7232,8103,8109,7234,7227,7228] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [1588,1304,1314,1319,1620,1621,1318,1607,1609,1312,1313,1868,1824,959,961,1605,1587] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [4298,4330,4273,4498,4500,4502,4495,4065,4322,4315,4323,4277,4292,4294,4291,4272] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [7048,7059,7067,7074,7246,7244,7022,7047,7066,7027,7044,6809,7039,7041,7239] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        