
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
        
        load "data/6EIV.pdb", protein
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
 
        load "data/6EIV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5645,6047,5647,9752,9750,8502,8505,8500,5566,5567,5568,5569,5570,5571,5565,6048,5643,6044,6045,6046,6034,6035,6036,9740,9744,9746,6038,8724,8726,8675,5609,5612,9654,9486,9632,9633,9476,9484,9485,9775,9762,9763,9764,9771,6052,6055,6056,9646,9647,9648,9649,9653,9761,8510,8660,8508,8782,8720,8747,8749,8754,8676,9526,9519,9502,9503,6061,6057] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [1459,457,579,1460,1467,1445,1446,1287,1288,1289,1306,3317,520,299,302,3300,297,3303,3301,2903,3302,2899,2901,545,546,550,517,1305,1322,1588,305,307,3310,3297,3304,3308,1553,1556,1558,3290,3293,3296,1461,1281,1463,1465,1466,1572,1279,1286,1567,1574,1577] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [6857,6869,6885,6977,5988,6286,6437,6457,6456,6451,6454,6455,6462,6466,6484,6886,6128,6428,6430,6432,6427,6979,6980,6983,6987,6993,5830,5856,5874,5875,5876,6002,6004,6001,6003,6005,6986,5818,5824,5825,5827,5819,5820,5822] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [892,327,890,274,440,272,270,1437,909,911,914,915,1346,922,1345,944,1317,455,456,328,307,308,276,910,271,1436,1438,1329,457,1439,1440,1443,1444,1445,1446,897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [3697,3244,3709,3711,3714,3076,3078,3546,3687,4230,4232,4233,4234,4231,4146,3722,3130,3131,3132,3259,3690,3692,3260,3261,3083,4129,4237,4238,4239,3073,3074,3080,4144,4145,4117,3744,3111,3112] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [8529,8531,8472,8473,9526,9514,9147,8530,8643,8475,8477,9113,8642,8478,8479,8480,8482,8485,8510,8511,8658,8659,8660,8652,8656,9627,9630,9631,9632,9633,9095,8949,9091,9090,9093,9100,9623,9626,9543,9624,9625,9117,9125,9114,9118,8783,9096] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [7007,8701,5840,5845,6984,6985,6986,8702,6827,6828,6829,6846,7110,7111,7117,7118,7121,5853,5855,5850,6021,6861,6097,6999,7006,7101,7108,6098,6099,6102,6096,6065,8707,8695,8700,8703,8689,7087,8300,8302,6982,6870,6127] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [9882,9881,9883,9884,9877,1211,10265,10269,9687,1249,9880,9888,1722,1724,10788,1714,1718,1720,1726,1727,1730,1715,1716,1717,10787,2691,2692,2693,2694,2701,2647,2690,1496,9901,9904,1225,1226,10264,1212,1725,1721,1187,2700] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [7036,7255,4289,4495,4508,4509,4511,5449,5452,8080,8083,6788,6789,4875,5409,4524,6751,4489,4490,4484,4492,4487,4488,7225,7245,7246,7248,7226,4290,7035,4512,4518,4516,7253,6749,6750,7256,6752,8075,8117,8118,7257,7261] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [7530,7531,8040,7536,7528,8041,8043,8007,8016,7774,7775,8058,7507,8039,8012] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [7206,7200,7209,7633,7636,7661,7615,7626,7646,7483,7553,7554,7585,7591,8059,8061,7177,7178,7182,7185,8055,8077,7220,7221,7581,7580,7586,7587] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [2824,2826,2809,2808,2813,2899,2901,3303,3301,2903,3302,1577,1584,1563,1565,1589,1593,1597,1553,1556,1558,1560,3290,2868] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [64,96,486,496,68,76,19,21,98,99,487,490,4351,4353,4347,4370,4377,4357,4371,4378,4358,90,17,25,4390,4391,3101,498] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [9409,2658,10822,10821,10823,10852,2082,10853,2078,2079,9912,2659,9408,9422,9423,2656,2642,2643,2046,2057,1693,1694,1695,1696,1697,1687,1689,9418,9446,2649,2650,1690,1717] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [504,3352,3353,3093,3096,3101,3106,3109,3111,498,499,4087,4089,4261,4240,4106,4129,4238,4239,4105] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [9909,9911,9912,9905,9907,9908,9901,9902,9904,9913,9914,9917,2659,9409,2658,10820,10821,10823,9408,9683,1717,9377,9373,10829,10830,10810] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [826,830,4713,4921,4922,825,843,4343,4453,4338,4897,836,37,38,40,52,54,842,4714,4896] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [6030,8299,8285,8286,8287,6072,8725,8726,8727,8498,6071,5644,8685,8288,8291,5635,8496,8499,5646,5841,5844,5839] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [7098,7099,6829,7110,7111,7117,7118,8702,8700,7093,8298,8300,8301,8302,8271,8278,8279,8228,8232,8264,8220,8221,8222,8224] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [9665,9666,9478,9893,9462,9670,9888,9691,9687,9684,9677,9713,9715,9716,9723,9708,9895] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [10290,10105,10107,10106,10312,10313,10314,10315,10311,5588,6381,6383,9743,9745,5579,5602,5586,6382,10287,10288,6366,6369,6370,9735] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [482,2890,2892,2891,88,480,293,95,97,3286,523,3327,3328,3097,3100,524,2900,2902,2888] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [1608,1610,1620,1607,1609,1621,1824,1868,1314,1319,1302,1304,1311,1312,1313,2809,2808,959,957,958,961,962,963,1321,1606,1605,1587,1593,1597] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [2101,2102,2103,2126,2100,2835,2841,2842,2844,2858,3641,3642,3643,3629,3630,2856,3626,3636,2128,2127] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [1536,1538,3310,3312,1478,1479,1281,1465,1572,1483,1525,1526,1528,1504,1521,1706,1708,1500] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [9683,1496,1701,1695,1698,9418,9446,9421,10788,1714,1717,9911,9901,9904,2659,2658,9408] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [6134,6135,6133,6333,6079,6400,6351,6352,6108,6104,6107,6401,6111,9711,9714] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [9881,9883,9884,9877,10269,10268,9838,10243,10244,10778,10779,10238,10242,10787,2693,2694,10771,10785,10233,10235,9876] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [10503,10516,10685,10518,10520,10656,10683,10555,10563,10564,10717,10716,10499,10501,10502,10504,10508,10512] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [571,1471,3343,3311,3312,1539,1538,570,1475,1479,1480,1483,1525,1526,1528] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [4602,3917,3952,4593] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [9518,9162,9510,9509,10010,10011,9796,9806,9808,9794,9164] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [4259,4079,4080,4366,4260,4347,4273,4328,4330,4332,4327,4272] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [6657,7361,6491,7330,6692,7339] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [1117,1830,951,1799,1152] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [9995,9314,9349,9986] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        