
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
        
        load "data/6EIP.pdb", protein
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
 
        load "data/6EIP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [296,1289,3303,297,2901,2903,3301,3302,2813,2821,2824,2826,2809,2808,1459,457,1444,1445,1446,302,305,307,298,3300,2899,2880,543,545,550,517,299,520,546,3317,551,1329,1305,1306,1322,1588,3304,3296,1553,1567,1574,3290,1557,1559,1565,1563,2829,2868,3308,1460,1461,1462,1466,1467,3309,3313,1279,1286,1287,1288,1576,1577,1584,1587,1589,1593,1597] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9723,9724,9554,9555,9556,9845,9831,9834,9833,9840,9841,8730,8746,8575,8578,8580,9702,9716,9703,8565,5650,5651,6051,8570,5647,5649,5573,5575,9815,5571,9820,5628,8571,8572,9596,9572,9573,6052,6065,6048,6049,6050,6038,6041,9813,6042,5616,8793,8795,6056,6061,8820,8822,9717,9718,6059,9810,9827,9829,9824,8817,8819,8823,8824,8790,9546,8852] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3109,3111,3080,3112,3083,3086,3073,3074,3079,3075,4237,4238,4239,4240,4129,4145,4117,3744,3244,3697,3711,3714,3715,3722,4146,3710,3078,3545,3546,4230,4231,4232,3687,3717,4233,4234,4241,3692,3688,3690,3691,3693,3260,3261,3132,3130,3131] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [6983,6984,6987,6861,6981,6982,6290,6461,6431,6434,6437,6441,5992,6889,6470,6488,6890,6466,6458,6455,6454,6132,5859,5860,5880,6007,6008,6009,5878,5879,6988,6990,5834,5822,5826,5828] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [8600,8601,8547,8543,8549,9596,9217,9585,9586,8728,8729,8730,8580,8581,9702,9701,9703,9694,9613,9695,9696,9700,9693,9612,9584,9160,9161,9163,8713,9195,9186,9187,9182,8853,9166,9164,9165,9697,9019,9184,9170,9188,9189,9190] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [1346,1344,1345,922,944,440,888,897,915,917,911,913,455,453,327,890,308,326,328,279,282,274,909,910,914,270,271,276,1438,1329,1317,1436,1437,1439,457,1440,1443,1444,1445,1446,307,892] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [9952,9953,9951,9957,9958,1496,9971,9974,10858,9972,1714,1715,1716,1717,9753,10339,2691,2692,2693,2694,10857,10855,10848,1211,1725,1212,1722,1726,1727,1730,1721,1249,1724,2700,2701,9954,9947] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [4087,4089,4254,4255,4256,4261,4088,4238,4239,4240,3109,3111,3112,3086,507,4079,4260,4368,4105,499,3101,3106,500,504,506,3351,3352,3353,492,497,4371,4382,4106,4347,4253,3261,3383] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [6988,6989,6990,6831,6833,6849,6850,6832,7114,7115,7121,7122,7125,5857,5859,5854,6009,5849,5844,5841,5850,5851,6100,6101,7003,7004,7006,7011,8772,7010,7112,6131,6074,8770,8771,6072,6873] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [7262,7260,6756,7263,7255,5421,5419,5420,7265,8188,7268,8181,6755,4876,8179,8180,7256,7252,7259,7258,7264,4492,4495,6793,4509,4486,4489,4487,4511,4490,4488,4484,7040,4294,4508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4049,4011,7233,7234,4518,4508,4512,4012,4516,4519,5456,5455,5453,5454,5463,7040,4290,7044,4511,4520,4521,4524,5409,5416,7232,8139,8140,7237,7238,7239,7252,7253,7254,7255,5420,5418,8142,8143,8146] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [7102,7103,8298,8290,8293,8295,8372,8368,8370,8349,7115,7122,7125,7127,7131,6833,8770,8771,8363,8759,7095,7097,8302,8763,8337,7091,8772,8334] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [1528,1497,1538,1504,1707,1708,1525,1521,1536,1533,1483,1498,1479,1478,1281,3312,1265,1701,1500,1511] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [7244,7246,6809,6825,7022,7009,7021,6806,7043,7044,7048,7027,7041,7110,8779,7066,7074,7076] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [1714,1717,2659,1496,9974,9972,1695,1696,9981,9753,10900,10891,10892,10890,10846,9973,9975,9983,9987,9476,9478,9479,9982,9979] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [4370,4371,4377,4358,4378,4382,4353,486,95,97,99,490,4347,4351,17,4359,20,22,64,4368,492,499] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [9783,9785,9778,9761,9736,9548,9735,9963,9793,9795,9532,9757,9740,9749,9754,9755,9765] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [523,524,3327,295,2900,2902,2890,2891,2892,296,293,297,3328,3286,481,482,88,96,98] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [4081,4065,4332,4330,4268,4271,4272,4277,4284,4291,4500,4502,4315,4298] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2656,2657,1694,2649,2650,1690,2055,1695,1696,2077,2642,2057,2078,2079,2082,10891,10892,10893,10922,10923,2047,2043,2051] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [8755,8360,8361,8566,5639,5648,8569,6034,5845,5848,8369,8797,6076,6075] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1545,3641,3642,3643,2858,2101,2102,2103,2126,2127,2128,2844,1917,1918,1919,1920,1543,1544,1550,2835,2856,2832,2842,2843,1556,1558,3625,3626,3629,3630,2100] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [6115,6112,9781,6404,6355,6356,6357,6335,6337,6138,655,656] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [1321,1588,1609,1610,959,961,1607,1620,1621,1824,1868,1304,1313,962,963,1605,1606,1587,1600] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [5583,6369,6370,6385,6386,10358,10360,6387,10384,10385,6373,6374,5604,5606,9805,5592] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [4414,4415,4120,4121,4617,3761,3763,4122,4401,4403,4662,4663,4104] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        