
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
        
        load "data/8DJD.pdb", protein
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
 
        load "data/8DJD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7234,7317,7524,7525,7575,5739,7535,7536,7537,7538,6135,7531,7532,7564,7565,5887,5905,5912,7566,5874,7211,7573,5981,5885,7302,7298,7265,7266,7297,5422,5426,5738,5524,5525,5526,5735,5737,5780,7350,5706,6437,6438,6136,6516,6534,6472,6486,7351,6470,6453,6483,3330,3400,3370,3373,3397,3398,3399,3447,5471,3446,3498,3367,3375,7726,7774,7755,7725,3426,3427,3429,7757,3734,3758,3764,3762,3763,3715,3744,3746,3341,3343,3336,3340,5478,5481,5483,5779,5794,5439,5445,5447,5448,5466,5485,5460,5487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [400,8415,8483,8485,8532,405,411,8484,2144,2175,2176,2227,2448,2485,2447,2476,2474,2475,8438,8458,382,394,419,421,460,412,415,417,8428,2208,2209,2212,2207] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [373,419,421,460,2434,2260,1045,1044,671,672,673,1329,1330,360,459,640,1355,1360,1375,1345,358,2227,2445,2446,2448,2435,2441,2442,838,1425,1426,2261,1362,1364,1378,2208,2207,356] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [8850,8849,8851,8532,8531,403,405,411,2476,2481,837,2474,2475,8458,8460,2670,2640,2672,8831,8833,8802,8818,8821,2483,2121,2641,2508,814,412,415,799] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3349,3359,3360,3412,7883,7882,2878,7941,7960,2797,2798,2873,2875,7751,7748,7741,8424,8444,8445,2663,2666,2705,2796,8497,8498,7881,2724,2728,3413,7813,3339] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1500,1555,1652,1721,1556,1719,1723,1720,1722,1724,2305,2307,2308,1501,1802,2279] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [7395,7398,6642,6742,6662,6663,6608,6891,6892,6609,7397,6814,6811,6813,6810,6812] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5542,5544,5340,5342,5385,5541,5718,5383,5384,6288,6289,6388,6252,6253,5095,5096,5719,5545,5546,5761] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [695,1198,1197,316,477,315,475,479,480,271,273,1162,1161,54,26,27,478,476,693,1280] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [8458,2670,2672,8831,8833,8821,8850,8851,8455,8532,8511,8583] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [9757,9818,10142,9744,9755,9553,9638,9607,9608,9596,9809,9816,10140,9769,9781,9790] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        