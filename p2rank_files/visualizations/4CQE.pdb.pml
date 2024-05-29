
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
        
        load "data/4CQE.pdb", protein
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
 
        load "data/4CQE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2135,2159,2160,3065,3067,2255,2257,2258,2259,3146,3150,3154,3151,3153,3158,2400,3157,3063,2664,2665,2669,2673,3036,2502,2504,2505,2648,2649,3061,3062,3064,3066,2501,2619,2620,2514,2515,2518,2606,3162,3143,3159,2425,2426,2161,2243,2642,2246,2251,2133,2641,2647,2662,2132,2624,2644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [612,613,617,497,506,510,493,152,151,153,129,250,251,417,415,418,414,444,233,234,235,598,595,243,247,117,120,122,654,655,123,637,640,641,646,633,634,635,121,1040,1139,1140,1143,1147,1156,1157,1159,1158,1144,1146,1054,1055,1057,1029,1056,1058,1059,1060,666,1061,656,657,658,659,662,1063,1064] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2510,2513,2628,3132,3133,502,505,621,622,1126,2481,2468,2476,3082,3117,3109,3116,1076,1078,1109,1110,1100,1103,468,460,3084] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3106,2868,2869,2870,2871,649,651,220,223,626,627,650,2836,2837,2838,3117,3110,3116,1086,1087,648,1076,1077,1078,2892,2860,2859,2481,2480,623,219,2813,2812] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2657,3084,3085,3092,3093,3094,2655,2228,2633,2224,2231,885,853,862,863,864,1109,1110,861,1099,831,472,480,473,481,883,830,829] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2461,2012,17,20,2430,2432,426,427,422,2032,2029,2009] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2084,2087,2576,2083,2065,2100,2553,2554,2267] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        