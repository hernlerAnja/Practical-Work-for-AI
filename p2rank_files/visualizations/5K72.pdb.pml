
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
        
        load "data/5K72.pdb", protein
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
 
        load "data/5K72.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6907,6820,6821,7679,7654,7644,6786,6789,7260,7263,6771,6768,6819,6766,6767,6765,6778,6779,6785,7258,6770,7235,7237,6920,6922,6800,7291,7292,7655,7271,7283,7284,7287,7316,7355,7155,7678,7754,7755,7756,7643,7662,7051,7238,7239,7761,7763,6802,7233,7234] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5059,4694,5034,5031,5033,4706,5111,5058,5078,5079,4552,4553,4554,4560,4557,4558,4555,4606,4607,4608,5150,5158,4510,4509,5474,5473,5550,4838,5055,5049,5053,5051,5066,4573,4709,4587,4563,4565,4566,4572,4594,5457,5558,5449] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3027,4015,3043,3044,3034,3039,3040,3063,3064,3021,3074,3075,3076,3355,3356,3358,3066,3070,3100,3101,3020,3022,3023,2923,2965,3361,3362,3360,7246,7740,7741,7160,7163,7247,3102,3350,7124,7125,7116,7117,7692,7693,7695,7705,7726,7727,7709,7128,7132,6892,7251,7255,7273,6889,6893,6894,7257,6888,7696,7272,7700,7703,3986,4005,4006,4007,3993,4000,5160,5162,4012,4013,4014,3348,3351] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [5511,5513,5227,5515,7396,7397,7385,5503,5504,5494,5501,7379,7380,5219,5229,5255,5221,5254,7401,8424,8432,837,839,8425,841,853,7716,7718,7699,5175,7704,7720,7281,5076,5191,5514,5173,5167,5176,5118,7424,7426,7433,7459,7460,7431,7432,7402,7421,8433,8430,7706,7708,7709,5192,5197,5196,6228,5180,5174,3008,3009,6220,3010,3011,3023,3016,6219,6225,6226] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [2485,2439,2487,3396,3397,2451,2452,2453,2454,3304,3403,3405,2434,2435,2436,2437,2486,2573,2886,2902,2907,2875,2876,3320,2772,2771,2773,2431,2896,2925,2926,2929,2933,2934,2958,3296,3321,2900,2905,2913,2433,2877,2878,2585,2588,2589,2879,2880,2881,2669] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [726,728,730,756,237,238,1150,1151,1126,1134,1227,1226,735,732,236,239,240,244,245,290,291,292,393,706,707,709,711,708,710,591,1228,487,247,249,250,256,257,1235,378,705,241,194,394,788,764,757,759,763] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [904,905,906,874,5535,5041,893,894,896,4950,4947,5042,5487,5488,5490,5491,5495,851,870,873,857,7367,1876,5521,5522,1188,1190,1192,4914,5536,4903,4911,4912,4915,930,932,1180,4896,931,753,4919,1181,1186,1191,928,844,850,852,853,846,795,4679,5046,5050,4675,4676,4680,4681,5068,5069,5499,1897,1896,1883,1890,1902,1903,1904,1905,7365,4931,4904] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [895,897,4320,4961,4963,893,4967,2201,2203,922,2205,2200,890,892,929,4966,4346,4348,4343,4344,4964,4365,4675,4689,4649,4650,4651,4652,4674,881,1917,2194,4660,1936,1937] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [7502,7504,7500,7501,8675,7524,2914,2915,2897,2899,3342,3346,7122,7123,3345,7533,7529,7525,2554,2555,2560,2549,2553,8650,7560,7562,2559,2893,2894,2888,7561,7131,7139] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [3060,3063,3065,3051,3053,4046,4047,4304,4015,3059,3062,3067,3099,3092,3093,4315,4310,4311,4313,4314,7176,7177,7180,6556,6557,6558,6560,6561,7179,6870,6887,6873,4027,4011,6888,6864,6886,6901,6578,6576] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [6504,6468,6470,326,348,6445,5356,5357,354,5319,6444,4926,5297,5299,4909,4910,5326,5321,5324,744,745,1174,1175,1176,727,729,360,363,724,359,364,365,4918,1172] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [6857,4527,4528,4529,4644,4641,4643,4540,4541,4447,6721,6746,6740,6742,6839,6840,6841,6842,6725,6838,6724,6854,6856,6660,6754,6661,6663,4448,4450,4449,6753,4629,4522,4533,4539,4508,4511] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [5066,5067,5068,5499,4629,5052,4681,5050,7272,7271,4644,7257,7258,6840,6841,6842,6724,6726,6721,4642,6727,4508,4511,4533] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [743,753,4917,4919,4918,5520,5521,5522,5517,5255,5251,5254,5279,4926,4927,5299,5249,5250,5523] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [3712,3697,3711,3949,3952,3764,3773,3954,5965,3991,3719,3704,3739,3765,3941,3947,5951,5952,5969,5966] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [1233,1234,1235,270,272,256,257,260,261,264,278,292,393,1099,1115,1116,1351,1134,394,275] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [4573,4576,4589,4709,4580,4584,4587,4572,4594,4591,5438,5439,5422,5457,5458,5558,4608] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [6821,7644,6786,6789,6785,6793,6800,6804,6920,6922,6807,7763,6802,7643,7662] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6154,6160,3753,3754,3755,3757,3758,3738,3739,6169,6162,6165,5924,5925,6167,5986,5977,3752,5978,5952] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [5925,3712,6203,6204,6202,3989,3990,3991,2981,3704,5135,5917,5134] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [5910,5923,5924,5925,5977,3752,6204,3739,5917,5932,5978,5952] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [1881,1602,1879,1880,7339,8408,8409,8122,8130,809,811,812,1594,8407] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [334,335,372,613,29,49,28,615,359,333,357,358] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [5878,5880,5881,5913,6046] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [4885,5602,4829,4855,4856,4863,4850,4857,4852] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        