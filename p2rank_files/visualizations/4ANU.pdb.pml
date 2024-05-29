
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
        
        load "data/4ANU.pdb", protein
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
 
        load "data/4ANU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4919,3379,3742,4944,4945,3694,3696,3698,4458,4468,3390,4941,4943,472,968,4472,4473,4471,473,1097,1099,1124,1125,1126,1127,1128,3421,3740,4459,5104,4456,5114,3378,3662,3695,3697,3380,3382,3663,3693,3392,4973,4977,3393,5005,5007,5008,5009,1081,1084,1085,1086,1110,1119,1120,1123,1111,1112,1114,554,3359,3360,487,501,488,502,499,5081,5077,5084,4883,5083,5098,5101,5105,1151,4965,4968,4971,4972,5057,5065,4966,4967,5045,5046,5047,1149,1150,1158,1159,5001,5035,543,545,5041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4629,4585,4651,5840,5842,5839,4813,4612,5831,5833,5834,5753,5816,5754,5197,5222,5221,5836,5835,5235,5230,5224,5234,5738,5726,5730,4589,4595,4596,5256,5092,5094,5095,5174,5175,4793,5180,5194,5192,4879,4792,4811,5090,5091,5198,5200] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4482,4477,4478,4479,4437,4438,975,976,977,978,4501,4010,4502,3648,3650,4480,3984,974,997,998,3663,986,450,451,452,453,3656,3659,3655,3660,434,1248,1249,1277,3652,3978,1286,3654,3976,3977,4008,4007,3975,3974] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3193,1615,3198,3199,3200,3201,6299,6330,6331,3187,6274,3211,2608,2609,3159,3163,2843,2854,2851,2878,2879,2641,2841,2842,3212,6421,6385,6387,6386,6419,6420,2619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3403,3404,4954,4984,6250,6224,6226,6227,4979,4980,5016,4976,4978,4977,3108,500,3125,3127,3112,3335,3110,3366,3367,3368,502,3119,3128,3121] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5332,5320,5281,5270,6720,6738,6739,6741,5312,5318,5282,6740,6742,6743,6744,5342,5343,5246,5249,5729,5248,5711,5713,5714,5283] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3797,4843,5137,5138,5139,4859,6340,6341,6342,6345,6346,2274,6352,4860,3793,3800,3804,2285,2286,2287,3822,3824,6334,6335,3475,2273,6327,2279] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5680,5870,5871,6413,6411,6412,5665,5671,5673,6438,4901,6293,6321,6323,6409,6410,6348,6361,6368,6371,6350] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3523,3524,233,217,215,2055,2059,2143,2310,2315,2316,2317,2318,2319,2322,3819,2042,2048,188,2323,2328,3854,3855,199,216,207,208,209,3827,3828,3851,3856,3853,240,241,2062] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [968,967,4493,1098,953,957,958,4492,4771,4694,4695,4727,4757,4740,4741,4753,4754,4762] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [968,4473,966,473,1097,1099,3663,986,4482,4477,4480] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2232,2245,2272,2274,6346,6352,6355,3793,3800,3804,2284,2286,2287,3822,3824,2029,2273] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5904,5906,5907,5652,5654,6577,6614,5645,5647,6441,6439,6437,6466] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5044,5553,1148,1146,5045,5047,5061,5540,5545,5546,5581,5583,5584,5541,5522,5552] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1590,1591,1592,1938,2292,1937,1956,1939,1614,2256,2295,2296] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1895,3226,2960,2988,2990,2992,2993,2961,2959,2932,2934,2937,3235,1904,2117,2115,1902,1892,1898,1886,2963] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        