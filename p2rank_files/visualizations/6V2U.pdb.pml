
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
        
        load "data/6V2U.pdb", protein
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
 
        load "data/6V2U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3077,3148,3154,3157,3161,3171,2293,2513,2199,2281,2198,2295,2296,2297,2179,2181,2653,2657,2658,3075,2511,2512,2633,3078,3162,3047,3076,2149,2146,2155,2157,2158,2161,2162,2152,2153,3163,2656,2671,3073,2682,3074,2683,2673,2510,2526,2614,2628,2629,2611,2431,2434,2504,2509,3170,3174,3175,2460,2433,2279,2649,2651,2284,2289,2650,2148,2280] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [252,624,120,640,642,250,119,619,251,501,502,504,1065,1067,1069,1066,1068,1145,1064,673,674,1041,451,495,500,264,268,124,125,168,169,170,267,266,126,1154,1148,1152,1049,1153,422,424,425,517,1165,1166,620,149,151,132,133,152,147,148,150,1160,648,649,647,641,661,662,663,664,1073,665,669,1070,1072,1063] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2489,3144,512,1085,1087,475,2521,2637,2638,1118,1134,1135,509,3094,3090,3101,3102,3128,3126,3127,1092,1111] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [237,238,239,240,656,657,658,633,1086,654,233,236,2905,2902,230,3999,2481,2497,2482,2488,2489,2883,3128,3127,3117,2881,2882,2884,2850,2871,2872,2873,1096] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2664,2266,2667,841,895,2265,487,488,872,873,874,875,3095,3096,3105,1107,1108,2642,479,480,1118] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        