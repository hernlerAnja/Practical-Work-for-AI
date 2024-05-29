
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
        
        load "data/5LVP.pdb", protein
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
 
        load "data/5LVP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3427,3426,2380,2912,2500,2655,2498,2499,2515,2955,2958,3344,3343,2321,2323,2325,2378,2379,2327,2328,2322,2963,2966,3315,3327,3432,3435,3433,3434,2619,2621,3448,2359,2360,2356,2358,3457,2341,2366,2344,2365,2348,2932,2926,2769,2917,2483,2910,2935,2928] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5131,4718,4719,4875,5645,5646,5647,5648,4717,4597,4598,4599,4585,4552,4553,4559,4560,5546,5651,5652,5653,5654,5136,4988,4702,4838,5667,4848,4579,4840,4578,5668,5670,4577,5676,4874,4734,5154,5174,5177,5182,5562,5563,4544,4541,4542,4547,5151,5145,5147,5185,5534] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [6925,6822,6940,7360,6821,7217,7874,7875,6942,7775,7880,7881,7882,6783,6808,6820,6775,6776,6782,7365,7104,7376,7383,7403,7406,7791,7792,7411,7763,7414,6767,6763,6764,6765,6770,6771,7374,7380] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1106,1212,1214,282,1213,711,1123,689,696,1122,1205,1206,691,281,435,714,715,734,737,745,109,110,121,122,162,280,148,128,129,265,160,161,705,707,111,113] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1227,434,408,375,396,398,400,1212,1214,282,1213,435,1205,281,297,298,339,141,142,337,333,280,147,148] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [9069,9070,2215,9067,9068,499,501,557,502,2455,2235,2236,2419,2420,2477,2794,2796,2790,2791,2806,2808] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [2732,228,4326,4249,214,4327,3171,3173,3194,2750,3193,3195,206,4344] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6896,4941,4942,4997,6897,4995,5015,5016,6895,4954,4957,6917,6919,7242,7244,7245,7226,7224] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [501,557,555,2454,2455,235,236,237,575,2778,576,2797,2796] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4951,5412,5413,5414,6874,6866,6879,6888,6543,6545,6556,6544,6568,6583,6887,5391,5392,6466,6467,4969] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [9004,9005,9002,18,19,202,259,573,2723,201,585,587,570,569,2720,2721,2722] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [6673,6658,6659,6706,6707,5454,5456,5457,4938,6859,6882,6862,6875,5421,5423,4939,4942,6708,6705] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2424,973,2027,2116,2103,2104,2105,2115,529,952,512,2432,2446,2143] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [8789,8776,8777,8778,8788,8700,4664,4665,7621,4651,4643,7641,7642,7619,7644,7639,7640] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [7450,7479,7447,7449,7832,8867,8871,8873,8863,2208,7400,809,8866,8875,8881,810,2197] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2163,894,2088,2084,2094,860,888,889,892,882,884,883,2093,863] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [9133,6672,6673,4913,4919,5456,4938,6861,6882,6862,4939,4940,4941,4942,7254,7238,9131,6919,7239,7242,7256] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [8861,7564,8758,8759,8757,8756,8761,8766,8840,8860,7529,7532,7557,7561,7553] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6828,6950,6733,6736,6734,6735,6737,6739,7336,7316,7317,7318,7337,6689] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7775,7882,7883,7751,7752,7735,7969,7904,7966,7905] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4605,4727,4606,4510,4511,4512,4513,4515,4516,5089,5063,5087,5088,4466,5107] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        