
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
        
        load "data/5UL1.pdb", protein
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
 
        load "data/5UL1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3385,3388,3384,3389,3390,3391,3372,3565,3186,3195,3564,3187,9222,9223,9224,9229,9219,9220,9221,2588,9905,3546,2571,2572,9248,9249,9284,9881,9254,3380,3518,5117,3365,3382,5107,5106,3517,3530,3533,3558,9255,9257,9190,9191,9904,9906,9971,9942,9901,9903,2581,9943,9199,3396,10002,9979,3394,3406,3415,3416,3422,9122,10000,9878] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5042,4674,4675,4714,5043,4703,4676,4677,4959,4681,6229,4678,4679,4685,1367,4960,4992,4993,4995,4994,4996,4997,5750,5759,5760,5761,5762,6419,6415,6416,6499,6220,6399,6257,6255,6256,6421,6422,6423,6196,5754] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6490,6491,7085,7086,6412,6413,7083,7081,7005,6495,6515,6519,6521,6518,6546,6128,6127,6192,7089,6980,7084,6563,7006,6544,5906,7090,7092,6222,6508,6510,6511,6512,6513,5889,6108,5886,5887,6107,5900,5901] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [8457,8466,8467,8469,8486,8484,8485,4217,4218,4219,4239,4240,4241,4212,4220,8455,2758,2959,4006,4007,4191,4193,4194,4195,4196,4201,4207,8450,8799,8452,8453,8807,3980,3979,8798,8468,2728,2729,2743,2747,2751,2756,2764,4480,4481,4482,4483,4197,4228,2732,4226,8470,8473] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [5405,5404,5436,6471,29,9266,43,34,35,36,37,39,40,6454,6455,6448,6451,12,15,18,988,5059,5060,5378,5379,5380,5377,753,20,21,986,964,969,604,5368,5055,5080,5088,5090,6442,5032,6135,5434,5435,5468,5469,5470] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3399,3402,3403,3404,3467,3482,3387,6173,7714,7715,7717,7699,7751,4769,5101,5100,5116,5117,3207,5115,3492,7707,3478,3484,3487,3400,3405,3408,7754,7755] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3411,3413,3414,9119,9121,9122,3435,7181,9995,9999,10000,9997,10033,3415,3416,7730,7729,7758,7179,7180,9130,9131,10023,10025,9090,9091,9056,9058,10057,7175,7177,7182,7183,7186,9057] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [4819,4821,1086,1087,1088,4814,4820,1069,1070,1071,1072,3271,3508,3497,3501,3502,3505,5138,3499,4796,3230,3233,3234,3237,4808,4810,3258,3261,3265,3496,3498] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5295,5294,1344,1345,2298,2311,2318,5732,5733,5791,5792,1978,1981,2301,2303,2299,5793,5293,5253,5254,5292,2331,1334,4952,4953,1331,1333,5766,1341,1343] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [5357,5386,738,5388,735,736,737,5657,5693,5685,5351,5353,5354,5356,5358,948,678,700,696,5308,5311,945,968,971,937,969,701,702,734] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [8366,8367,8363,7843,7844,8210,8191,3956,8187,8190,8192,8211,7880,7841,7833,3937,8199,8200,7831] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [8279,2784,2691,8477,8461,8441,8442,2775,3452,3455,3440,3443,3444,3456,3457,2742,2753,2754,8468,8459,2782,2777,2781,2722,2723,3473,3474,8267,8273,8274,8270,3441,8268,8280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [3481,7774,4474,4475,3474,2737,2738,2740,3471,3476,4483,2741,2742,7753,7760,7763,7765,3480,7769,7772] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [72,73,74,80,81,37,38,75,76,77,78,9814,30,9263,9265,9236,9272,9261,9267,9268,33,32,100,101,9274,9275] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [8605,8780,8782,8784,8776,8777,8775,8633,8634,8635,8645,8646,8714,8603,8617,8596,8725,8726,8724,8586,8589,8593] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [1384,6290,6291,6292,6330,2128,6317,2129,2131,2097,2098,2134,2135,2138,6318,1426,2161,6282,6284,6280,2160,6319,6320] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [7772,7753,7760,7763,7765,3425,3455,3440,3443,3474,2740,2722,2742,2753,2754,8468,3441,8270,8232,8267,7782,8233,8235] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [6009,1948,2221,2222,6015,2236,2238,2239,1586,2227,1949,1981,2301,2302,2303,2275,6002,1980,6008,5793,2001] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [3434,8244,10059,10070,7783,8207,8217,8206,8213,8240,8241,8242,7178,7171,7172,8219,10096,10068,10093,7167,7169] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1973,2109,5783,5784,6051,6052,1989,1986,1987,2111,5762,1368,2104,2107,2139] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [6483,5953,6099,6100,5975,5974,5371,5800] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [8449,8450,8451,8483,8761,8803,8792,8795,8779,8791,3976,3977,8785,3979,8783,8502,8762,8500,8433,8482] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [2101,2102,2100,4663,4686,6290,6291,6292,1383,4653,4654,4685] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [3717,3692,3694,4314,3699,3739,3715,3716,4523,3718,4520,4315,4516,3023,4519,3024] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [4480,4197,4491,2728,4229,4231,4228,2732,2734,4226,4191,4193,4185,4486,4503,4504] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        