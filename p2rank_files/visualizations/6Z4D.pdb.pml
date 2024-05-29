
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
        
        load "data/6Z4D.pdb", protein
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
 
        load "data/6Z4D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1152,1107,3281,3282,3232,652,651,659,655,654,1135,508,2651,2665,3263,3265,494,499,529,532,534,537,538,540,541,3239,3240,542,557,558,505,2632,2626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1107,2778,2779,2798,3282,1114,2782,1152,1113,2685,2664,2651,2667,2668,2665,1133,1135,508,2622,2669,2661,2626] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [136,137,139,140,142,143,145,644,312,188,325,327,329,186,187,169,170,650,662,1090,1166,1167,696,699,703,704,1091,1075,1175,1061,1062,664,668,669,671,728,645,1173,1174] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2791,2263,2265,2266,2313,2438,2794,2818,2821,3217,2772,2777,3216,3296,3297,2771,2753,2447,2314,2262,2312,2454,2278,2451,3304,3187,3305,2825] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3325,3327,3328,2291,2292,2756,3324,2471,2542,2543,2541,3299,2595,2593,2672,2673,2678,2594,2596,2566,2562,2565,2564,2658,3314,3316,2569,2757,2539,2290,2455,2454,2472,3304,2772,3296,3298,2771,2753,2754] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2145,2150,2669,2683,2164,2167,831,832,833,1119,1126,2168,2171,1121,1120,2391,2394,2687,2183,2359,2374,2380,2212,1112,1113] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2954,2955,2957,2958,2959,2956,267,34,35,3246,32,3245,2927,2917,2861,2859,2897,2930] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3262,3264,3258,3261,492,493,494,495,3020,3251,477,478,473,540,541,18,2982,2983,17,3018,2981,3010,3019,542,3042,4097] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [916,884,2002,2003,883,2620,2621,2622,891,894,2611,2619,2605,2136,2154,856,857,2153] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        