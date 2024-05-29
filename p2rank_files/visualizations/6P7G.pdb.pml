
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
        
        load "data/6P7G.pdb", protein
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
 
        load "data/6P7G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1173,679,657,1076,1077,672,674,1185,120,121,651,1156,1158,1046,1165,1168,1171,683,1050,1049,1183,1184,1186,1153,630,514,629,252,170,264,169,650,652,434,435,406,409,1159,407,267,684,677,709,710,711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [2217,2307,2299,2216,2699,2167,3215,3097,3096,3232,2659,2698,2311,2313,2314,2456,3206,2662,2164,3203,3216,2730,3121,2731,3093,3217,3219,2677,2561,2676,2681,3123,2705,2704,2719,3124,2721,2724,2701,2481] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5312,5314,5405,5408,5421,5422,5423,5287,5415,5402,5404,4887,4888,4889,4894,4406,4407,4497,4501,4487,4488,4489,4849,4504,5396,4646,4909,4911,4914,4916,4947,4921,4946,5285,5286,4948,4920,5310,5390,5410,4750,5283,5393,4891,4895,4751,4866,4867,4871,4357] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7363,7365,7469,6967,6971,6972,7334,7337,6960,6962,6965,6410,6411,6408,7471,7474,6458,6555,6556,7455,7453,7444,7446,7447,7456,7458,7460,6417,6456,6697,6457,6540,6938,6940,6917,6939,6945,6552,6918,6722,6802,6723] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1126,3140,3148,3142,1119,1093,1095,1101,485,1125,1127,1143,490,3147,3173,3167,2524,2532,2537,3190,639,521,522,477,519,2568,2569,2685,2686] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [405,406,409,407,408,1160,425,426,427,981,986,462,944,505,433,434,435,514,1150,943,1000,1147,1153,1156,992,998,999,994,1163] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4671,4672,4748,4670,5397,4643,4663,5231,5237,5390,5393,5391,4699,4742,5180,5181,4664,5218,5229,5223,5384,5235,5233,5396,4644,4645,4646] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2474,3028,3045,3046,3047,3033,3039,3041,2470,2475,2476,2473,2480,2481,2482,2991,2990,2509,2552,3194,3201,3203,3193,3200,2453,2454,2456,3206,3207,3210] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2196,2198,3319,3320,3208,3209,3210,3066,3083,3382,3225,2314,3206,3374,3373,3369,3223,3097,3214,3224,3095,3370,3346,3349,2180,2183,3238,3344,3371,2193,2189,3229,3235,3237,3063] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6715,6714,7231,7232,7269,7282,7274,7280,6694,6695,6697,7444,7441,7448,7287,7435,7288,7286,6721,6750,6793,6802,6723] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2947,230,240,2917,2949,3174,2544,2925,2926,2927,222,2529,2530,2536,643,233,236,2537,2928,2894,1094,1095,1104,665,667] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4938,5284,5285,5286,4940,4939,330,331,5425,5427,329,366,5273,5424,5287,5462,5419,392] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [489,497,2690,3141,2283,2691,2693,900,902,2714,2712,1127,879,880,878,1126,3140,3142,3150,847,870,881,2280,2284,2287] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2118,2119,2121,2090,2095,2100,2102,2305,2322,2136,2610,2655,2637,2632,2634,2638,2621,2633,2122] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6356,6360,6361,6363,6371,6359,6563,6377,6880,6896,6873,6862,6874,6341,6851,6850,6331] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2971,4123,4125,4126,4155,4153,225,211,205,206,219,220,62,198,199,227,229,4185,203,204,200] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6157,6160,6161,6162,6179,5186,5185,5587,5590,5592,5188,5623] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6593,6594,4308,4823,6592,4512,4824,4827,4312,4309,4311,4845,4800,4495] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        