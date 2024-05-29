
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
        
        load "data/6EIJ.pdb", protein
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
 
        load "data/6EIJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9698,9702,9703,9680,9681,9682,9533,9535,9552,9534,9824,9813,9812,9820,9823,9825,9829,6050,8798,6044,6048,6053,6057,9696,9697,9789,9803,8725,8769,8795,8802,8803,8806,8554,8708,8709,8556,8558,8560,8580,8522,8523,8528,8578,8579,9563,9575,8524,8526,9551,9169,9673,8998,9675,9676,9679,9672,9674,9140,9141,9143,9144,9145,8692,9139,9174,9591,9592,9163,9166,9695,9525,8831,5647,6043,5643,5645,9799,9801,9833,8541,8550,8544,5624,5569,5616,5557,5565,5566,5567,6040,6042,5638,6030,6036,6033,5612,6034,9792,9794,5577] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6861,6845,6846,7112,7108,5848,5850,5852,5872,5814,5815,5820,5871,6484,6857,6869,6966,6967,6968,6886,6285,6429,5818,6286,6427,6428,6437,6451,6885,5984,6457,6462,6454,6996,8756,6091,6092,6093,8751,5846,6829,6997,7100,7101,7107,6000,6017,5999,6990,6970,6973,6974,6975,6976,6989,6969,6001,6123,6124,6819,6826,6827,6828,6431,6433,6430,5836,5826,8349,5842,6066,8750] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [580,1460,1461,1459,1444,1446,1462,1463,1466,1445,1287,1288,1289,1588,1306,546,3317,549,3302,3303,3304,3313,3290,3296,2901,2903,3301,543,544,550,551,545,1305,3310,1467,1553,3305,3308,302,305,307,292,473,456,457,520,296,298,522,554] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [307,308,1438,1329,455,888,891,892,893,453,890,745,887,1436,457,1345,1437,1346,944,1317,327,274,440,897,270,326,328,282,276,277,279,911,913,914,909,579,1439,1444,1446,1443] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [4145,4146,4230,4231,4232,4233,4234,4237,4117,4129,3714,3111,3112,3259,3261,3083,4238,4239,3080,3130,3131,3132,3073,3074,3075,3076,3078,3079,3722,3687,3697,3244,3715,3709,3710,3546,3717,3690,3688,3691,3692,3693,3744,3085,3086] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [1714,1715,1717,1695,9731,9732,1249,1496,1724,1722,2691,2694,2647,1720,1726,1727,9958,9960,9950,9951,9952,9953,9962,9963,9966,10916,10917,10918,10915,10871,10880,10876,2656,9961,9457,9458,9931,9932,1211,9930,9937,1725,1212,1721,1176,2700,2701,10925] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7225,7026,7248,7238,7241,5452,8125,4511,4489,4490,4487,4488,5417,5414,5415,5405,5410,5416,6789,7219,7220,4493,4494,4508,4509,4510,4524,4516,4520,4521,5449,4492,4495,4290,4519,4518,4012,4011,5458,5459,3976,7246,7250,8117,7249,6751,6752,8157,8158,8160,8159] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [3109,3111,3261,3383,4238,4239,4240,506,4260,4253,4254,4255,4256,4261,3347,3348,3349,3350,513,3321,3324,3326,3277,3106,504,3354,3355,498,3096,4089,4382,4105,4106,497,499] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [9715,9762,9747,9740,9714,9735,9736,9710,9944,9527,9942,9511,9733,9734,9719,9772,9774,9808] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2824,2826,1584,1563,1597,2809,2813,1588,2865,2868,2821,2872,3303,3290,2899,2901,2903,1587,1557,1559,1565,2829,1589,1593,2880] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8341,8328,8269,8271,8273,7089,7088,7121,8351,8347,8349,8749,8738,7081,7083,8740,8742,8739,8313,8316,8320,7101,8751,6846,7112,7108,7111,7113,7117] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [4294,4305,4500,4502,4065,4315,4322,4298,4330,4291,4292,4277,4272,4081,4273,4332,4366] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [7009,7008,7049,7060,7062,8759,7034,7045,7230,7232,7053,7057,7028,7029,7030,7225,6805,7027,7007,7013,7050,7052,8760,6995,6821,6997,7094,7096,7091] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [4387,4359,4383,64,95,97,76,489,490,4351,4353,9,20,22,25,4358,4391,17,4347,99,498,4378,4371,500,492,497,486] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1479,1478,1536,1538,1483,1265,1281,1706,1708,1490,1497,1504] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [6829,6997,7077,7098,7100,7101,7107,6996,8756,6093,8751,6827,6828,7112,8749,8752,8738,8744,7081,7083,7089,8347,8349] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [4489,4490,4491,4488,5407,5417,5415,5408,5416,4484,4849,4850,4851,6751,6752,8160,4875,4872,4874,4876] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [1587,1620,1605,1304,1312,1313,1607,1621,1824,1606,1608,1609,1868,1610,1597,2809,1588,1306,1589,1593,1600,961,1322,1321,2808] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1545,2100,2101,2102,2126,3643,2128,2835,2844,1556,3625,3629,3630,2856,2858,3626,3636,3642] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [481,523,524,293,295,296,297,2890,2891,2892,2902,96,3100,3101,84,87,88,3327,3328,3285,2900] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [5588,10364,10362,10363,6376,6381,6382,5579,6366,6383,5602,5585,6365,10338,10339] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [825,4922,4920,4921,842,4343,4895,4896,4897,31,826,829,830,54,38,40,836,843] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [8810,8812,8808,8837,9112,8838,8839,9043,9045,7051,8784,8815,7048,9113,9063,9064,9065] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [3364,3365,3335,3367,3612,3660,3389,3390,3391,3336,3613,1530,1541,3597,3611,3591,3593,1524] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [5837,5840,5841,8350,6025,6026,8776,6068,8775,6067,8348,6024,8340,8734,5633,8548,8549] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4401,4414,4415,4399,4403,4617,4662,3759,3761,4400,4404,4121,4122,4381,4106,4104] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [6104,6107,9760,9766,9777,6400,6351,6352,6353,6130,6333,6331] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [6008,6357,6388,6361,5662,5663,6389,6391] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [6491,6692,6657,7332,7323,7354] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        