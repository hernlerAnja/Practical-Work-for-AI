
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
        
        load "data/7AVX.pdb", protein
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
 
        load "data/7AVX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [638,653,654,1213,1221,1224,460,461,1242,302,303,304,305,306,637,320,321,412,435,436,437,433,410,125,127,171,290,670,170,172,553,439,438,1219,1220,1214,1215,123,124,129,130,131,658,534,535,676,673,1108,1136,1212,703,1137] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2318,2432,2799,3373,3375,3376,3377,2317,2444,2446,2447,2448,2784,2269,2270,2275,2276,2277,2271,2273,2316,3358,3359,3361,3362,2652,2800,2852,2849,3282,3283,3281,2819,2822,2848,2814,2816,2818,2830,2797,2858] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3354,3355,3356,3357,3358,3359,3363,3364,3365,2651,2800,3350,3370,2556,2605,3193,3194,3195,2554,3211,3213,3150,3151,3353,2643,2446,2448,2462,2463,2784,2799,2552,2558,2559,2578,2553,2648,2603,2668,2670,2532,2783,2562,2527,3207] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1831,793,1586,1587,2939,2938,792,3631,3875,1598,1599,842,844,1597,789,790,786,788,2988,2990,3643,2934,2932,2935,2936,2937,3641] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2874,2876,2883,2911,2859,1641,1647,1648,3257,3255,3663,3649,1618,1620] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3156,3157,3505,3155,4064,3512,3513,4058,4061,4063,4071,3504] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        