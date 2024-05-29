
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
        
        load "data/5IME.pdb", protein
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
 
        load "data/5IME.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2905,2904,2911,2550,2439,2565,2566,2559,2563,2583,2584,2673,2891,2892,2889,2906,2788,2407,2409,2411,2923,2925,2457,2456,2932,2929,2698,3374,2771,2772,3376,3377,3382,3384,3387,2695,2697,2669,2664,2665,2667,3278,3375,3383,3305,3306,2954,3381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [266,1082,1083,1084,1085,1090,1091,480,614,619,612,1013,1014,637,640,405,615,196,281,282,195,279,283,373,374,375,299,300,349,598,599,600,597,381,655,148,149,150,631,633,662,986] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [177,3453,3468,976,3467,3450,3451,959,997,3452,1087,1113,1115,1104,1106,341,172,3444,987,990,986,283,374,299,1103,337,338,339,173,176,196,282,1088,1089,1090,1091,348,3431,3440] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1226,1317,1610,1612,1585,1618,1614,1615,1608,1609,3853,3855,3857,1335,3831,3833,3858] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2623,2622,2621,2597,2589,2590,2592,2850,2640,2642,2868,2871,2650,2218,2226,2835,2648,2252,2596,2190,2193] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3214,2689,2723,3390,3174,3392,3213,2722,2662,2692,2695,2696,2697,2663,2666,3386] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3179,3181,3178,3608,3609,3610,3206,3616,4154,4158,4159,4163,3152,3618,4152,4153] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        