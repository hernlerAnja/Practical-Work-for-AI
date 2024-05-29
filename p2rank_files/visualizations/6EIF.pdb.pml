
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
        
        load "data/6EIF.pdb", protein
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
 
        load "data/6EIF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [440,911,1345,1437,914,922,926,1346,944,1317,1319,1322,887,897,307,308,326,328,276,282,891,892,893,888,889,890,327,453,456,274,909,269,271,272,270,275,1436,1329,1438,1440,457,1439,1453,1443,1444,1445,1446,614] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [8991,9002,9003,9416,8351,8517,8986,9388,9497,9417,9021,9415,8822,8988,8990,8974,8998,8999,9504,9505,9507,9500,9501,8533,8534,8970,9498,8964,8967,9400,8821,8823,8384,8385,8404,8347,8348,8353,8359,8403,8405,9390,9393,8532] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [6972,6973,6974,6987,6995,6857,6817,6833,6834,6994,7085,7088,6815,6816,7099,7100,7104,5843,5992,5993,6009,5838,5841,6115,6850,5828,5832,5833,8573,8575,8574,8576,8179,8180,7074,7075,8100,5834,6058,7108,8090,8102,6084,8581,8577,6086,6087,6090,6085,8563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [5806,5807,5812,5815,5863,5864,5810,6847,6850,6472,6425,6873,6439,6845,6874,5976,6453,6454,6455,6465,6438,6442,6449,6450,5843,5844,5991,5992,5993,6971,6974,6857,6116,6418,6419,6420,6421,6415,6416,6417,6964,6965,6967,6968,6966,6961,6272,6273,5818] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [4231,4116,3743,4236,4237,4128,4239,4145,3721,3725,3110,3111,3131,3079,3082,3085,4238,3687,3545,4229,4230,3716,4144,3243,3696,3710,3713,3714,3715,3708,3077,3544,4232,3689,3690,3691,3692,3258,3259,3260,3383,4233,3257,3129,3130,3075] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [1720,1721,1726,1727,1751,1730,2653,9756,9757,1211,1212,1249,1496,1722,1724,1725,1714,1715,1716,1717,1221,2697,2698,2699,2700,2706,2707,10143,9557,9561,1176,1177,10647,10648,9755,9556,9762,9775,9778,2665] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [9352,9767,9769,9762,9336,9540,9526,9539,9544,9333,9527,9594,9595,9597,9599,9633,6042,9587,9582,9586,9565,9559,9560,9561,9572] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [579,1459,457,1460,1444,1445,1446,1462,1288,1289,1306,1588,1305,547,548,549,297,296,3299,3300,550,551,305,307,289,292,1322,302,3307,3303,1466,1467] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [9783,9785,9786,9776,9778,9787,9791,2665,9283,2664,10683,1695,1696,10681,10682,9775,9777,9319,9282,9320,10636,9815,10670,10676,10679,10680,10659,9248,9247,10689,10690,9782,9250,9788,1700,1701,1714,1717,9557] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [6040,6042,8625,6036,9528,8550,8379,8382,8375,8594,8623,8628,8631,8626,9628,9635,9358,9637,9638,9614,9360,9359,9377,8384,9401,9523,9527,9400,9357,9505,9506,9507,9520,8656,9521,9522,8374,6033,6034,8373] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [4260,4253,4255,4259,4238,3099,3105,3095,3108,504,3350,3352,3325,3351,4086,4088,4087,4128,4239,4381,4104,4105,4369,4370,497,498,95,97,499,4252,3260,3382,3354] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [1478,1479,1536,3309,1572,1262,1281,1465,1466,1706,1708,1483,1497,1500,1504,1265,1701] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [2819,2812,2813,1588,1587,2905,2830,2832,2907,2824,2827,296,3299,3300,2909,3293,1552,1553,1557,1559,2825,2835,3289,3292,2874,3303,3295,1566,1567,1576,1577,1584,1565,1589,1564,1597] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [482,2896,2898,86,87,88,96,98,3100,523,524,2908,3285,3302,2897,3326,3327,3098,3096,3099] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [8165,8166,8167,8169,8559,8163,5620,5621,5622,5623,5624,5829,5833,8573,8574,8177,6059,6060,6016,6018,6035,8600,8601,8557,8374,8370] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [2126,2128,1544,1545,1548,2100,2101,2102,2103,3624,2841,2864,2848,2850,1543,3641,3642,1550,1551,1556,3625,3629,3628,2862] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [5404,5405,4488,4493,4494,4507,4508,4510,4486,4489,4487,7225,7024,6740,7986,7987,7988,4875,7233,7235,7228] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [4103,4121,3758,3760,4120,4617,3762,4413,4398,4400,4401,4402,4403,4661,4662] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [4893,4894,4895,4919,843,4712,4921,4713,836,826,829,830,4920,54,4896,841,842,4336,4337,4343,4344,4349] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [5576,9980,10187,10188,10189,5567,6371,6364,6370,10164,10161,10162,10163,6354,6357,6358,5590,5564,5573,5574] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [4381,4352,4358,4370,4377,486,497,498,95,97,490,17,61,9,19,21,64,4356] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [10683,1695,1696,10682,1697,2082,1689,1690,2081,2056,2647,2648,2649,2046,2055,2057,2662,10712,10713,1694,1651,2655,2656,2633] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [1312,1313,1607,1609,1620,1621,1824,1868,1869,1318,1605,1304,1610,1321,959,961,958,960,962,963] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [630,655,656,665,666,6130,6098,9589,1231,1232,6096,6122,6319,6321,6388,6389,6339] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [8616,7049,7050,7047,7051,7055,7217,7219,7011,7032,7006,8583,8584,8585,7007] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [9625,9626,9658,5634,5635,5555,5557,5559,5545] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [9635,9637,9638,9614,9645,9649,5634,5635,6022,9617,9619,9625,6028,6033,6034] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [4925,4939,4777,4941,5003,5007,4813,5010,4743,4776,4742,4740,4746,4747,4752,4717] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [4272,4326,4329,4501,4365,4499,4293,4297,4314,4276,4290] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [10376,10377,10382,10386,10577,10544,10545,10576,10058,10370,10378,10392] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [1117,1152,1799,1808] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        