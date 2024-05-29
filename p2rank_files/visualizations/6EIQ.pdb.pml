
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
        
        load "data/6EIQ.pdb", protein
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
 
        load "data/6EIQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1459,457,305,1444,1445,1446,3303,1306,1322,2821,2824,2826,2808,2809,2813,1329,1305,1461,1460,1465,1466,1467,1279,1287,1288,1289,1574,1557,1559,1563,1565,1576,1577,1583,1584,1588,1589,2829,1597,3317,3310,3304,3313,3308,3290,3296,3301,2868,545,548,546,547,296,297,3302,2899,2901,2903,550,517,520,302,522,307,289,292,1572,1553,1567] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [9685,9683,9684,9690,9691,8537,9777,9791,9798,9801,9800,9669,9670,9563,9520,9521,9522,9523,9540,9812,9807,9808,8697,8713,8794,8539,8542,8545,8547,6052,5632,5653,5655,6053,6054,6055,8536,5620,5651,6042,5575,5577,5579,6046,9780,9787,9782,5573,5581,8532,8760,6069,6056,6048,6041,6045,6047,6060,6061,8788,6064,9796,8757,8785,8786,8790,8791] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [5845,5848,5853,5861,5863,5858,8739,8337,8339,7106,7107,7131,6103,6104,6105,8738,8744,8740,8726,8728,7095,7099,7101,7102,6073,8308,8316,8257,8260,8262,8265,8330,8335,8727,8730,8301,8304,8269,6990,6993,7007,7008,7010,6102,7015,7014,6834,6835,6836,6837,7109,7110,7116,7118,7119,6106,6107,6110,6012,6029,6013,6135,6994,6877,6869,6854,7130] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [3131,3132,3080,3081,3083,3073,3074,3076,3079,3075,3078,4242,4243,4244,4237,4238,4241,4133,4234,4235,4236,3720,4148,4149,4150,3718,3725,3729,3713,3726,4121,3730,3748,3259,3260,3261,3111,3112,3696,3697,3550,3691,3692,3694,3244,3701,3715] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [891,327,438,889,440,274,272,326,270,276,307,308,282,455,443,449,328,1346,922,1344,1345,941,944,911,914,271,893,1439,1440,305,1443,1444,1445,1446,1306,1322,1436,1437,1438,1329,1317,1305,1289,439,888,897] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [6894,5882,5883,5884,6438,5996,6294,6435,6445,6987,6991,6994,6865,6877,6892,6893,6985,6986,6869,6474,6492,5826,6470,5828,5830,6462,6458,6459,6013,6988,5832,5837,5863,5864,5844] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [8511,8514,8566,8567,8568,8510,9181,9184,9551,8516,8519,8522,8695,8696,8697,8548,8694,8547,8693,9667,9668,9669,9670,9563,9151,9580,9154,9579,9162,9166,9130,8985,8986,9128,9660,9661,9663,9662,8680,9127,9132,9664] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [2692,2694,1726,1727,1730,1715,1716,1717,2647,1212,1722,1725,1176,1720,1721,9919,9920,9921,1211,2723,2690,2691,2700,2701,10306,1496,1714,1724,1249,9941,10824,10825,10815,10816,2693,10822,10808,9938,9917,9922,9918,9923,9924,9914,10305] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [9720,9946,9948,9949,9938,9939,9940,9942,1695,1696,9445,9483,9459,9941,10825,2658,2659,2649,9446,10866,10867,9950,9954,10813,10857,10859,1700,1701,1714,1698,1699,1693,1694,1495,1496,1715,1717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [500,505,3352,497,498,3353,499,3096,3101,3106,3109,3111,3093,3350,4258,4259,3355,3261,3277,3383,4093,4260,4265,4092,4243,4244,4109,4351,4362,97,4386,4110,486,492,496,99,3358] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [7266,7267,7043,7256,7257,7258,7259,7260,7044,4294,5460,4512,4513,4515,5424,6797,6759,4494,4499,4493,7243,7237,7272,8148,8105,6760,7262,7263,7264,7268,8154,8155,8147] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [9930,9932,9707,9499,9702,9703,9704,9708,9728,9733,9722,9723,9724,9716,9721,9760,9796,9762,6064,9515,9752,9745] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [1536,3312,1281,1707,1708,1572,1479,1478,1483,1265,1504,1511,1701,1497,1498,1500,1538,1528,1521,1465] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [8763,8327,8722,8328,8530,8531,8532,8533,6038,5640,5652,5654,8536,5638,5641,5642,5643,5644,5849,5852,8338,6079] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [4319,4326,4276,4281,4277,4333,4335,4504,4506,4371,506,4370,508,4085,4263,4309,4295,4298,4302] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [4351,4355,4357,4375,4362,4363,97,4374,4382,4387,95,486,490,9,4395,17,20,22,498] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [84,482,2890,2891,2892,85,86,88,96,98,76,82,87,3100,3328,3099,3097,3286,3327,293,2900,2902,2886,2889,523] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1302,1304,1307,1312,1313,1321,1609,1868,1610,1605,1620,1621,1607,1606,1588,1824,959,961,958,962,963] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [825,826,829,830,4899,4900,4901,4926,4922,4923,4924,4925,31,54,40,52,843] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [1696,1697,1687,1689,2078,1690,2656,2649,2650,2642,2049,2057,2080,2082,10859,10860,2047,10889,1694] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [2127,2128,2842,2844,2835,1919,1918,1920,1543,1544,1545,2102,2101,1659,2126,2125,3640,3646,3629,3630,3647,3634,1558,2832] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [9918,9914,9913,10275,10279,10305,10824,10815,10816,2693,10822,2724,10807,10808,10809,10270,9920,2694,10306,2723] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [10325,10327,6374,6390,6391,6377,6378,9772,9767,9768,5588,5587,5596,10349,10350,10351,10352,5608,5610,10142,10143] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [9750,6116,6117,6118,6142,6341,630,656,1231,1232,666,6115,6112,6114,6151,6149,6178,655,6141,6339,6408] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [4326,4276,4278,4277,4335,4337,3374,508,3375,540,539,4273,3400] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [6094,6096,6095,8788,9762,9763,8809,8811,9685,8810,9695,9702,9703,8836] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [6665,7350,7341,6700,7323,6886] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        