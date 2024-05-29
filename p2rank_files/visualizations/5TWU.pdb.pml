
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
        
        load "data/5TWU.pdb", protein
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
 
        load "data/5TWU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2502,2497,2469,2492,2493,2495,2498,2499,1144,663,1165,493,494,665,1108,1125,1127,1128,2527,2523,2525,2526,2501,1145,530,664,483,527,528,2123,2124,2125,2126,475,2470,2473,512,662,666,669,670,273,548,550,2481,673,1116,1115,1117,274,2534,268,270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3686,3276,3279,3280,2764,2768,3272,3283,2799,2783,2800,3779,3773,3780,3781,3784,3776,3778,3767,2765,2770,2767,2910,2911,2894,3253,2893,3251,3254,3794,3796,3040,3118,3120,3011,3258,2892,2897,2903,3297,3293,3294,3295,3687,3658,3305,159,174] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5085,3715,3725,3726,2874,2875,5049,5050,5052,5053,5082,5076,3264,3268,3260,3261,3262,3263,3763,2878,3125,3126,3146,3148,3110,3128,3081,3089,3092,4674,4675,4676,4677,2879,5020,5024,5046,5048,3703,3712,3267,3714,3706,3743,3723,3091,3271] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [305,306,1175,1178,1180,1181,1182,653,655,442,521,522,413,1183,1186,1187,1088,681,289,660,672,678,685,166,167,172,168,170,194,195,2779,707,734,2749,704,1089,695,696,699,2754,2758,2750,2757,1060,1189,2777,2778] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3212,3211,2595,2598,2932,2935,2650,2791,2792,1062,2612,2648,2793,726,1065,1049,2606,2915,2928,2789,2918,1072,1048,1061,1189,1032] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [186,187,188,3646,3659,3660,3661,3662,3647,330,353,3845,180,184,310,52,10,50,3324,8,614,613,4,3323,203,311,313,314,327] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [897,1148,508,893,2075,498,2076,2117,2118,920,921,2070,2079,507,898,493,494,1145,1146,1147,900,884,859] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3106,3518,3519,3746,4621,4623,4626,4627,4630,3745,3093,3096,4669,3495,3482,3483,3486,3491] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2619,784,1515,2684,2683,2618,2644,2658,762,761,2647,2622,758] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2263,2264,2262,2423,2425,2428,247,248,2253,104,249] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1952,2090,2092,937,960,962,968,969,972,938,2088,1918,1921,1917,1922] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [10,23,3320,3322,3868,3663] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2608,2620,722,724,2621] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        