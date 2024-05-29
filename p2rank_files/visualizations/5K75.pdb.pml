
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
        
        load "data/5K75.pdb", protein
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
 
        load "data/5K75.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3365,3074,3076,3078,3361,3363,3364,3359,3036,3042,3038,3041,4082,4084,4075,7000,4081,6995,3064,3105,3068,3101,3102,3103,3104,3062,3061,6994,3019,3020,3021,3012,3014,3018,3025,7849,4076,4083,4055,4062,4069,5263,2963,7886,3066,7266,7267,7268,7386,7387,7391,7264,6998,6999,7248,7223,3353,3354,7214,7215,7222,7871,7839,7845,7846,7847,7848,7395,7413,7850,7229,7235] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5358,5332,5619,5621,7518,7536,810,7525,7537,7520,5602,7521,7512,5611,7519,5322,5324,7563,7565,7599,7600,7573,7571,7572,7541,7542,8589,8591,7853,7854,7844,7861,7863,7864,7865,7421,7463,5357,8583,8582,8588,5300,5330,5299,5319,6339,6340,6342,5283,5295,6333,5277,3007,5276,5278,5294,5623,5179,5180,5279,3005] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [1876,5144,844,845,864,865,840,841,5595,5596,5597,5629,822,823,821,828,5149,5153,5171,4748,1866,1867,1868,4745,1874,1875,4744,5599,5603,5605,5606,5607,7507,834,835,1854,1861,7505,1847,4750,4749,5024,5025,877,879,881,908,1156,1162,4987,1167,1168,4993,1164,1166,1154,5164,5642,5643,5644,5018,5022,5023,4972,4980,4981,4973,5150] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [6925,6927,6897,7027,7899,7900,7807,7905,7029,7150,7901,7902,7906,7908,6908,6909,7400,7405,7823,7373,7384,7374,7375,7376,7378,7379,7394,7396,7013,6926,7257,7258,7259,7377,7432,7431,7799,7824,7424,7455,6883,6885,6887,6888,6896,6898,7800,7404,7403] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [2391,2438,2439,3399,2769,2771,2406,2407,3408,3401,2397,2404,2405,2874,2875,2877,2879,2539,2541,2878,2661,2927,2931,2932,3323,3299,3324,3400,3300,3307,2385,2387,2389,2955,2894,2903,2896,2884,2900,2905,2525,2873] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [5182,5183,5185,4677,5582,4625,4676,4778,4642,4643,4645,4635,5189,5190,5213,5558,5557,4626,4623,4629,5581,5657,5658,5565,5132,5134,5136,4906,4907,5133,5137,4908,5659,5666,5152,5158,5161,5162,4763,4627,5154,5131] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [272,273,374,680,1127,1102,679,1110,1126,1209,1211,681,682,1202,1203,1204,468,237,243,244,245,247,249,250,259,271,703,707,708,359,676,687,677,678,238,727,730,734,758,735,242,706,241] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [4978,5001,5002,5406,5382,5400,4979,1149,5434,5436,6618,6617,335,340,341,345,346,1152,5630,5399,5428,5432,6582,6584,5427,5465,6558,6559,5463,5464,329,332,714,715,716,725,1145,1147,1148,1150,1151,4989,4991,4993,724,694,695,698,700,689,294,5629] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6947,6948,6835,6838,6860,4712,6854,6855,6856,6822,7411,7397,7412,4697,4698,4710,4713,4501,6868,6962,6963,6759,6770,6774,6775,6776,6777,4518,6866,6867,6804,5170,5606,4696,4602,4694,4609,4610,4512,4516,4580,4577,4596,4598,4517,4519,5155] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [5039,4413,4412,2173,4415,1876,861,864,866,868,5041,5042,860,4744,4434,4742,4743,4757,4720,4432,852,899,1907,1908,2165,2171,4729,1872,1889,2174,863,898,2176,5038] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2913,2510,2891,2886,2506,3349,2501,2504,2505,7669,7706,7707,2459,2460,2511,2895,2473,2507,2512,2495,8830,8831,8832,8833,8807,8808,8864,8867,3345,3347,3348,7220,7221,7678,2912,7642,7644,7646,7648] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3063,3061,6992,6993,6994,6976,3065,3062,3058,4381,4382,3095,3049,4116,4080,4097,4379,4384,4115,7284,7280,7281,6970,6692,6670,6671,6673,7283,7007] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [2912,7233,7235,7244,7624,7243,7642,7644,7648,7594,7595,7596,7621,7871,7858,7867,7872,7873,3344,3345,3348,7220,7221,8833,8867,2913,2921,2911,3014] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [8315,1802,1843,1808,8332,8334,1773,8314,8329,1573,1600,1625,1626,1810,1572,1813,1815,8328,1634,1558] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [8286,8287,8288,1613,1614,8340,8349,1600,8273,8295,8315,8341,8528,8530,8525,8523,1617,1619,8489,1599,8517] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1565,1850,1851,1852,8565,8566,8567,1573,8288,1849,7479,8280,782] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [2410,3272,3289,3430,3288,2419,2420,2421,3424,3429,2407,2408,3406,3407,3408,3420,3421] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3773,3781,6039,4058,4059,6316,4060,5237,6031,6317,6318,5229,5235,2977,2979,2980] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [6024,6039,6038,6065,3808,6091,6092,6031,6318,6309,3825,3827,3807,3806] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1788,1811,1694,1730,1561] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        