
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
        
        load "data/3C4C.pdb", protein
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
 
        load "data/3C4C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3117,3215,2572,3063,3210,3216,3217,3218,3219,3006,3007,3055,3061,2500,2501,2502,2491,2492,2494,2529,2471,2472,2493,3045,3044,3049,2721,2722,3135,3139,2580,2581,2692,2678,2679,2693,3120,3221,3222,3223,3229,3230,2473,2475,3224,3226,3057,3109,3115,3116,3110,3136,3138,3140,2746,2196,2236,2237,2332,2334,2335,2331,2742,2747,2697,2714,2715,2720,2319,2735,2185,2186,2187,2235] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [178,137,1165,274,275,276,1161,1167,1171,156,158,521,531,518,535,522,1076,1077,1079,1080,1081,1160,1177,1178,442,443,1182,177,268,176,272,620,532,638,260,633,258,259,619,634,1062,1166,1050,1168,128,656,131,658,662,663,660,661,654,664,666,667,673,655,675,676,678,679,683,687,688,1075,1078,677] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1097,1098,1099,1108,1107,3190,2564,2565,2941,2942,2943,647,648,669,670,672,671,2963,2965,245,248,2910,2911,2933,1130,530,2557,2544,2556,244,498,1147,3206,485,529,2589,527,642,643,2700,2701,2702,3156,2569,2586,3189,2944,3158] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2703,2706,906,2304,2307,874,2297,2298,2300,2303,3157,2728,3165,3167,2729,2730,2731,497,1131,505,506,904,882,883,491,498,1119,1125,1126,1130,3166,884,1120,850,851,852,885] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2343,2156,2653,2654,2140,2142,2648,2138,2120,2325,2629,2630,2671,2326] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [235,236,237,214,219,221,206,213,227,207,70,71,233,2985,2986,2987,3997,3998,3994,208,211,212,4026,4055,4056,4053,4054,3996,4027,4028,4031] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [25,2506,452,2087,447] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [80,97,83,588,63,76,79,61,586,589,591,43,51,571,598,595,284] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        