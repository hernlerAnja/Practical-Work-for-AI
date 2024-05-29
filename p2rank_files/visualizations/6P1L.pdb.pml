
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
        
        load "data/6P1L.pdb", protein
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
 
        load "data/6P1L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7688,7662,7665,7689,7692,7098,7660,7283,7696,7697,7721,8062,8064,7673,8091,8169,8170,8061,8075,7666,7648,8090,7146,7642,7145,8179,7147,7296,7299,7300,7106,7107,7110,7111,7643,8178,8177,7096,7099,7094,7095,7101,7102,7104] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3039,3047,3063,3066,2519,2520,3465,3553,2674,2666,2670,2673,3071,3095,3070,2488,3435,3436,3437,3449,2493,2496,2499,3438,3439,2656,2657,2660,3036,3040,3018,3464,3545,2475,2476,2477,2480,2481,2484,2521,2485,2469,2470,2472,2473] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [148,151,152,149,198,199,156,200,1130,1131,1210,1211,736,1101,1219,1115,737,154,155,700,336,335,688,702,706,707,682,683,705,729,732,761,353,1217,1218,664,349,352,345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [5772,5773,5853,5371,4876,5374,5378,4825,4826,5743,5757,5379,5403,4877,5026,5029,5030,4875,5852,5860,5861,4841,4828,4829,5330,5324,5325,5013,5348,5354,5341,5343,5344,5353,5355,5347] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [1159,1160,2173,4961,4943,1170,2185,2191,2174,2175,2170,831,834,2169,868,869,870,871,872,873,806,807,809,2253,2254,4919,4922,4937,4934,4940,2215,2218,4716,4944,4945,4947,4768,4766,844] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [7263,7268,7269,7270,7271,7251,2644,2645,2642,2643,7676,7661,7657,7658,2638,7674,7675,9247,2637,3048,3049,3050,7264,3035,3031,3032,4651,7652,4623,8107,8104,9235,9241,9242,9243,9244,9248,9261,3024,3025,3026,3027,9263,4629,4630,4632,4631,4635] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [5335,2279,5332,4998,4999,5000,2303,5339,5357,5343,5358,6946,2281,2282,2283,2284,2287,2275,715,716,4992,5001,6917,6923,6925,6926,317,324,304,6929,693,322,321,323,697,698] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [7643,8172,8189,8190,7464,7543,7544,7547,7549,8178,7466,8173,8200,8201,8202,7642,7625,7296,7298,7299,7300,7125,7628,7627,7316,7317,7408,7409,7436,7437,7406,7434,7440,8171,7529,7644] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [589,590,665,667,1213,1218,1241,664,349,351,574,583,504,505,1223,1230,584,587,1220,668,1242,444,446,475,448,449,450,369,370,178,180,1239,569,1227,1229,1210,1212,684,682,683] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [2360,2584,2587,2588,9133,9135,9130,7793,7795,7791,2605,7768,7731,7732,7801,2563,2566,2581,9214,2578,7832,9129,7833,8130,9213,9175,9178,8119,8120] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [5852,5854,5855,5860,5883,5884,5026,5028,5029,5047,5147,5149,5871,5113,5116,5046,5217,5226,5229,5231,5232,5307,5309,5306,5216,5225,5146,5118,5119,5122,5310,5091,5088,5212,5324,5325,5211] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [6857,6858,6859,6860,245,91,263,266,267,270,6827,6830,6831,38,39,5473,5475,5476,5512,5514,5515,275,6811,6801,5477,6896,260,5812,6895,5413,5414,5801,5802,284,5452,5450] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [6951,5174,2268,2271,2300,2301,2304,6954,5334,5222,5220,5239,5176,5178,5179,5204,5218,5214,5185,5189,5184,5838,5164,5217,2297] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [2310,6910,6913,6942,6943,6945,578,691,693,597,6912,2313,576,1196,2311,562,572,575,692,689,531,532,533,534,537,522,6906,6941,6870,6902,6909,22,580,579,6874] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [4601,4602,4564,4565,4566,3494,4525,4529,4531,4527,7204,7207,7210,7213,7228,7231,7192,6986,4516,4521,4523,4524,7036,7037,7038,7214,7217] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [2464,2475,2483,2513,5618,5655,2474,6620,5597,5595,5183,5623,5593,5625,5620,6621] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5819,6937,5808,5818,5188,5820,5821,5598,5539,5566,5573,5576,5807,5199,5200] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [3530,9264,2910,4658,4659,4661,9230,9231,2896,2912,2913,2856,2861,2865,2866,2867,2868,4662,2871,9260,9261,9259,9227,9228] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [4652,4616,4618,7653,9272,8156,7522,7536,9316,9319,7497,7482,7487,7492,9280,7508,9305,7557,7538] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1952,1948,7082,7095,541,7083,7084,978,981,1013,951,976,1979,1978,953] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [7759,7760,2620,7673,7679,7680,7718,7688,7689,7692,7719,7721] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [7111,7114,8179,7300,7127,7129,8039,8075,8066,8064] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [4053,4048,3926,4058,4009,3818,4059,4202,4204,4205,4206,3784] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6499,6342,6498,6501,6078,6304,6219,6220,5933,6303,6347,6112,5910] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [2559,2560,2561,9203,3009,3010,3008,2417] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        