
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
        
        load "data/5UIT.pdb", protein
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
 
        load "data/5UIT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3021,3020,3040,3436,3041,3044,2499,2548,2453,2493,2496,2497,2498,3120,3082,2876,3022,2990,2875,2993,2995,2996,3435,2635,3511,3512,3513,2651,2773,3419,3411,3048,3049,3070,2495,3072,2501,2650,2549,2504,2494,3014,3015,3017,3001,3028,3412,3520,2507,2514,2513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [802,825,1165,823,252,253,258,259,262,265,271,272,307,1189,1164,305,255,256,257,773,781,793,770,774,794,254,306,801,787,835,873,209,1265,409,748,1188,1264,1172,1270,1273,1266,407,408,393,743,746] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3451,911,912,942,943,944,3024,3498,895,908,968,938,941,940,2835,2838,1218,970,2830,2831,2882,2883,2881,2885,3450,3457,3031,3449,3030,3461,3002,3003,3004,2620,2616,1953,1956,1955,1954,1946,1947,1948,2622,1941,3008,3011,2621,2884,931,3466,889,890,891,888,1224,1226,1228,1229,1230,3452,3462,3483,3484,1216,1219,2837,2849,2852,2846,2833,2865] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [328,379,380,764,766,782,783,375,762,1206,1210,1212,1213,2851,2852,2853,3216,3483,3484,768,784,781,791,374,378,756,761,1202,1214,2843,2844,3257,2860,2861,3258,3240,3241,3259,3260,4445,3235,3261,4478,3282,3286,3318,3281,3317,3319,4419,4420,373,363,369,3238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [933,2255,928,931,932,919,960,961,1967,1969,2245,1968,1987,1988,2261,2897,935,2901,2898,2615,2590,1952,2900,2629,2614,2616,2284,2285,2288,2287,2289,2306,2598,2601,2592,2591,962,991] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3520,3384,3542,3400,3401,3533,3541,2517,2521,2525,2528,2530,2518,2507,2514,2513,2515,2730,2732,2735,2772,3532,2651,3419,3518,3519,2549,2731,2668] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [275,276,286,288,1153,1137,1154,1294,1295,488,409,1172,1173,273,274,1273,1272,283,272] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [516,517,543,1317,572,1099,1313] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [475,507,533,499,681,534,667,668,669,1,14,15] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2817,3344,3346,3347,2790,2819,2763,2764,3560,3564] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        