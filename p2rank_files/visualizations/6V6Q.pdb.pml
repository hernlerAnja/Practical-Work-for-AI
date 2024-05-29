
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
        
        load "data/6V6Q.pdb", protein
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
 
        load "data/6V6Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2480,3606,2483,2487,2488,2489,2491,2493,2496,2498,2499,2776,2779,3506,3507,3603,3604,3605,3627,3629,3602,3619,3620,2517,2519,2678,3038,2675,2676,2677,2786,2808,2469,2492,2500,2501,2502,2503,2809,2753,2774,2780,2784,438,440,441,442,3789,209,3790,3470,426,454,3768,3769,3771,3628,3492,2461,3087,3090,3522,3521,2462,2465,2518,2464,3056,2662,3495,3496,3117,3083,3080,3062,3598,2922] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [399,400,401,531,1287,1288,1290,1302,1303,215,216,219,221,222,1311,1312,499,502,1313,1455,1457,240,242,192,203,226,227,214,223,224,206,210,2703,1179,2717,2719,211,2486,2495,2497,2756,1190,1180,1154,1474,1473,2715,1452,1453,2730,2731,2757,2718,397,398,509,476,497,498,503,504,507,1289,1205,1176,1206,188,184,185,187,241,385,761,785,803,777,782,765] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5041,5042,5043,7971,7997,8207,7324,7326,7348,8119,8120,8103,7319,8122,8190,8191,8187,8188,8128,8129,5039,5055,8186,7316,7059,7217,7218,8106,8107,8101,8104,8105,7996,8007,7349,7033,7023,7027,7029,7036,7038,7028,5027,7031,7032,7040,7041,7039,4819,4810,5080,5081,7042,7043,7020] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4825,4826,4828,4831,4813,4815,4817,4818,4824,4816,7255,7271,4823,5989,5987,5988,4819,4820,4821,4822,4804,4807,4827,4811,5002,5919,5920,5921,5918,5001,6005,6006,5785,5809,5811,5821,7257,7259,5810,5984,5985,5942,5943,5944,5934,5935,5936,5986,5101,5103,5110,5132,5100,5077,5917,5925] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4841,4842,4843,4999,5000,4986,5362,5366,5383,5002,5919,5920,5921,5807,5835,5836,5837,4785,4793,5407,5411,5414,5404,5386,5391,5403,4786,4788,4789,5378,4804,5914,5246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [7004,7057,7058,7059,7217,7218,8106,8107,8021,8022,8099,8023,7620,7627,7630,7993,7202,7578,7577,7582,7216,7381,7462,7382,7001,7002,7009,7020,7596,7005,7599,7602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [454,468,469,3769,3771,479,218,219,220,221,222,502,1454,1455,1457,2495,2497,2499,2756,2779,1453,2730,2745,2746,2747] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4087,3819,3105,4039,3495,3818,3106,3107,439,440,442] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3199,6497,5525,6277,6288,6287,4288,6505,4281,4062,3201,4060,5523,6267,4072] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1446,1466,1594,1512,1537,1542,1445,2739,1571,1572,1429,1393] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2146,2145,2038,2213,2215,2063,2032,2035,2065,2214] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [6611,6614,6319,6321,6186] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        