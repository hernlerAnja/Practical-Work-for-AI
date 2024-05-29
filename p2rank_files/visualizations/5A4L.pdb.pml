
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
        
        load "data/5A4L.pdb", protein
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
 
        load "data/5A4L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9936,9937,9939,9938,9940,10826,10835,10836,10837,10838,2655,2654,1690,2644,2645,2652,2653,2638,2643,2639,1685,2074,1686,2045,2053,9915,9916,9917,9920,9923,9922,9918,9919,10828,10829,10827,2650,10820,10821,10822,10303,9912,10269,10273,10276,10277,10278,10271,9481,9946,9947,9717,9718,1691,1692,9442,9443,9457,9458,1693,1680,2073,9911,1208,1710,1713,1722,1716,1717,1718,1720,1721,1726,1723,1222,1245,1207,2702,2687,2689,2690,2696,2697,2666,10299,10300,10304,1183,9722,1491,1492,1697,1172,1173,9952,10860,10870,10871,10872,10873,10900,2043,10901,10902,10903,2039,2040,2041,2042,9942,9943,9944,9948,9949,10879,10880,10878,10869,10881,10885,2075,2078,9409,9412,9408,9444,9419] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1283,1285,1325,1300,1301,1302,1583,1584,1616,1617,1603,1604,1605,1606,1308,1309,1819,1820,1864,1865,1455,1456,1458,457,579,1441,297,1442,1463,3299,2819,2821,2809,2817,2823,2804,2805,296,2876,2895,2897,2899,3296,3298,545,550,544,546,543,551,520,522,3309,3313,1317,1318,289,305,307,282,956,958,959,1027,1025,292,298,299,302,1275,1282,1563,1570,1573,1580,1585,1589,1593,1596,1462,1601,1602,1546,1548,1549,1550,1552,1554,1561,3286,3289,1560,1457,3300,1529,1568,3308,1459,3304,3305,3306,3301,3332,3292,3293,2864,1537] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [5840,5844,5845,5853,5855,5850,6004,7007,8730,8731,6021,6827,6829,7006,7122,8729,7108,7110,7117,7118,7121,7092,7111,7123,7099,7127,6005,6127,6128,6979,6980,6983,6984,6985,6986,6003,6431,6433,6430,6432,6429,6428,6819,8300,8308,8327,8329,8331,8293,8296,7098,8249,6846,6862,7131,5837,5856,5824,5827,5830,5876,5818,8253,8251,6885,6977,6978,6886,6869,6857,6457,5875,5988,6427,6437,6484,6512,5822,6462,6454,6451,7067,8738,8739,8736,7075,7101,7104,7106,7087,6095,6097,6098,6099,6102,7000,6999,8764,8717,8718,8723,8724,8732,8733,9071,7090,8721] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [5643,6047,5645,5647,9779,9781,9785,9789,9799,8534,8535,6045,8529,8530,8752,8754,8705,9538,9806,9810,5568,5570,5571,8537,8539,8524,8521,8514,9537,9551,6044,6041,6049,6080,9757,6034,6040,6048,6052,6037,6036,6038,9775,8777,8778,6061,8749,5609,5612,5616,5565,9667,9668,9681,9682,9684,9689,9519,9520,9521,9790,9796,9797,9798,8689,8811,9561,9756,6055,6056,9755,8775,8776,9683,8782,8783,8786] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [8978,9149,9658,9659,9119,9120,8559,8670,8671,8672,9549,9561,9660,9578,9577,9176,9154,8506,9147,9143,9146,8688,8689,8685,8687,9123,9121,9125,9665,9666,9668,9661,8502,8508,8514,8560,8504,8558,8503,8539,8540] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [4343,4364,4367,4353,4355,21,4387,9,4357,486,489,4346,95,97,99,497,498,76,17,19,23,4348,3348,4235,3092,3097,3105,3107,3349,4236,499,500,501,504,505,506,4252,4255,4077,4256,4257,3089,4323,4325,4362,4082,4083,4085,4125,4084,4101,4102,4378,4114,4075,4366,4374,4379,4383,491,493,64,532,4249] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1434,1433,1313,1315,1318,884,883,893,328,455,456,307,308,279,282,885,887,889,1341,1342,940,271,272,276,270,274,327,440,918,907,910,1325,1432,1435,1439,457,1442] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [3686,3127,3693,3126,3128,3074,3240,3706,3380,3413,3688,3689,3541,3542,3257,4226,4227,4228,4229,4230,3414,4243,4237,3711,3713,4142,3707,3710,3718,4141,4113,3740,3070,4233,4125,3108,3076,3077,3079,3107,4236] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [1524,1500,1507,1517,1704,1479,1493,1494,1496,1261,1702,1474,1475,1476,1534,1532,3308,1277] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [9699,9700,9705,9696,9497,9928,9494,9701,9758,9513,9794,9930,9750,9719,9720,9726,9721,9722] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [10346,10348,10350,6381,6383,6382,10325,10322,10323,10141,5588,5579,5602,6365,6366,6370] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2098,2097,2099,2122,2123,2124,3621,3628,3622,3626,3638,3637,2831,3639,2852,2854,2838,2840,3632] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [523,84,96,2888,2886,2887,87,482,293,291,524,3322,3324,3282,3323,2884,2885,296,2896,2898,3297,496,98,3087,76,3093,3091,3086] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [6789,6751,6752,4485,4486,8138,8139,5416,5417,8140,6761,7035,7036,7248,7252,7254,7256,7258,7260,7261,7251,7264,7259,8147,4482,4483,4488,4491,4504,4505,4507] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [5839,6071,6030,5633,5634,5636,5644,5630,8308,8314,8316,8328,8330,8331,8320,8318,8340,5635,5838,5841,5834,5835,8528,8714,8756,5646] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [7230,5449,5452,4286,7229,4007,4512,4515,3972,4008,5459,4514,4504,4505,4507,4516,4520,5405,4510,4511,5412] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [837,838,31,839,54,4449,4709,4710,40,4916,4917,4918,4347,4892,4893,4456,821,822,826] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [6133,6134,6135,6336,6400,6328,6331,6333,6334,6170,653,654,655,656,9746,6346,6351,6352,6108,6109,6110,6111,6401,1228,9749,630,666] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [3361,3363,3607,3608,3656,3385,3386,3584,3587,3589,3590,3387,3592,3602,1520,3422,8897,8898,8888,3332,3657,3359,3360,3358,3356] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [6845,6846,6861,7134,7139,7141,7143,7142,7144,6501,6502,6503,7402,6852,6853,7153,7155,6497,6498,6499,7358,7403,7122,7121,7123,7127] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [7635,7636,7637,7652,9073,9074,9075,9058,8264,9062,9064,8272,7459,8262,8263,8260,8284,8286,8270,7453,7661,7663] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [9826,9827,9829,9831,9832,10090,9554,9191,9195,9193,9261,9263,9809,9810,9822,9553,10046,9536,9842,9843] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [3371,3370,3395,3396,4251,3346,4270,4273,4261,4265,540,3342,4268,4318,4328,4329,506,507,508,539] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [1540,1541,1544,1545,3638,2098,2097,2099,2096,1676,1657,1655,1553,3639,3632,1916] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [2650,10820,10821,10822,2719,10270,10303,10269,10266,10267,10271,10268,10835,2687,2688,2689,2717] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4377,4394,4408,4410,4118,4395,4397,4399,4390,4411,4614,3755,3757,3759,4102,4100,4117] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [3339,3362,569,571,3337,3340,1475,1534,1535,1524] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [1081,976,1050,972,1010,1384,1349,973,974,1000,1003,1368] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [606,570,1474,1475,1476,569,596,1483,1481,1480,1479] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        