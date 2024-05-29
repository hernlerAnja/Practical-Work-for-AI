
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
        
        load "data/5UKJ.pdb", protein
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
 
        load "data/5UKJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5003,5742,5751,5752,5754,5753,4965,4966,4967,5002,5001,6428,6430,5048,5049,4998,4999,5000,4963,6254,4691,4682,4683,4684,2076,4720,6228,4680,4681,1363,6219,6255,6256,6398,5746,6418,6415,6421,6422,6195,6197] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [6107,6127,6163,6489,6490,6494,6501,6514,6520,6545,7017,6517,6410,7093,7095,6411,7104,6190,6191,7097,7098,7101,6106,5920,6104,5879,6507,6508,6509,6510,6511,6512,6562,6992,7018,7096,6556,6543,5878,5893,5881] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [3384,3388,3389,3390,9213,9214,9216,9217,9895,9896,2572,3564,2571,2588,3565,9906,9223,3186,3195,3187,3385,3558,5112,5113,3530,3533,3380,3382,3517,3518,3365,3553,3556,3545,3546,9242,9868,9871,9215,9218,9219,9249,9251,9248,3550,9278,9183,9893,9903,9870,9188,9190,9193,9932,9933,9969,2581] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [5372,5396,5397,6469,18,29,9260,5370,5371,44,23,5369,35,19,21,34,39,5428,964,5065,5066,960,986,988,12,13,15,962,605,969,967,753,754,5038,5360,5061,6441,6447,5090,5094,5096,5086,6450,6453,6454,5453,6134,5427,5462] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [7713,7716,7717,7719,7701,7755,7757,3402,7760,3387,3399,3403,3466,4775,7709,7707,7708,3478,3492,3207,3467,3484,3487,3477,3481,5107,5106,5121,5122,5123,5129,3409,3405,7758,3408] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [10013,10015,9985,7198,7185,7187,10047,10048,9056,9058,9091,7195,7196,9118,9090,9130,9129,9131,7729,7188,7731,3408,7189,3415,3416,3435,10023,3412,3413,3414,9120,9121,9122,9989,7732] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [8459,8460,8461,3994,3995,8458,8476,8477,8478,4222,8447,8449,2752,4252,4020,4021,4022,4206,4207,4208,4216,4200,4239,4227,4230,4237,4231,4251,2741,2722,2725,2745,4490,4487,4212,8465] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [3498,3499,3502,3223,3237,3228,3339,3340,1081,1084,3261,3264,3271,3273,3258,4802,3497,3501,3352,3505,3230,3233,3234,3312,1069,4826,5144,1067,1068,4825,4827,3508,3509] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [5350,700,5349,5311,5314,970,945,948,678,5345,5346,736,737,5378,5381,5649,735,738,5675,5676,5677,5681,5682,5685,754,755,734,702,703,971,969,966,967,968,732,701,936,937] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [3482,4483,7776,3479,3481,3472,3473,3474,4490,2734,2735,2736,7762,7767,7771,7774,7765,3443,7755] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [2135,6285,2071,2112,6291,2102,2108,2109,1380,1379,2072,2074,2075,6254,6288,4690,4691,4692,2076,6318,6281,6283,6284,6319,2134,2142,6373,6249,6252,6253] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [9932,9968,9960,9961,9991,9992,3411,9151,9153,3406,3401,9990,9181,9183,9184,9185,3391,3394,3186] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [8768,8595,8597,8773,8776,8625,8626,8627,8636,8638,8609,8585,8588,8581,8680,8716,8717,8718,8706,8578] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [2272,2278,2279,2281,2285,2288,5724,5758,5725,5297,1339,1341,5298,1955,5257,5259,5260,2303,2304,5295,1330,4958,4959,1327,1329,1291,1292,1293,1337] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [8273,8438,3440,3444,3448,3452,3455,8279,2684,2716,2736,2747,2748,8453,2717,2776,2778,3473,3474,3456,3457,8267] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [37,38,100,9257,73,74,75,80,81,9266,9268,77,9804,76,78,82,83,30,31,32,67,72,593,9259,101,9831,5461,9269] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [6495,6496,6497,6498,6499,5745,5743,5741,5742,5751,5754,5773,5775,6081,6082,6087,6097,6084,5731,6056,6503] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [6972,6973,6981,6982,6985,6569,6604,7010,7301,7318,7328,7330,7317,6963,7302,7278,7284] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [6057,5776,2083,2085,6046,6047,2078,1364,2081,1961,1963,1947,2113,5754,5753] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [2213,2212,2201,1573,2210,2241,2242,1922,6001,6005,6007,1574,2196,1975,2249,1953,1954,1955,5785,1923,5994,5998,6000] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4520,4522,4523,4547,4797,4524,3019,3290,4815,4817,4803,4806,4831,4837,4840,4799,3268,4533,4849,4850,4545,4844] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [7831,7843,7830,7882,8367,7805,7806,7845,7844,8210,8187,8190,8191,8192,8211,3971,7833,7835,3952,8198] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [4491,4212,3945,3946,4453,4211,3979,7775,3952,8200,3960,3955,3954,7771,7773] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [7337,7338,8030,8029,7291,8049,7416] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        