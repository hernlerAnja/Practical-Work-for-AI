
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
        
        load "data/8F7P.pdb", protein
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
 
        load "data/8F7P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1128,3158,3159,1110,1111,1112,248,2957,1101,1103,1134,1102,673,674,1108,1107,676,1135,1133,1125,886,887,888,889,1151,527,529,530,2540,646,2543,2544,2545,241,244,245,651,485,493,496,497,498,2577,505,910,2285,2288,2292,2295,877,908,878,855,2291,2574,2694,3198,2542,2552,2955,3147,3149,3150,3182,2935,3181,2934,2936,3180,2902,2933,2924,2925,3172,2698,2701,2720,2695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3228,3101,3223,3226,3129,3131,3132,2738,3104,2727,2729,2734,2176,2172,2178,3222,3240,3241,2224,2319,2223,2225,2323,2322,2463,3208,3211,3214,3220,3221,2464,2462,2307,2684,2685,2689,2306,2670,2709,2713,2705,2707,2706,2712,2569,2714,2490,2489] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1177,1178,1180,1164,128,176,178,1173,1176,1175,1167,1168,177,1194,124,130,131,642,662,522,637,638,260,658,660,276,417,275,268,272,443,442,623,1054,687,1082,1084,1057,665,666,1085,659,680,682,685,677] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [417,410,414,435,441,443,442,952,989,994,1002,1154,1161,1162,1164,1168,1169,1171,1155,522,951,1004,1006,1007,1008,513] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3208,3209,3211,3215,3218,2464,2998,3053,3055,3051,3049,2457,2482,3036,3041,2488,2489,2517,2566,2490,2560,3202,2999] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2463,2671,2321,2338,2200,2425,2426,2427,2428,2400,2429,2435,3233,2323,2322,2209,2337,2339,2462,2464,3245,3260,2201,2204] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2130,2617,2098,2108,2110,2618,2641,2628,2629,2144,2313,2126,2127,2663,2330,2645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [291,290,161,162,274,276,416,275,1199,154,155,157,382,353,355,292,379,380,1186,1194,1195,1198] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [74,72,571,71,43,53,55,56,594,75,616,570,598,284,582,595,89] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2088,2092,2271,2120,2121,2122,967,2283,966,2081,2101,2592,975,976,974] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2757,2758,3105,2754,2756,3621,3349,3363,3328,3326,3102] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        