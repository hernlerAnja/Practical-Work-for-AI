
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
        
        load "data/4YHT.pdb", protein
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
 
        load "data/4YHT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1064,675,679,680,1035,1061,1063,1065,1066,129,1046,1152,510,626,511,514,1062,435,1145,267,268,409,1146,1149,1151,1153,1150,434,647,117,120,121,648,169,168,170,123,625,250,251,252,611,264,266,608,668,670,673,653,674,1038,1036,1160] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2535,3085,3163,3056,3082,3084,3086,3087,3067,3166,3181,2675,2154,3171,3173,2150,2430,2288,2289,3167,3170,3174,2696,2700,2701,2726,2727,2729,3059,3057,2691,2694,2695,2646,2271,2272,2273,2668,2669,2287,2190,2191,2274,2276,2281,2285,2141,2142,2138,2144,2689,2671,2647,2632,2629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [635,1132,2654,2656,3153,522,634,2511,1131,1115,1082,1084,2506,519,520,521,2655,2540,2543,490,1114,3152,3103,3099,3110,3127,3129,3136,3105,1108] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [639,660,233,237,238,240,663,661,204,239,2509,2510,2518,236,2911,2913,230,2511,1083,1084,2892,3132,2890,2891,1092,3125,3126,2893,2882,2881,1090,3131,3136] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2660,2681,2682,2684,3104,3105,1106,3113,838,2258,2259,2261,488,489,490,498,1116,1104,1105,1110,497,869,870,871,872,2257,1115,890,2243,2254,861] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [470,2460,2491,439,2038,2041,17,20,443,444,2464,2465] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1940,1918,1921,1923,1941,1353,1355,1357,1365,1366,1367,1389,938,940,1354,937] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        