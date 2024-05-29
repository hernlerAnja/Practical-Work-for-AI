
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
        
        load "data/4G9C.pdb", protein
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
 
        load "data/4G9C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1083,717,260,658,128,654,655,656,718,1198,177,125,275,178,1197,129,633,634,638,272,522,663,1177,1159,1162,1164,1165,1166,1171,1081,1203,683,1199,1205,1211,716,443,414,417,682,673,676,661,678,681] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2290,2769,2238,2241,2244,2291,3305,2768,2774,2789,2242,3165,3284,3287,3288,3290,3286,2791,2794,2796,2800,2801,3194,3196,2826,2827,2771,2747,2373,2746,2751,2729,2732,2385,2388,3275,3292,2635,2530,3278,2634] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [485,2643,2640,497,642,1148,1149,1133,1095,1098,530,2598,2610,643,1100,527,510,3261,3262,3211,3213,3246,3219,1106,3245,3237,3239,3222,1124,1125,1132,3220] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [414,433,435,415,417,443,513,441,1166,1168,1159,1160,1162,987,992,998,1000,949,1156,1004,1006,470,434] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2554,2527,2530,3279,3281,3100,3105,3111,3113,3266,3272,3275,2626,3062,3117,2556,3119,2546,2547,2548,2583] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [647,1100,1101,244,650,241,245,246,248,668,671,2603,2604,2609,2611,2610,3022,230,238,3002,2991,3245,1109,2618,2619,2999,3000,3001,3020,3246,3241] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2466,2467,2468,2494,2495,2498,2403,2404,2405,2500,2731,2387,2389,2529,2733,2384,2393,2392,2492,2493,2526,2528,2471,2267,3301,2266,2275,3324,3318,3319,3323] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [889,2760,855,877,878,2354,2357,2358,2361,498,505,506,886,887,888,907,909,496,497,1133] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3214,3221,3222,3223,1132,889,2760,2357,2358,3213,498,505,506,887,888,496,497,1133,2781] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1183,1184,1191,1192,1042,1182,1169,1025,1041,1244] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [54,74,75,224,236,225,45,545,18,19,20,34,3085,3087,12,3078,3077] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2340,2346,2348,930,1995,2349,1992,929,965,2327,2332,2183,2187,2347,2350,2326,2319] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [225,45,545,19,20,34,3087,224,3052,3054] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2193,2192,2725,2397,2700,2204,2210,2684,2695,2196] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [974,2147,972,939,2338,2658,2337,964,2166,2187,2188,2167,965] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [80,81,82,83,76,79,284,97,587,589,599,571,56,61,63,581,582] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        