
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
        
        load "data/Q9UGJ0.pdb", protein
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
 
        load "data/Q9UGJ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2421,2972,2962,2422,2444,2445,2684,2688,2737,2726,2728,2961,2955,2957,2960,2941,2782,2739,2779,2784,3559,3561,3562,3563,3566,2731,2763,2764,2948,2949,2437,2434,2436,2471,2403,2404,2397,2400,2405,2693,2697,2698,2699,2977,2975,2976,2804,2789,2798,2800,2806,2393,2780] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2979,2982,4151,4152,4153,2965,2967,2419,2421,2962,2422,2955,2283,2286,2284,2426,2430,3578,3579,3702,2437,2969,2971,2949,2968,3560,3708,3711,3696,3698,4148,4150,2977] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2969,2970,2971,4285,4283,3568,3570,2946,2948,2949,2968,2950,3560,3581,4165,3585,3580,3569,3575,4257,3394,3399,3401,3573,3361,3362,3359,3574,4269,4271,4293,4292,4253,4256,4149,4152,2921,2916,2947] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3912,3913,3914,3917,4128,3982,3952,3679,3954,3976,3968,4145,4148,4150,4155,4139,4141,4143,4159,4162,3680,3980,3708,3711,3696,3698,3725,3726,3677,3748,2290,3714,3716,4151,4133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3076,3083,3078,3124,3100,3101,3127,3128,3131,312,2100,2080,2082,292,291,2107] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1857,1859,1861,1878,2899,2873,2901,2903,2900,2902,2905,1860,1862,4344,2871,2880,1879] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        