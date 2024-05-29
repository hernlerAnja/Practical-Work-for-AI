
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
        
        load "data/5A54.pdb", protein
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
 
        load "data/5A54.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1441,1456,1457,3300,1462,1463,296,297,1442,3286,2897,2899,3296,3298,3299,1560,2861,2820,2822,2895,1561,2809,2817,546,550,551,554,579,1455,1284,1580,1583,1585,1301,1302,1584,1593,2804,1283,1285,1325,289,292,2876,302,473,298,299,305,307,1317,1318,2805,1568,3304,3306,1563,1570,1549,1552,1554,3289,1572,1573,1589,520,3309,3313,517,545,3292,2864] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9531,9532,6046,6047,9804,9775,9793,9779,9800,5643,5645,5647,5571,5609,5565,5567,5569,6041,6048,6052,6033,6034,6039,6040,9769,9773,6037,5612,6038,9683,9512,9513,9682,9783,9790,9792,9799,9514,9515,6055,6056,8521,8524,8528,8529,8530,8534,8537,8539,9555,9661,9662,9675,9678,8688,8689,8811,6061,8752,8754,9677,8778,9676,8777,8782,8749] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [5845,6829,7006,7007,8731,6986,6826,6827,6819,7108,7109,7110,7111,7118,7122,7099,7123,7127,5850,5853,6127,5840,6985,5844,8729,8730,8327,8329,8331,7092,8249,8261,7098,8257,8308,6846,6862,6869,7130,5837,8251,8253,8736,8732,8718,7087,7090,8722,7101,6099,6096,6999,6102,6021] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [4141,3740,4113,3070,3071,3075,3076,4236,4233,4125,4114,3127,3240,3683,3686,3693,4142,3074,3072,3689,3542,4227,4226,4228,4229,3684,3688,3108,3128,3082,3107,3255,3256,3257,3718,3707,3712,3713,3710] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5876,5818,5824,5830,6862,6484,6857,6869,5855,5856,6003,6005,6986,6978,6455,6886,6979,6977,6462,5874,6001,5875,5822,6451,6454,5988,6450,6427,6428,6430,6437,6431,6433,6432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [1492,1697,1710,1711,1712,1713,2690,1726,2643,1245,9911,9912,9913,9906,10297,10298,2677,2686,2666,2687,9712,9716,9917,9930,9931,9932,9933,9934,2655,10831,10832,10821,10822,10825,10829,2652,9910,9940,9946,10820,10866,9938,9936,9942,1720,1716,1718,1721,1208,1717,1722,2696,1723,1207,1205,2697] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [1340,1341,1313,940,1317,1432,1434,742,1433,884,885,886,913,1342,276,270,440,327,918,274,906,910,917,933,889,457,888,328,455,307,308,282,279,1435,1436,1439,1325,1442] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [9555,9656,9659,9652,9655,9653,9654,8812,8687,8689,9124,9125,8559,8560,9119,9120,9122,8978,9543,9571,9176,9572,9154,8504,8506,8672,9129,9143,9147,9146,9149,8502,8508,8514,8539,8540] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [4364,4366,4367,4373,4374,4379,4101,4102,4378,4353,4355,4383,4387,486,95,97,99,497,498,499,17,20,22,4343,4346,4348,61,64,3102,3105,3348,3097,3107,3092,4250,4251,4256,4257,3346,3347,3349,3089,3273,3354,3379,3256,3257,4249,4083,4084,4235,4236,4085,4125,4114] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [838,832,4892,4893,4454,4456,4918,4917,4334,4335,4337,4338,4449,4339,4890,4469,4470,821,822,826,828,837,839,52,54,40,4708,4709,4710] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [1475,1524,1473,1474,1479,1261,1470,1534,1532,1702,1704,3308,1277,1500,1496,1493,1494,1491,1697] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [9694,9695,9752,9754,9699,9491,9922,9924,9744,9716,9720,9737,9713,9714,9507] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [84,96,98,481,482,2886,2887,2888,82,85,87,86,108,496,497,523,524,3322,3324,2896,3323,3282,3348,3096,3097,3349,293,291,2898] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [7636,7637,7652,9068,9073,9074,9075,9057,9058,9061,8284,8286,9062,8263,7453,8269,8272,7455,7459,8260,7661] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [6072,6029,6030,5633,5634,5636,5635,5841,8316,8317,8318,8320,8328,8330,5646,8525,8529,8527,8714,8756,8755,5644,5630,5632] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [4488,4491,4490,4504,4505,4507,4286,7035,7036,4485,6789,4486,8139,7259,6751,6752,7252,7256,7258,7248,7251] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [2099,2122,2124,3638,3639,2840,2831,2832,2852,2854,2838,2097,2098,3626,3622] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [6381,5579,6382,10344,6369,6371,6383,10343,5600,5602,6365,6366,6370,10319,10317,10342,9761,9764,10136,5588,6372] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [1583,1601,1300,1584,1603,1616,1605,1606,1308,1309,1617,1820,1315,955,957,1318,2805,954,958,959,1596] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [7229,7230,4007,4008,4286,4514,4515,5452,4510,4520,4511,4517,4508,4512,4504,4505,4507,5450,5459,5448,5449,7035,5458,7235,7248] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [9191,9193,9194,9195,9825,9263,10084,9548,9823,9826,9547,9538,10039,10040,9836,9837] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1691,9475,9447,9450,1692,9437,9940,1496,9712,1697,1690,9435,9438,9941,10866] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [7140,7142,7143,7144,7153,7358,7139,7141,6853,6845,6861,6503,6499,6501,7121] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [1691,1693,1683,1685,1686,2638,2652,2653,2639,2051,2053,1692,1690,2645,2646,2039,2043,2074,2075,2078] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [9049,9053,8348,8696,9080] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [3747,3948,3913,4598] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        