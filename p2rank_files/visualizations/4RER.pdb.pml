
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
        
        load "data/4RER.pdb", protein
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
 
        load "data/4RER.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6965,6950,6951,6966,7396,7399,7403,7404,7405,7406,6372,7397,6968,6978,6979,7231,7412,6932,6933,7416,7166,7225,6228,2787,2790,5549,5690,6370,6353,5696,6229,6959,6960,6956,5695,5697,5987,6211,6215,6216,6217,6218,6219,6204,6197,6809,6827,6808,6208,5682,5704,2776,2779,7381,2807,2778,2808,7216,7235,7220,7222,7228,7198,7201,7204] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [276,277,632,650,15,16,17,75,651,3745,3746,3747,4018,4019,4020,4024,18,21,164,3974,3976,3975,274,287,291,138,141,323,3764,4002,129,321,322,145,146,147,148,149,3985,3986,111,610,611,624,3741] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [1194,1195,1197,1087,1099,717,724,1115,1187,1189,1190,723,1198,674,1188,1191,1196,102,699,714,103,685,673,252,253,254,105,115,116,154,156,268,269,155,98,99,100,257,262,1114,696,702,678] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [6325,6327,6331,6329,6379,6334,6335,6336,6338,4823,6337,5556,5539,5555,5535,5538,5541,5552,6368,6370,6371,6373,6377,6351,6352,6374,5546,6228,5533,2789,2790,5547,5366,5378,6227,4809,4810,4816,4819,4831,4830,4829,4808,4811,6381,5342] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [2653,5098,2562,2592,2593,2555,2561,2563,2530,2531,5349,2654,5086,5087,5089,2256,5099,5307,5309,5311,5314,5318,5319,5320,5292,5290,5291,2267,2269,5081,2288,5080,5316,5317,5280,5282] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [1987,1977,1980,1981,1974,1963,4869,4867,4868,4870,1989,1949,1950,4719,4720,1946,1939,1463,1464,1466,1467,1470,1472,1473,1497,4695,4690,4693] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [7529,7528,7549,7550,7551,7515,7513,6621,6622,6623,6624,6823,6828,6808,6817,6820,6832,6821,7516,6662,6661,6658,6816,6645,6651,6206,6363,7408,7542,7543,6219,6220,6198,6199,6202,6203,6809,6811,6162,6168,7575,7414,6833,7415] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [5682,5663,5704,5705,5948,6209,6224,6061,6208,6210,5664,6034,5984,5986,5995,6019,6035,6037,5987,5696,5695,5697,6189,6197,5657,5660,6054,6048,5956,5958,6042,6043,6055] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [5053,6291,6303,6318,5045,5046,5044,3594,5062,5063,5073,5067,5069,6269,5118,6290,5050,5055,3504,3584,3586,3583,3514,3516,3515,4910] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [5157,5159,5011,5012,5013,5158,4998,4982,4985,5009,5014,5137,5138,5140,5528,5462,5496,5499,5519,5520,5521,4954,2884,2891,2894,2915,5518,2912,4952,4953,4958] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [1285,1278,1282,1436,3368,3387,1276,1297,1437,1301,3179,3177,3178,3180,1302,3209,3171,3207,3210,3492,1281,4480,4481] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [4124,4122,4314,4315,4288,4297,4298,4299,4100,3895,3896,3897,3898,3899,3854,3855,3857,3894,4187,4189,4181,4182,4184,4185,4186,4188,3900,3901,3902,3903,4270,4271,4285,4101] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [2939,2940,4929,2941,2945,3686,3685,3716,4966,4968,5010,5004,5005,2922,4950,4946,4944,4945] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [3554,3563,6260,6293,6295,6257,6271,6274,3569,3570,5633,5637,3572,5645,6258,6261,6067,6053,6050,5641] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [2236,2237,2224,2225,2231,2232,2235,2227,2218,2220,996,2155,2164,2165,2166,2144,992,995,2238,959,2261,938,964,966,968,510,512,495,1007,1008,2222,1006] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [6419,5282,5272,5273,5283,5248,2523,5246,6463,2554,6451,6449,2549,6448,6470,6464,2519,2552,2553,2520] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [2628,4830,4829,4808,4811,2634,2639,2641,6381,4804,4809,7387,7391,6406,6407,6408,6404,2774,6366,6368,6371,6373,6377,6367,6374,6329,6379] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3753,3755,4095,3737,4056,3882,4038,4040,4034,4023,3847,3846,4024] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [2799,4815,4816,2797,5525,2825,5518,2821,2823,4769,4772,4774,4767,2820,2827,5371,5530,5531] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [6541,7588,5223,5225,6399,6425,6428,6426,6429,6435,6436] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [2511,2512,2513,2514,2515,2538,2507,2497,2536,2537,2539,2215,2391,2394,2229,2501,2389,2392,2244,2503,2504] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [7580,7581,6611,6613,6592,6596,6528,6530,6532] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [2367,2395,2472,2251,2499,2500,2492,2495,2498,2333,2276,2493,2270] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [3237,3678,3647,3675,3105] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [1607,742,1593,1567,744] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [58,230,232,248,59,666,570,567,583,568,569,572] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [5477,5451,5454,5455,5714,5873,7053,7055,7056,5453] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        