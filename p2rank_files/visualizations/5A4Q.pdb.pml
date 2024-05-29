
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
        
        load "data/5A4Q.pdb", protein
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
 
        load "data/5A4Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1549,1552,3299,1563,1570,1572,1573,1580,1583,1584,1275,1277,1283,1285,1462,1463,3308,1284,1554,1560,1561,1585,1589,1593,2809,1455,1456,1457,1461,1459,3301,3300,3309,3304,3291,3285,3286,3289,3292,3293,3296,3290,2864,545,546,3305,3313,579,1441,457,289,305,307,1442,2819,2821,2804,2805,2895,2899,2897,3298,550,302,292,297,298,299,1325,1302,1318,517,520,1568,1531,3332] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8493,8495,8477,9494,9741,9755,9754,9761,9762,9766,8490,8485,8487,8708,6010,6012,6013,6021,6011,9731,9735,9737,9745,9493,6027,6018,6014,8703,8733,8705,8734,9638,9644,9645,9475,9476,9477,9517,9752,9637,8645,8767,9623,9624,9639,6022,8738,8739,5590,5613,5609,5611,5531,5532,5534,5535,5536,5537,6000,6003,5578,5582,8742] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [328,272,276,279,282,270,326,327,440,274,893,918,933,940,907,910,906,1435,1436,1439,913,1340,1341,1342,1432,1433,1434,1313,1325,1315,1318,456,1440,455,457,307,308,1442,889,886,888] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [5970,6935,6936,6942,6933,6823,6835,5967,5969,5841,5842,6398,6399,5954,6396,5788,5821,5822,5793,5796,5790,6450,5784,6416,5971,6094,6423,6852,6422,6403,6417,6252,6934,6394,6428,6420] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3108,3127,3128,3240,3255,3679,3681,4135,3074,3698,3699,3072,3682,3535,3256,3257,4219,4220,4221,4222,4226,4227,3700,3704,3705,3703,4134,4118,3733,4106,4229,3107,3079,3082,3070,3076,3676,3677,3686] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [9533,9534,9616,9132,8934,9105,9615,9505,9110,8643,8644,8645,8768,9622,9624,9614,9617,9621,9517,8458,8464,8495,8496,8515,8516,8641,8628,9078,9080,9081,9075,9076,9085,8462,9099] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1245,1207,1208,1172,1491,1492,1720,1718,1721,1710,1711,1712,1716,1722,1717,1723,1726,1183,10260,2687,2696,2697,1221,1222,1713,2690,10793,10794,9873,9874,9875,9872,9868,10784,9895,2655,9673,9892,9893,9674] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [3105,4229,4078,3107,3082,3089,4094,4095,4118,4371,4249,4250,4077,4350,4357,4076,4355,4336,4360,3257,3379,4228,4242,500,501,504,506,3349,492,497,498,499,3097,4316,486,489,3102,3348,3317] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [5803,5806,5819,5821,5970,6942,6835,6065,6955,6956,5971,6093,6941,6061,6062,6063,5816,6068,5987,5811,5812,6792,6963,6793,6794,6795,7066,7067,8287,8686,8687,8285,6828,6812,7077,7074] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [9670,9675,9453,9714,9884,9886,9469,9656,9657,9716,9643,6022,9658,9661,9706,9699,9682,9676] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8094,8095,8096,5380,5382,4865,4473,6731,6732,6755,6715,6716,6717,6718,8103,8102,6693,7214,7204,7205,7207,7212,8053,7210,7211,7216,7217,7220,4476,4477,4478,4479,4484,4480,6992] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [1474,1493,1479,1702,1704,1500,1517,1532,1261,1461,1470,1277,3308] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [6038,6037,8711,8712,5610,8669,8670,5612,8484,8481,5602,5996,8274,8275,8276,5596,5599,5600,8272,8273,8284,8286] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [9437,9674,9900,9902,9903,9412,9399,9413,1689,1690,1691,1692,9673,9892,9893,9894,9896,9895,2654,2655,10782,2653,1713,9409,9904,9905,10836,10826,10827,10828,10829,9908,9400,1710,1711,1694,1697,1491] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [8674,8287,8686,8687,8283,8285,7043,8678,8252,7046,7048,7054,7055,8217,8213,8249,7067,8207,8209,8264,8205,7087,7074] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [2884,2886,2887,2888,3282,523,524,482,3323,3324,2896,2898,290,292,293,296,82,87,3093,3096,3090,3091,96,98] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [4348,4380,19,21,23,4339,4359,4360,4341,4346,4367,4370,4372,4376,4371,97,99,95,486,498,499] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [3625,3630,3631,3632,2854,2097,2099,2122,2123,2124,2096,2840,1914,1915,3615,3618,3619,1555,2831,2852] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1300,1302,1317,1309,1820,955,957,958,959,1616,1617,1596,1601,1603,1605,1585,1583] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [8095,8096,5380,8058,8061,7214,6991,7204,7205,7207,8053,6992,4279,4497,4484,4500,5376] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [7077,7079,7090,7095,7097,7099,7110,7111,7100,7096,6811,6819,6827,6465,6467,6469,6537,7314,7358,7359] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [6347,6331,6332,6336,6349,5545,5554,10305,10306,9726,10279,10281,6348,10299,10302,10303,10304,6338,5566,5568] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [4370,4111,4403,4404,4388,4389,4390,4392,4391,4393,3750,3752,4376,4380,4093,4607] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [8228,8219,7608,7619,7411,7415,7409,9031,7406,8242,7593,7591,9014,9017] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [9510,9785,9787,9783,10046,10047,9151,9149,9494,9765,9766,9778,9509,9798,10002,9492] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4331,838,832,839,31,52,54,4885,4886,4910,4911,40,822,826,821] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [9236,9239,9244,9245,10594,10595,10019,10615,10613,10577,10578,10584,10586,10572,10014,10020,9240,9225,10582,10574,10575] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [6074,6077,6099,6317,6299,6101,6366,6297,6302,6312,6136,6300,6100] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [6658,6844,7289,6623,7271,7298] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        