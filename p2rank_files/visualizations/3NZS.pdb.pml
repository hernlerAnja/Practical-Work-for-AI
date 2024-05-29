
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
        
        load "data/3NZS.pdb", protein
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
 
        load "data/3NZS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4870,4871,4872,5008,4869,5011,4810,4845,4846,4847,4835,4868,1060,1062,1064,4383,4385,4386,5031,5041,4837,5025,5028,3384,4814,4897,4898,4899,4893,4894,4895,4900,4901,1087,4932,4973,4934,4935,4867,1059,1094,1055,1056,1085,1086,1046,1047,524,4929,516,4962,4968,4933,514,444,443,1020,1033,3342,3343,3353,3355,3356,3322,3346,3625,3626,3660,3656,3658,3659,3661,4400,3704,3705,458,474,3323,472,4936,1022,1021,1048,1050,4978] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4762,5794,5791,5793,5665,5762,5763,5768,5769,4740,4512,4576,4578,4541,4522,4523,4556,4496,5663,5758,5760,5761,5680,5148,5681,4806,5020,5102,5103,5127,5107,5119,5121,5124,4805,4738,4778,5101,4719,4720,5653,5656,5657,4530,4524,4529,4516,5162,5183,5184,5664,5157] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [6335,6244,6188,6212,6213,1578,3156,2220,2222,2224,3162,3163,3164,2603,2578,2577,6182,2572,2582,2571,2576,3150,3161,3160,3173,3175,2841,2842,2838,1569,3125,2806,2604,6305,6307,6310,6341] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [4365,3972,3973,4363,4364,4428,4429,3947,3945,3617,3939,1221,1213,405,1184,1185,406,3613,3615,423,914,4405,4406,912,913] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3298,3090,3329,3330,3331,3075,473,474,471,472,3084,3088,3091,3082,3071,3367,4911,6163,4905,6162,4943,6141,6139] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6288,6326,5607,5797,5798,6237,6264,6286,5773,5600,5598,6349,6350,5592,6205,6207,6323] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2273,2274,2022,2023,2024,2018,204,187,2277,3487,211,165,168,177,179,180,188,2281,212,159,169,3817] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [5211,5639,5640,5641,5654,5655,5656,5657,6694,6692,6693,5648,5176,5175,6704,5235,5247,6668,6670,5208,5228,6698,6699,5269] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2243,2244,2245,3767,3785,3787,4787,3756,3766,4770,3738,3438,6249,6270,6271,2231] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [444,442,921,1016,1017,1018,920,1023,1024,1027,1033,904,4400,923,4409,3626] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1855,1861,1865,1866,2899,2080,2415,2419,2424,1284,2414,2923,2956,3189,2425,2952,2954,2900,3205,3195,3198] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4419,5110,5112,5109,4398,4399,4401,4698,4420,4699,4694,4701,4689,4385,5024,5025,5111,904,4400,5116,5135] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [4680,4681,4688,4689,4621,4654,4666,4419,4698,4420,4685,4655,4667,901,903,889,893,4651,904] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1968,1969,1686,1440,1441,1685,1683,1945,1458,1461,1481,1483,1457] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5538,5753,5551,5732,5839,5843,5842] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1157,652,653,814,823,825,848,850,852] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4863,5543,5569,5564,5565,5568,5541,5779,5608] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1149,4644,659,4646,1147,4647,4649,891,639,640,641] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3796,2268,3798,2280,3782,3826,3827,3486,3790,3819,2274,2275,3462,2270,3453] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        