
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
        
        load "data/6EIS.pdb", protein
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
 
        load "data/6EIS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1287,1288,1289,1555,1566,1567,1574,1578,1579,1577,1305,1306,1449,1455,1456,1457,1553,1583,1587,2814,3311,3314,3304,3309,3310,3291,3297,3301,3303,3295,1549,2869,2834,2895,2825,2900,2866,2830,2822,545,543,550,546,549,1451,3318,299,302,305,307,1435,297,289,292,2881,2827,2902,2904,2807,551,554,457,579,520,522,517,1436,2808,1557,1564,1562,3294,1543,1547] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1429,1430,1426,1427,1433,1434,1436,1329,1428,1317,887,888,890,891,893,1345,1346,937,944,307,308,328,282,455,456,457,580,613,892,614,274,327,914,273,275,326,270,276,440,921,922,926] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [9204,9632,9207,9215,8733,8567,9190,8563,8566,8569,8570,8572,8619,8620,9237,9604,9633,9720,9721,9714,9715,8748,9185,8746,9183,9616,8600,8601,8621,9723] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [6454,6885,5984,6437,5818,6449,6886,6484,6857,6451,6462,6466,6512,6978,6869,6977,6979,6980,6983,6984,6430,6285,5872,5814,5819,5820,5870,5817,5871,5851,5852,5999,6000,6001,6986,5826] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3260,3112,3113,3131,3132,3133,3079,3078,4244,3261,3262,3385,4230,4231,4234,4237,4227,4228,4229,3715,3723,4146,4147,3711,4130,4224,4118,3745,3081,3082,3084,3075,3086,3087,3693,3694,3690,3692,3688,3689,3691,3245,3546,3545,3547,3698,3718,3712,3710] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [4367,4369,4370,4088,4090,4258,4089,4107,504,4346,4350,498,499,3097,97,4381,4106,4119,496,497,3101,500,486,492,509,4250,3262,4236,3110,4237,3112,4251,4257,513,3353,3354,3103,3104,3107,4130,4352] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7000,7002,7007,6986,6829,7006,6827,6828,7122,7108,7110,7111,6098,5846,5849,5851,6001,6845,6846,6066,5836,5841,8790,8791,8789,8792,6064,5833,8797,6061,6095,6090,6093,8802,6059,8806,6123,6999,6869,6982,6984,6985,6826] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [9723,9744,6040,6041,6042,8590,9576,8592,8595,8598,8600,9851,9853,9854,9575,9593,9865,9860,9739,9743,9574,9722,9737,8750,6048,8839,8842,6049,8843,8810,6053,6057,8813,6044,9738,8844] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [8799,8801,7068,7070,7069,8797,7064,7067,7106,7075,7060,7062,7072,7058,8794,8793,8784,8783,7088,8822,8825,9106,7087,7104,7101,7007,7006,8789,8779,8785,6821,7240,7242,7235,6805,6802,7018,7019,7023,7005,7040,7044,6819] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [1468,1526,3313,1473,1464,1265,1281,1487,1488,1489,1490,1494,1696,1698] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [4280,4271,4273,4065,4066,4329,4331,506,4256,4081,4257,4082,4499,4365,4258,504,4326,4346,4294,4301,4297,4292,4314,4501] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2893,3287,98,481,482,523,524,3329,3098,3101,3102,2901,2903,296,290,291,292,293,3328,85,86,87,88,108] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [5418,5419,5420,8198,8199,8201,4875,8200,6751,6752,4874,7258,7256,7248,7254,7260,7261,7251,4488,4489,4490,4487,7036,4494,4508,4510,6789,8208] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [8392,8789,8792,8388,8390,8779,8782,7092,7098,7099,8318,8791,8322,8357,8310,8314,7131,8312,7122,7087,7111,7118,6829,6846] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [9756,9755,9813,9815,9983,9985,9760,9549,9552,9774,9568,9781,9775,9777,9803,9798] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [10002,9498,9508,9536,1684,1685,9511,10001,9773,9995,10923,10922,2657,2658,2650,9992,9993,9994,9463,9499,10965,10966,9997,9999,10003,9998,10004,10007,10912,10956,10957,10959,1486,1691,1704,1705,1683,1688,1707,1490] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [4357,9,4358,4390,19,21,4352,4386,4382,490,64,76,4346,4350,99,498,97,4370,496,95,486] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [842,843,31,4712,4351,4711,4895,4896,825,826,836,54,4921,4920,38,39,40,830,832,52,4919] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1712,2695,1706,1716,1717,1720,1707,1486,1714,1704,1705,1248,1249,1211,9973,2692,9972,10923,1715,1212,1711,1176,2701,2702] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [1248,1249,9777,1211,1221,1224,9973,1712,2695,1486,1714,1704,9978,9972,9991,9994,9971,9975,1715,1212] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [3644,2836,2857,2859,3637,3642,3643,1546,2117,2118,1909,1908,2843,2845,3627,3630,3631,2093,2091,2115,2116] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [10378,10379,10403,6382,6381,6383,9825,10380,9821,10196,10197,10404,10405,5605,6366,6369,6370,6376,5603,5591,5582] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [9865,9861,9864,9866,9870,9874,9834,9836,9854,9840,9841,6040,6030,5570,5572,5574,5560,5641,5619,5612,5615,6043,5644,6034] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [8817,8380,8775,5635,5638,5639,6068,5837,5840,8391,8816,5839,6024,6025,6067,6026,8586,8589] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [9135,9129,9134,7635,7637,9118,9119,9122,9123,7082,7193,9136,8324,7453,7454,8333,7654,7655,7656,8347,7200] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4398,4400,3764,4402,3762,4661,4413,4414,4113,4114,4617,4122,4123] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [959,1312,1814,961,1322,1597,1610,1611,1599,1858] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [6104,6107,6075,6351,6352,9801,6076,6400,6130,6131,6331,6333,6129] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [10592,10820,10821,10852,10593,10819,10853,10594,10589,10607,10608,10609,10610,10611,10602] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        