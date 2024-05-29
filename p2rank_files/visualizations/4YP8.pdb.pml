
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
        
        load "data/4YP8.pdb", protein
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
 
        load "data/4YP8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7506,7502,7503,7482,6909,6906,6907,6904,6910,6911,7026,4770,4772,6905,4756,4757,4640,7490,7491,6954,6955,6952,7025,7078,4635,4636,4641,4642,7039,7474,7476,7477,7091,4141,7897,7510,7511,7873,7874,7534,7535,6963,7527,6951,6957,7003,7004,7005,6958,6959,6962,6970,6971,6972,7881,7898,7980,7981,7982,7862,7453,7454,7105,7106,7456,5656,7593,5226,7578,5225,5224,1931,1933,1932,6914,5208,5210,5211,7544,7570,7574,7579,6915,7582] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7642,7644,7652,7653,7679,7935,7651,7615,5354,5343,5350,5351,3073,5338,7500,7937,7939,7600,5669,5671,5652,5656,5657,5235,5349,5331,5673,5234,5233,5224,7542,7645,6396,6397,5355,5385,6403,6404,5374,5376,5378,5379,5387,6405,7616,7620,7621,5413,7597,7604,856,5659,5662,7598,7599,5386,5661,6402,7925,7927,7918,5332,5333,5334,7928,7501,7916,7490,7491,7919,3075,5412,8662,8663,870] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [7959,7486,7923,7465,3093,3109,3105,3106,7470,7467,7471,7474,4140,4141,5312,7314,7960,7308,7327,7307,2989,3424,3426,3086,3428,3031,3427,3104,7914,3088,7921,7922,7492,7920,5320,5318,7945,3089,3080,3082,7346,7344,7466,3140,3141,3129,3142,3110,4146,4147,4149,7076,7072,7073,7343,3414,3416,7299,7300] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [7586,874,886,887,890,5645,5646,5648,5220,868,869,5679,910,1939,1941,891,5077,5199,1912,5653,5654,5656,5226,7578,5649,5227,1931,1933,4804,4808,4809,1932,1938,4807,5204,5208,4803,7584,922,923,1203,1205,1207,921,1197,5694,5033,5034,5041,5042,947,5078,5079,5080,870,770,861,863,867,812,1209,5048] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2992,2995,3000,3021,3387,2999,3362,3363,2968,2971,2979,2985,2991,2972,2973,2966,3071,2503,3063,3023,3024,2504,2505,2507,2508,2555,2556,2557,2658,2509,2510,2511,2514,2515,2521,2524,2543,2506,2643,3370,3469,3470,3471,2941,3386,2942,2944,2946,2943,2945,2657,2947,3033] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [772,773,774,776,780,805,1168,230,231,232,233,747,752,760,749,753,186,814,852,844,236,1144,1143,282,237,238,283,284,1243,1244,1252,253,250,251,252,1151,239,240,241,242,248,249,728,384,385,234,370,754,1167,722,723,725,727] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4734,4735,4736,4837,4703,5209,5211,5213,4686,4822,4835,4836,5244,5245,5269,5632,5607,5608,5230,5236,5224,5216,5237,5240,5278,5631,5615,5072,5188,5714,5715,5716,5187,5189,4681,4682,4683,4688,4690,4689,4685,4640,4684,5316,5308] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [4661,4655,4656,4657,4578,4668,4575,4576,4577,6930,6937,6938,6846,6926,7025,7040,7041,4636,7039,7024,7026,4769,4770,4771,4772,6905,4756,4757,4755,4637,4640,4669,6906,6904,6909,6847,6844,6845] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4475,4473,2238,4474,4476,4471,4472,5093,910,912,914,1941,1937,907,5096,5094,5097,1953,898,2230,900,1972,1973,4777,4778,4780,4801,4803,4779,4802,4816,4493,4491,1952,1954,939,940,2241,970,2236,909] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3411,7305,7722,7748,7781,7743,7745,7779,2963,2980,2959,2981,2982,3408,2965,7723,8947,7721,8911,8912,8913,2630,2625,8887,8888,2613,2624,2629,2960,2628,3410,3412,7780,2954,7313,7315,7322] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3167,7347,3133,7360,7363,7362,3129,3131,3126,3128,3158,3117,7085,7048,7070,7072,4145,7071,7055,4161,6717,7359,4444,4447,4449,4438,7057,4180,4181,6740,6741,6762,4446,6742] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1189,1193,5039,5456,1191,6681,5453,5477,6646,5515,6622,5513,5514,746,761,762,763,744,1192,5040,5454,351,357,6621,740,735] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7474,7476,4140,4141,5312,7077,7025,4645,7078,4642,7039,7923,7491,7492,7920,5327,7026] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7978,7994,7995,7194,6981,7122,7123,7124,7107,7105,7439,8003,7197,6982,6984,7843,7979,7981,7846,6986] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [8353,8367,8605,8608,8360,8368,8420,8421,8422,8429,1678,8610,8647,8375,1682,1664,1665,8597,1679] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2522,2523,2524,2525,2526,2529,3352,3362,3363,2536,2538,2539,3335,3370,3469,3470,3471,3351,3595] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1638,1623,1637,1878,8395,8408,8409,8410,1690,1699,1711,8412,1880,1882,1837,1678,1917,1867,8394,8414,1838,1645,1691,1665,1689,1630] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3899,3898,3907,3845,3919,4088,6148,6147,4125,3846,3831,4075,4116,4046,3838,3853,3886,6129,6142,6128,6146,3873,4090] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6372,3871,3872,3873,3890,3886,6129,6142,6101,6102,6344,6154,6155,6163] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [2686,2682,2723,3483,3484,3487,2720,2533,2534,2535,2676,2536,2538,3335,3492,3470,2659,3467] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [8360,8368,1638,8645,8646,8647,1915,1916,1917,7558,828,1630] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4123,4124,5292,6379,3045,3047,3048,4125,3838,6380,6381,6094,6102] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2314,2637,2851,2609,2623,2294,2296,2852,2247,2250,2256,2257,2258,2248,2624] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        