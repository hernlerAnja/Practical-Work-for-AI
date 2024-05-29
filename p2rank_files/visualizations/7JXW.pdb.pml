
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
        
        load "data/7JXW.pdb", protein
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
 
        load "data/7JXW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5009,5910,5026,5911,5025,5007,5008,5336,5887,5140,5173,5174,4833,4834,4836,4838,5919,5920,5144,5921,5042,5045,5113,5117,5118,5119,5115,5146,5145,5149,5041,5058,5882,5881,5005,5334,5352,5337,5258,5259,5237,5238,5243,5898,5899,5252,5256,5879,5239] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [8838,8839,8869,8870,8872,8873,8726,8724,1743,2099,2104,2109,2111,2114,1734,1735,1736,8868,8741,8744,8906,8910,2119,2117,2118,2115,2116,1521,1545,1529,1509,1519,1520,1522,1524,1532,803,806,807,808,1534,1535,8813,8769,8836,8846,4340] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [8154,7193,8258,8140,7181,7183,7185,7186,7189,7190,7226,7180,8256,8250,8257,7378,7375,8141,7776,8170,8169,7741,7744,7746,7727,7739,7175,7224,7225,7174,7177,8249,7362,7722,7775,7768,7771,7800] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [4145,4114,4115,4146,4148,4149,8782,8783,8784,8791,4122,4182,4170,4019,4020,4186,4187,4017,4144,8557,8567,8568,8569,8570,8572,8593,8580,8582,4123,4089,7856,7857,7858,4045,7853,7865,9147,9152,9157,9162,8583,9167,4002,9159,9163,9164,9165,9166] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [5800,5374,5369,5357,5371,5799,5880,4804,4805,4807,4808,4854,4855,4856,5005,5352,4992,5430,5406,5401,5405,5398,5381,5382,5397,5770,5771,5784,4820,4823,5886,5888,4815,4816,4819,4832,4839,5009,5910,5008,5887,4842,4828] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [2530,2532,2681,2483,2668,2531,3018,3013,2496,2492,2480,2481,2484,3041,3042,3026,3050,3074,3524,3020,3443,2996,3015,3428,3530,3531,3532,2684,3415,3049,3414,3043,3045,3444] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [342,344,343,353,689,691,155,157,159,160,207,671,672,677,168,208,360,206,357,1200,1207,1208,167,175,179,726,750,156,718,721,694,702,717,725,1090,1120,1119,696,1104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [2684,2685,3554,2683,2508,2510,2511,2512,2513,2514,2980,2757,2762,2761,3531,3532,3523,2994,2995,2996,2902,2981,2701,2702,2977,2532,2681,2531,3533,3525,3526,3542,2881,2882,2883,2887,2896,2818,2819,2782,2789,2817,2903,2900,3536,3555,2784,2788,2759] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [7377,7378,7379,7396,7375,7706,7707,7204,7205,7206,7208,8280,7395,7201,7393,7412,7544,7543,7516,7514,7510,8281,7428,7487,7489,7411,7485,7515,7483,7488,7519,7454,7455,7226,8252,8256,8251,8257,8268,7628,7703,7722,7608,7622,7626,7629,7225,7723,8249] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [361,495,493,1199,1201,1202,1207,1208,1218,1219,208,360,359,357,579,654,656,657,469,465,466,670,671,672,673,573,558,559,572,342,343,353,666,207,576,578,660,652,653,1231,464,496,460,437,438,435,184,185,378,377,187,439,188] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [4160,4236,4240,4239,4280,4314,4312,4307,4310,4159,4221,1552,1554,1579,1580,1581,4219,4222,4223,4188,4187,1583,8765,4124,4313,4338,4339,4340,8781,8766,8768,8769,8796,8762,8759,9149] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [8883,8959,8963,6246,6273,6274,6275,8945,8911,8912,8946,6277,6279,8947,6271,2101,8951,8960,6248,8943,8937,1718,1720,1721,1722,1748,2100,2102,1765,8884,1733,9036,9037,9038,9003,9004,9005,1714,1788,1790,9062,9063,9064] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [1824,6437,6429,6428,1798,1799,6430,1796,1821,1822,1834,1788,1790,1833,6238,6239,6215,6213,6218,6216,6214,6203,1763,1765,6179,6226,6228] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [2910,2576,2578,2368,2369,2370,2577,2988,2388,2908,2907,2389,2999,2570,2571,2573,2572,2575,2662,2663,2428,2653] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [4986,4972,4977,4894,4900,4987,5344,5349,5355,5264,5266,4713,4895,4896,4897,4899,4901,4692,4693,4752,4711,4712,4691,5263,4902] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [254,43,44,45,583,584,65,246,247,249,251,252,253,104,63,64,664,338,339,324,329,669,668,675,586] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [7347,7356,7636,7265,7270,7272,7342,7264,7714,7357,7632,7634,7082,7083,7122,7633,7061,7062,7063,7266,7267,7268,7269,7271] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3084,3085,3472,3473,4571,3121,3123,3185,3186,3483,3223,3181,3182,3183,4487,3154,3144,3145] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [7880,7907,7909,7911,7908,7847,7849,7810,7811,8198,7912,8199,8209,9204,7870,7871,9211] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [5510,5501,5477,5479,5440,5441,5539,5541,5542,6857,5839,5394,5828,5829,5500] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [1755,1771,1772,2084,1773,6380,6381,6385,6407,6394,2070,2068,6257,6271,6287,6285,6262] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [1093,1094,1095,1551,742,1274,1496,1553,1275,1561] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [857,859,860,861,862,2172,2178,830,760,796,1149,1148,1159,761,2163,820] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [3265,3266,3267,2854,3264,144,145,3269,4647,2860,2861,3268,2868,2870] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [8611,8754,8616,8735,8639,4096,8761,4097,4392,8733,8734,4394,4079] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [3166,4378,4379,4490,3167,3171,4479,4385,4388,4492] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [3757,3896,3980,3754,3788,4172,4174,4175,4176] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        