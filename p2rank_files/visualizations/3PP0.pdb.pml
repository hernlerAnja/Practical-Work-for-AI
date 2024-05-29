
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
        
        load "data/3PP0.pdb", protein
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
 
        load "data/3PP0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3417,3515,2660,3523,2658,2659,3403,2507,2509,2457,2458,2462,2463,3514,2656,2995,2997,3433,2508,3013,3018,3432,2641,2642,2643,4622,4619,4621,2460,3015,3531,3517,2886,3519,2904,2980,2982,2652,3044,3046,3043,3050,3051,3074] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [365,367,1221,1222,1228,218,182,166,167,216,217,172,178,691,1224,1236,501,704,705,706,1219,352,169,722,170,534,535,614,611,613,688,689,361,499,500,506,507,724,1141,727,752,755,759,1142,1112,760,783,595,1126,1220,692] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4270,4272,4237,4238,484,4209,4246,4247,4426,4429,4427,4428,4455,4405,4425,4391,4392,462,463,4353,4393,4397,517,518,519,520,521,1275,495,4213] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [389,390,446,468,472,419,478,480,383,384,445,1251,194,195,196,198,200,1265,1361,505,691,1224,1243,188,504] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3406,3407,2472,2473,2476,2480,3417,2660,3521,3523,2659,2509,2487,2489,3544,3536,3539,2485,3380,3545,3662,3680,3522,2481,2492,2495] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2762,2771,2737,2488,2479,2681,2680,2484,2675,2709,2490,3536,3538,2795,2485,2660] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2902,2905,2904,2795,3519,3528,3531,2886,3514,2995,2996,2658,2790,2792,2797,2791,2798,2980,2982,2983,2767,2801] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        