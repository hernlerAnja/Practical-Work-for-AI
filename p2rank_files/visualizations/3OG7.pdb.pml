
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
        
        load "data/3OG7.pdb", protein
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
 
        load "data/3OG7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [168,170,252,514,625,169,609,611,626,267,268,264,150,129,266,513,630,510,434,610,612,1147,1149,408,405,435,527,251,123,124,125,668,117,120,650,654,653,646,648,647,1048,1044,1046,1028,1045,1047,1017,1018,679,669,670,671,672,673,675,680,152,1127,1128,1131,1146,1132,1133,1134,1124,1143,1145] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2629,3045,3047,3048,2600,2489,3127,3128,3131,3123,3025,3124,3125,2243,2583,2586,2239,2242,2383,3042,2098,2103,2143,2145,2144,2107,2108,3017,3132,3133,3134,3109,2488,2605,2601,2410,2409,2227,2621,2623,2225,2226,2625,2091,2092,2095,2096,2097] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [490,498,849,850,851,852,1097,1098,2215,2614,2636,2637,3065,3066,1087,3074,3075,489,497,871,477,2208,2211,2212,2611,873,2617,2638,2465,3113,3114,2497,519,520,521,522,634,1114,3097,3098,1074,1064,3064,2608,2609,2610] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2464,2851,2852,3087,662,663,2472,2849,2850,236,240,636,237,2871,2873,3097,3098,1073,1074,1066,639,661,1065,3088,664,2840,2818,2819,2841,2465] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2929,2937,2939,26,46,19,537,4,216,217,37,228,66,2936] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2251,2028,2050,2579,2556,2555,2558,2046,2047,2064,2063,2562,2563] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [89,258,275,276,75,563,604,72,55,71,581,582,43,562,586] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        