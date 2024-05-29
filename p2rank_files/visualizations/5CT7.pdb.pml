
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
        
        load "data/5CT7.pdb", protein
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
 
        load "data/5CT7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [623,1128,1129,2634,3140,2633,2520,2521,510,2476,1079,1080,1081,230,231,627,628,198,227,232,234,649,630,651,2484,2487,2488,2489,2496,507,509,485,476,477,478,470,471,2235,868,1111,1113,486,866,867,2249,465,887,889,2243,2246,858,3090,3092,3100,3091,2660,2662,1112,1105,869,3139,2879,3122,3123,3124,2878,2880,1086,1087,1089,3116,2869,2638,2639,2253,2250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1154,1157,1159,667,1032,1145,1151,1153,668,614,502,1142,162,164,117,121,123,618,636,246,163,254,596,258,1062,642,653,1063,656,663,638,641,632,635] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2629,2649,2652,2265,2645,2646,2647,2653,2513,3170,2182,2183,2277,3153,3155,3156,3161,3162,3166,3168,2667,3074,2140,2674,2678,2679,3073,3164,3165,2624,2625] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [984,986,972,978,980,930,413,415,414,967,493,1133,502,1139,1140,1142,394,397,1146,1147,1148,392,423,421] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2510,2433,2434,2408,2461,2504,2940,2941,2425,2978,2401,2405,2426,2983,3150,3151,3153,3157,3158,3159,2995,2989,2991,2513,3144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2963,2964,2965,2955,46,26,45,2930,37,222,210,11,12,25,33,66,2928] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        