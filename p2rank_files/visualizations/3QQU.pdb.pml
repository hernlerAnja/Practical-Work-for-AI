
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
        
        load "data/3QQU.pdb", protein
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
 
        load "data/3QQU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3408,2373,2375,3409,3411,2372,2427,3433,2576,2578,2428,2378,2379,2381,3451,3452,2384,2429,2394,2391,2399,2400,2978,3327,2951,2959,2974,2946,2975,2376,3328,2948,2953,2934,2561,2984,3434,3428,3431,3435,3427,3008] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [179,1205,134,1206,131,177,123,121,127,128,129,556,326,1163,1165,178,311,1181,1182,1185,1186,1189,1188,1187,1081,696,697,720,1082,125,691,122,679,693,698,728,730,753,729,1213,328,141,164,1169,149] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [7473,7474,7477,7481,7482,7483,7451,7447,6878,6879,7445,7450,7310,7452,7433,7865,7970,7064,7864,6874,6875,7997,6876,6930,6931,6932,6887,6894,7969,7977,7968,7972,7963,7965,7079,7948,7945] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [5719,5745,4618,5243,5217,5219,4813,4814,4625,4626,4633,4623,4624,4617,4619,4669,4670,4671,4621,4622,5711,5713,5717,5718,5696,4630,5613,5183,5187,5612,5181,5186,5209,5210,5213,4799,5693,5050,5169] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [2636,2624,2628,2631,5700,5712,5714,5715,5716,5720,5692,5698,5699,2622,5548,5550,2626,2632,5562,5798,5800,5555,5559,5599,5597,5722,5727,5728,5732,5723,5596,5598,5733,5734,5541,5542,5543,5544,5704] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [937,971,2019,2018,2000,2001,2013,966,963,1494,1997,2002,967,968,961,962,1459,1460,1470,1472] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [532,533,899,900,1124,1128,1107,1115,2109,1109,1111,2119,2120,2157,2158,2117,2118,871,874,2121,2105,2122] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [2720,4903,2230,2234,4929,4938,4940,4959,2229,4931,2690,2742,2744,2243,2247,2248,2249,2250,2849,2238,2239,4902,4904,2281,2862,2863,2237] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [4252,4242,4247,4250,3740,3704,4269,3716,3714,3705,3706,4259,3212,3183,3217,4268,3207,3208,3213,3209,3214,3707] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [4365,4366,3146,3374,2787,2788,4404,3370,4355,3120,4367,3357,3353] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [7628,7630,7631,7632,7518,2368,7654,7627,7663,7682,7665,7625,7899,7900,7901,7903,7898,7517,7550,7551] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [5378,5379,5381,5382,5349,5647,5648,5650,5411,5646,5413,5649,5253,5254,5651,5653,5353,5286,5287] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [5037,6685,6654,5026,5642,5659,5431,5405,6636,6684,5027,6646,6648,6649,6645] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [6539,6540,6541,6552,6557,6536,5466,6545,5492,5493,5494,5498,5499,5468,5502,6558,5497,5998,5999,6033,6000] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [681,682,683,688,531,1144,1145,1094,1095,1099,1109,1110,1111,533] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [8791,8794,8795,8796,8786,8250,8251,8261,7746,7749,7720,8285,8812,8813] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [428,324,327,328,332,150,161,164,157,154,423,451,454,1169,149,326,1163,1165,179] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [2709,2429,2574,2682,2394,2391,2399,2400,2404,3408,3409,3410,3411,2576,2577,2578,3407,3428,3415,3427] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [5025,5027,5676,4752,4753,5675,5641,5642,5658,5659,5170,5171,5172,5173,5174,4776,5178,5625] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [3357,3391,3340,3355,3356,2937,2938,2821,2819,3345,3350,3354,2943,2955,2936,2818,2786,2787,2788,3390] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [1118,847,848,1117,882,1115,1116,764,1120,880,881,819,845,842,844] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [7894,7897,7898,7906,7907,7911,7890,7657,7683,7286,7912,8895,8899,8907,8908,8909,8911,8910,8912,8948] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [3019,3361,3362,3363,3128,3018,3052,3051,3094,3126,3095,3069,3366,3364] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [7017,7041,7434,7435,7287,7928,7437,7892,7893,7894,7877,7442,6996] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [1643,1503,1920,1777,1506,1918,1764,1771] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        