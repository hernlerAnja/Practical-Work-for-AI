
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
        
        load "data/4E4X.pdb", protein
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
 
        load "data/4E4X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2660,3225,3224,2398,2775,2315,2316,2410,2412,2413,2414,3223,3304,3305,3308,3312,3323,3326,3194,3205,3309,3311,2267,2264,2265,2266,2268,2406,2800,2804,2805,2780,2796,2820,2825,2829,3222,2803,2818,2797,2798,2262,2263,2269,2830,2776,2758,2761,2762,2656,2607,2673,2578,2581,2580,3320,3322,3318] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2665,2784,3290,3291,2783,2785,647,1152,1153,1102,1104,1111,1130,2628,2634,2635,2636,2643,3275,230,3051,238,241,3020,1105,672,673,675,1114,246,247,248,490,496,495,1136,1137,498,505,892,891,893,1126,497,2382,2668,882,911,2376,2379,645,646,530,244,239,245,651,652,654,3240,3242,3243,3252,3249,3268,3274,3029,3030,3031,2997,2789,2792,2383,2384,2385,2386] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [260,127,129,660,177,178,272,274,275,649,658,659,662,665,666,126,124,125,130,131,680,128,642,258,259,637,638,623,624,535,1184,519,522,1164,1182,440,443,442,1166,1167,1170,276,1185,1188,691,1056,1084,1085,1086,1087,692,1067,667,682,687] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1067,1171,1173,1026,1029,1045,1046,1224,1262,1269,1285,276,1172,1169,157,1195,154,1222,1223,153,1013,1014,1015] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2302,2316,2412,2414,2295,2297,2291,2292,3309,3310,3311,3454,3360,3362,3331,3307,3455,3457,2279] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [45,54,74,75,34,545,19,20,3115,3116,224,236,3107,3106] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [448,450,2616,2588,2163,2589,451,452,4,7,8,25] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2201,2731,2732,2709,2217,2218,2219,2221,2235,2422] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [61,593,594,76,79,63,80,81,83,571,284,56,51] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        