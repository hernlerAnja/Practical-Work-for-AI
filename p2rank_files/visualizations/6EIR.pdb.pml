
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
        
        load "data/6EIR.pdb", protein
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
 
        load "data/6EIR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1459,457,1445,1446,297,1289,3302,2899,2901,2903,3303,2824,2826,2808,2809,546,1460,1461,1462,1465,1466,1467,3310,1279,3308,1286,1287,1288,1576,1577,1559,3293,1563,2829,2821,1565,1597,551,579,3313,3305,3304,3290,3296,2868,3301,545,517,550,520,3317,1329,1588,1305,1306,1589,1593,1600,1606,1596,1898,1608,1610,1281,1572,1553,1567,1574,1557,302,305,307,289,292,1321,298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [9116,9124,8476,8642,9099,9112,9113,9513,9542,9146,9541,8658,8659,9624,9090,9091,9525,9629,9630,9632,9623,8529,8530,8528,8509,8510,8471,8472,8478,8473] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [1345,1346,1317,888,889,891,887,745,897,892,893,890,915,328,307,308,281,288,744,1433,1436,1439,1453,746,1438,1440,1446,614,326,327,331,332,440,910,271,272,273,270,276,277,279,909,911,914,922] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [4229,4230,4233,4145,4226,4227,4228,3715,4146,3714,3077,3722,3078,3710,3131,3132,3259,3260,3261,4235,3112,3111,3086,3080,3074,4234,4236,4129,4117,3726,3744,3085,3688,3690,3692,3546,3244,3687,3697,3711,3716] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [5785,6418,6426,6430,6849,6441,6448,6821,6850,5839,5786,5952,6413,6419,6415,6401,5782,5788,5789,5791,5793,5794,5819,5820,5840,5968,5969,6833,6947,6948,6950,6942,6941,6943,6397,6391,6394,6396] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [8748,8750,6011,6016,8504,8500,8505,8752,8719,8756,8675,6019,6012,6020,9760,9763,9762,9739,9753,8494,8507,9485,9501,9502,8509,9484,9774,9645,9648,9525,9628,9630,9631,9632,8781,9652,9483,9761,9646,9647,9653,6010,5608,5998,6009,5610,5611] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [4361,4079,4087,4089,4256,4257,4236,4129,3111,500,504,499,3106,3101,3109,4249,3353,3261,3277,3384,4235,4357,4364,4366,4367,4088,4378,4106,4118,4122,4343,492,497,486,97,99] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [4286,4512,4514,4515,5412,5413,5422,5423,4516,4517,4520,5392,5403,4504,4507,4049,4011,4012,7205,7000,7218,7219,7220,7221,8069,5414,5416,5379,5380,8072,8075,5369,5376,7199,7198,7200,7194] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [10267,2693,10786,10787,2691,2694,10777,10778,10770,10776,10784,10241,9887,1496,1714,1715,1717,9873,9876,9880,9882,9883,9875,10266,10268,9837,10242,9881,1212,2701,1718,1722,1723,1725,1249,1209,1211] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [6752,6753,7229,4485,4486,6713,6715,4484,8067,5379,5380,5381,8110,4871,7000,7226,7228,7218,7221,7222,4491,4504,4505,4507,8116,7230,7234,7231,8097,8107,8117,8086,6716,6691,7224,7225] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [6833,6949,6950,6790,6791,6792,6793,6810,7092,7080,7081,7087,5817,5819,5810,8301,5808,5814,6059,6060,6061,8698,7071,7057,8699,6969,6783,6970,6971,7074,7078,6963,6964,6966,8706,8702,7076] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2656,10820,10821,2658,2659,2082,9900,9901,9902,9903,9912,9916,10822,9407,9408,1696,9910,9911,9908,1701,1714,1717,1698,1695,9445,1697,1496,9681,9682,10785,10786,10829,10818] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [9712,9707,9722,9724,9477,9697,9690,9893,9894,9665,9664,9669,9683,9686,9887,9458,9461,6020] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [4342,4356,4357,4358,4367,4374,4343,4347,497,486,95,97,99,499,4350,4355,4379,4354,9,4387,21,17,19,64,4349,25] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1536,1538,1280,3311,1281,1572,1474,1478,1477,1261,1483,1497,1504,1265,1521,1707,1708,1528,3309,1465,1466,3310,1499,1500,1511] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [6793,6810,7092,7081,7088,7091,7069,7093,7097,7101,8224,8297,8299,8300,8301,8222,7068,5808,8698,7057,7061,7063,8688] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [7031,7040,7042,7025,7033,7076,6978,6982,7212,7211,6769,6981,6987,7001,7008,6969,6785] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [84,482,293,2890,2891,2892,96,98,3327,2900,2902,2886,2889,523,524,3097,3100,3286,3096,3094,3095,2912,296,85,88] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [826,830,4890,4891,4892,4893,4918,842,825,4915,4916,4917,841,843,31,829,4710,54,40] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [1620,1621,1607,1322,1609,1868,1610,1304,1311,1312,1313,1824,959,961,963] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [6329,6330,6331,6332,6340,6347,5540,5544,5552,10312,5566,6335,6345,6346,10105,10106,10289,10287,10288,10314] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [3625,3636,3626,3632,3631,2856,2858,2103,3642,2102,2126,2127,2128,2832,2841,2842,2844,3641,3643,2835,2101] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [10499,10502,10503,10507,10511,10683,10715,10716,10684,10183,10515,10516,10517,10518,10520,10519] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [10586,10027,10593,10594,10645,10646,10603,10606,9253,9258,10608,10575,10577] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [4318,4287,4288,4289,4290,4291,4269,4273,4065,4498,4496,4294,4311,4326] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4318,4269,4273,3375,4265,4268,507,508,540,4329,4328,3374] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [9516,9517,9163,9165,9793,9795,9773,9786,9790,9791,9518,9806,9807,10010] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7303,6456,6621,6656,6840,7312] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [1152,1117,1808,1799] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        