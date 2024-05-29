
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
        
        load "data/3PCS.pdb", protein
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
 
        load "data/3PCS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9932,9958,9959,9962,9960,9961,9996,9997,10377,10376,10378,9994,174,198,199,10388,10399,10400,10677,10676,9929,9934,912,918,919,926,933,931,934,9930,151,160,775,776,777,779,185,154,156,192,158,181,180,171,175,176,177,178,173,917,806,179,9936,10375,10382] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2220,2221,2226,1360,2209,2210,1364,1365,1366,364,365,366,467,1781,2214,348,2224,451,452,453,465,466,524,525,526,527,436] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3931,3944,4708,4709,3900,3901,3907,3908,3913,3914,10975,10980,10986,3948,3950,3975,3981,3916,4667,4682,4683,10993,10994,3892] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [9493,10340,8482,8508,8509,9491,9492,9196,10341,9194,9228,9229,8485,8483,9506] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [9517,9518,8522,10369,8610,8521,8523,8527,8623,8624,8683,10380,10383,9521,9522,9523,9938,10373,8608,8609,8593] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [6842,7663,6844,5843,5944,5930,5931,7667,7668,7674,7679,7675,7678,7680,7685,6003,6004,5945,7260,5848,5842,5844,5914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [9396,10082,10097,10098,9365,9329,9331,9346,11177,10123,10124,11158,11176,11163,11167,11169,9363,9390] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [9905,2406,9906,9907,2715,2719,2407,2387,2378,8653,8654,8655,8659,8803,8788,8805,8798,2368,8630,8622,8620,8621,8666,8667,8790,2718] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5830,6549,6550,7635,6811,5803,5804,5806,7636,6515,6517,6813,6814] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1209,1206,1233,10881,10882,1239,10863,1967,1940,1941,1172,1174,1150,1965,1966] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4075,4939,4940,4076,4077,4078,3779,3036,3063,3813,3037,3039] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [896,2354,2675,2674,2692,2355,897,895,915,9895,9897,2381,892,2379] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1071,326,325,352,1335,1336,1350,1037,1039,328,2182,2181] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3884,3888,3933,7826,7825,8128,6391,6392,6393,7807,7808,7833,8146] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [897,899,2009,2434,2660,2675,2001] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3623,3628,2891,3642,3488,3490,3517,2889,2892] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        