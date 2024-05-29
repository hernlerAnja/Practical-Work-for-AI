
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
        
        load "data/4JPS.pdb", protein
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
 
        load "data/4JPS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6068,6049,6453,5857,6070,5856,6050,6470,6473,5879,6468,6143,7078,7079,7084,7082,6375,7074,6372,6374,7076,7058,6106,6451,6452,6457,6464,6370,6371,6373,6386,6140,5814,5826,6499,6542,6543,7083,6994,6995,7077,6518] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [4925,4927,5677,6214,5673,4923,4921,4926,4605,4606,4607,4887,4889,4890,4891,4922,4924,4644,4973,6151,6216,5683,5685,5684,1377,1378,1933,5682,6381,6171,6361,6368,6377,6378,6147,6384,6461,6175,6176,6179,6180,4614,4615,4611,4604,4608,4609,6212] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [29,5327,5358,6077,34,37,5359,9050,6413,6416,6432,6417,5303,4989,990,992,12,18,13,5301,44,19,22,36,5302,15,605,753,754,755,968,4985,6410,5008,5018,5020,5015,5009,5010,4962,5291,6404,5328,4990,5300,5384,5393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [7706,7696,7697,7704,7705,7689,7695,3463,3465,3386,3387,3191,3450,3451,3461,3467,3468,4696,4697,3476,3471,4710,4708,3462,7748,3383,3389,3392,7745,5045,5047,3364,3374,5029,5031,7701,5030,5046,6115,7707,3371] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [9005,9006,9007,9032,9033,9687,9689,9690,9691,9692,9664,9667,9013,8980,8983,3372,8974,8975,3373,5036,5037,9042,3514,3517,3542,3530,3501,9038,9068,5047,3364,3366,3374,3502,5030,8978] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [3489,1070,1071,1072,5074,5077,4751,4749,4750,1087,1073,1079,3492,5044,1096,5068,1088,1089,4726,3221,3255,3245,3248,3322,3323,3324,4740,3218,3214,3217,3296,5078,3481,3482,3483,3485,3486,3207,3210,3212,3336] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [3440,2754,3441,2689,2690,2709,3457,2707,8453,2724,2725,8446,8427,8271,2752,2753,2755,3439,3458,3436,3464,3466,7753,7754,7771,7773,3424,3425,3427,3428,3426,8259,8261,8262,8255,8265,8266,8231,8228] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [7172,7179,7180,7181,7182,7170,7171,8833,8862,8865,8894,9809,9811,8866,9817,9783,9808,9844,9845,8906,8904,8905,3395,7719,7720,3397,8896,3399,3400,7747,7173,3401,3419,7174,9787,8895,8897,9785,3406,3416,9819,7728,7731,3398] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [8442,8454,8471,4148,4149,4150,2729,4170,4171,4172,4151,4165,8440,2930,3938,4124,4138,3936,4132,4143,3910,8437,8438,8435,8470,2716,2718,2722,2717,2735] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [3369,3372,8975,2555,9728,9729,3368,3373,3378,2539,2548,2538,9691,9692,3374,3349,3356,3548,3549,3542,3170,3375] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [6246,2103,2104,6281,6282,1392,1393,1394,6206,6210,6243,6244,6245,6247,6248,6251,6253,2044,2045,6345,6336,6216,2082,2040,2081,2077,2078,2041,2043,2110,2111,2112] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2241,2242,2240,2261,5655,5656,1924,5716,1341,1343,1344,1353,1354,1355,5689,5216,5215,5217,5218,5181,5184,5183,4882,4883] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [74,75,77,78,80,81,82,83,38,99,101,100,9050,9059,37,76,5392] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [7823,7793,7831,7832,7833,8207,8206,7870,3887,8186,8359,8357,8192,8194,8187,7817,7819,7826,7827,7818,3879,3884,3868] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [5685,2052,2047,1899,1931,1933,1932,2050,1378,2046,5706,5707,5988,5989,1916] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [3872,8195,8196,8478,8458,8460,8462,7759,7760,7762,8229,8231,8230,8228,7771,7772,7773] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [4970,4996,6150,4643,4677,4967,4968,4969,5002,5003,5004,6111,6112,6113,6110,7685,7703] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [1892,5949,1590,2166,2181,2182,2210,5941,5943,1891,1944,1587,1589,1923,5716,2218,2245,1355] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [700,702,696,706,5279,5280,5281,5311,5580,735,736,737,738,711,712,713,5277,5608,5616] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [999,5013,5059,5060,5061,5062,5065,5066,5069,5038,5040,1000,1028,1023,1024,1025,997,12,5,13,14,2] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [5279,941,972,973,974,975,5229,5230,5231,5234,5280,5281,678,700,701,702,693,735,738,952,5245,734] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [4721,4761,4764,4755,2997,3274,4723,4727,4730,4739,4741,4768,4773,4774,4442,4440,4443,4444] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [4592,4593,1399,6254,4627,4342,6228,6293,6260,7594,7596,4341] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [9787,9788,3406,3170,3385,3399,3375,3372,8974,8975,9728,3378,9757,9754] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [1797,1800,1798,1801,1807,1665,1582,1647,1667,1866,1867,1580,1581,2174,1799] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [6511,6510,7019,6692,6691,6571,6572,6573,6574,6575,6651,6653,6494] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [6115,6419,5005,5031,7701,5022,5023] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [2044,2045,4593,4583,4584,6212,4616,6252,6253,1393,1395] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [932,933,901,903,929,1019,904,905,1014,1016,1048,619,1020] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        