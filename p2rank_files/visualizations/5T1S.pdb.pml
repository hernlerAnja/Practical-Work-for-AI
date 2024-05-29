
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
        
        load "data/5T1S.pdb", protein
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
 
        load "data/5T1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5671,5673,5675,7575,7915,5236,5237,5654,5659,7576,7591,7573,5357,7619,7621,7655,6395,7628,7627,7901,7903,7904,3094,5335,5336,7899,5226,7911,7476,7913,7518,7914,7466,5333,5340,5352,5334,5356,5351,5278,6389,6394,6396,3080,5379,5380,5381,5387,5389,5415,5377,5388,5663,7593,7596,7597,8635,7592,8636,7574,7580,837,5664,5376,6404,8644,8642,8641] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2485,2491,2487,2488,2489,2490,2493,3068,2996,2997,2998,3000,3005,3029,3038,3004,3368,2539,2540,2541,2627,2527,3367,3467,3468,3469,3470,3473,3375,3476,2830,2832,2977,3391,3392,2946,2947,2948,2949,2950,2642,2643,2952,2508,2524,2520,3076,2967,2969,2971,2973,2976,2984] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [6953,6954,7090,6951,7003,6908,6948,6949,7458,7873,7314,7428,7429,7430,7874,7949,6956,7004,6957,6959,6968,6969,6971,6955,6950,7849,7950,7857,7955,7956,7958,7951,7952,7455,7449,7451,7453,7025,7432,7211,7434,7105,7472,7473,7478,7479,7466,7520,6907,6913,7558,7487,7486,7550,7511] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [904,1188,1190,855,861,862,867,868,871,902,903,1896,901,872,891,892,894,1925,898,848,849,850,5648,5650,5044,5647,5696,5221,5222,5036,5063,5201,5079,5082,5681,5682,1186,1184,1189,928,1178,5035,1176,5033,1179,5047,5043,5651,5655,5658,5206,5228,5229,5210,5227,1916,1917,4813,4817,4818,5207,7560,1915,1923,7562,4819] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [7887,7888,7890,7936,7446,7469,7935,7462,7468,7450,7452,7322,7442,3145,3147,7071,7441,7319,7072,7076,7077,7290,3433,3421,3429,3431,7922,7275,7276,7283,7284,3134,7891,7895,7898,7467,7921,3093,3094,3092,3098,3103,5320,5322,4144,4151,4149,4150,3109,3110,3111,3114,3115,4157,4159,4156] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [5238,5239,5242,5271,5215,5219,5220,5633,5634,5218,4693,4694,5199,5188,5190,5192,4695,4832,4744,4745,5232,4847,4848,4746,4701,4704,4714,4715,4717,4703,5246,5247,5609,4691,4692,4698,4690,4697,4699,4648,4650,5225,5209,5211,5213,5226,5072,5073,5709,5710,5074,5711,5712,5189,5194,5617,5715,5716,5718] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [228,264,229,230,232,1132,1225,1224,1226,1230,1233,215,216,211,213,214,262,350,263,735,1148,587,588,589,730,714,703,706,363,364,365,708,704,707,709,486,250,1227,757,761,762,1124,1149,728,726,733,753,754,755,734,209,210,784,785,786] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3134,3136,3138,7323,7335,7336,7338,7339,7047,7084,6761,7070,7327,6735,6739,6740,6741,6743,6716,6725,7071,4454,4457,4458,4459,3194,4456,4190,4191,4448,7056,3131,3133,3163,3122,4155,4171,3169] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [725,742,743,5479,6644,6646,1170,1172,1173,1174,5515,5516,5517,6680,727,744,5051,5455,5456,5457,5458,5459,5042,5484,5480,721,336,722,331,716,337,6620,6621] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3415,3416,3417,8884,8885,8886,7719,7755,7756,2985,2986,2987,3413,2614,2968,2964,7757,8860,8861,2959,2597,7282,7697,8920,7699] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5212,5213,4767,4765,4782,7467,6913,4780,6910,7466,5227,7452,7453,7025,7040,6908,6906,4646,4647,4650,4671] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [2222,2223,2225,891,893,895,888,890,920,879,4481,5095,5098,5099,5096,4811,4812,4813,4789] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1629,1614,1622,8326,8341,1899,1900,1901,1882,809,807,810,8601,8617,8618,8619,8620,7535,1891,8333,8348,7532,7534] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [2220,2222,2223,2225,2214,891,893,888,890,920,879,921,1956,1957,881,4795,4796,4798,1937,1938,1921,4812] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [8578,8576,8581,8570,8326,8609,8611,8340,8341,1628,1629,1622,8394,1662,8393,8402,1663,1666,1647,1648,1649,8583,8620,8333,8348,8368,8395] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [893,895,4481,5095,4482,4483,4484,5098,5099,5096,4503,4788,4789,4790,4811,4812,4813,4826] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1629,1607,1614,1621,1622,8341,1649,1675,1901,1891,8368] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [7819,6985,7979,7980,6976,7822,7839,8083,8084,8090,7857,6972,6973,7956,7957,7958,6969,7954,7173,7971] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1859,1621,1622,1674,1862,1864,1866,1675,8367,8368,8382,8384,1851,1857] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3856,3848,4133,4134,4135,5294,3052,3050,3053,6093,5286,6379,6380,5292,6378] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7225,7253,7255,7202,7227,7228,8002,7785,7998,7257] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        