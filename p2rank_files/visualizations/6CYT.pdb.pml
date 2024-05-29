
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
        
        load "data/6CYT.pdb", protein
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
 
        load "data/6CYT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5185,5187,5224,5216,4548,4549,4550,4814,5223,4529,4530,4531,4805,4806,4802,4516,3957,3958,3960,4492,4490,4491,3991,4489,3939,4169,4170,3940,4813,4135,4136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [470,324,1237,1238,322,323,307,199,744,747,739,160,775,142,143,145,141,200,718,719,721,720,724,1140,1232,1233,1236,1239,1231,1155,1156,761,762,1132,769,773,774] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2982,2985,2987,2988,3011,2976,2977,2981,3287,3285,3286,4964,3759,3920,3918,4995,4997,4945,4998,4959,4965,3770,4912,4925,4927,4928,4929,3757,3765,3758,4913,3725,3731,3736,3721,3771,3275,484,485,486,487,3720,520,1283,1069,4958,1060,1061,1048,1056,1057,3722,3716,3710] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3892,3897,3898,3902,4835,4836,4837,3870,4875,4876,4865,3896,4888,3868,3871,5131,5135,5132,4860,4859,5137,3926,3929,3931,4170,4887,4889,4891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4127,4156,4157,4286,4147,4208,4205,4206,4201,4204,4207,4281,4283,4189,4209,4212,4129,4740,4155,4371,4372,4301,4272] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [412,3634,3667,686,668,669,670,671,672,673,353,355,356,3602,379,380,382,405,404,402,403,409,3629,3630,3633,3627,3605,3609,630,676,640] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5053,5057,5058,5062,5210,5169,5200,5201,2909,2940,2939,2910,3414,5252,5253,2876,5202,5242] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2653,2682,2680,2804,4448,2654,4039,4005,4038,4040,4006,2838,2811,2809,2810,4484,4482,4510,2775,2776,2785,4509,2837] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3728,3718,3037,3733,2627,4021,4022,2624,2626,4059,2607,3077,3706,2580,2582,3730,3734,4065,4066] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2675,38,39,40,27,2595,3106,2712,2713,2638,2639,2670,2671,2696,3118,3112,3114,2615] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1560,1563,1499,2322,2328,1924,2315,2324,2321,1502,1554,1537,1539,1977,1933,1941,1536] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2861,3181,3179,3180,3190,3173,3176,3137,3138,2824,2825,2827,2828,2829,2853,2855,2860,2858] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        