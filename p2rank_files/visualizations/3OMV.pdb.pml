
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
        
        load "data/3OMV.pdb", protein
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
 
        load "data/3OMV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3238,3239,3241,2319,2401,2402,2811,3223,3319,2404,3326,2308,2413,2414,2285,2416,2306,3186,3224,3320,3323,3324,2289,3184,2815,2819,2820,3225,3202,3203,3214,3215,3185,2282,2283,2284,2837,2840,2845,3240,3242,3244,3212,3213,3248,2835,2266,2269,2272,2277,2278,2317,2318,2818,2833,2812,2813,2874,2594,2567,2593,2417,2673,2790,2791,2400,2399,2776,2409,2795] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [270,1192,1194,187,188,1111,1112,1113,1188,1189,135,138,141,134,139,1082,1086,542,660,642,282,285,144,147,645,687,702,709,713,1107,1108,1110,704,708,681,682,742,743,688,689,680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3261,2649,1128,1130,3259,2799,2800,3305,1175,549,668,1174,518,1159,1158,3283,3289,3271] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [517,518,2385,525,915,916,1153,914,917,1158,3261,2382,906,3271,3262,2804,2389,2386] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2598,2614,2600,2601,2602,2629,4,33,2164,467,469,470,471,472,9,7,2137,2136] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [147,154,151,159,1071,1072,1082,1084,1085,1086,1194,188,1112,1113,1094] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2649,3290,1130,1131,1139,3037,690,673,2648,3048,3279,3289,3046,3047] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3185,3384,3387,3390,3392,3427,3428,3379,3484,3182,3454,3429,3180,3349,3171,3534,3535,3456,3533,3483] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3089,4139,3088,4137,3124,237,238,244,247,248,216,223,224,245,246,218,220,222,3069,4166,4167,4173,4195,4196,77,79,80,81,217,82,83,84] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        