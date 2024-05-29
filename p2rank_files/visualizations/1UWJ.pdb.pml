
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
        
        load "data/1UWJ.pdb", protein
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
 
        load "data/1UWJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1153,1152,1099,1126,646,1103,1104,1105,1110,2758,2759,3264,3265,530,2639,2757,2642,2605,2608,2609,2610,2617,647,244,238,3026,3024,3025,241,651,654,672,245,248,498,505,913,485,491,493,496,497,2350,2353,1137,1131,1136,882,891,892,893,2760,2356,482,472,3215,3217,2763,2780,2784,3216,1127,1128,1129,3222,3223,3225,3242,3249,3238,3243,3239,3240,3248,2948,3003,3004,3005,2994,2971,2972,2992,1111,1113,3241,860,836,2357,2360,2766,914,859,912] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [519,522,1175,1176,1177,1178,1179,1181,1183,1168,415,417,1169,1188,642,658,260,637,128,129,177,178,660,272,274,1196,691,692,125,131,518,638,441,443,442,412,414,1056,708,1060,470,513,954,1156,1157,1163,1008,1010,1166,1002,1004,1170,1172,434,991,996,1232,1231,432,1085,1087,682,687,685,717,718,720,667,662,659,665,676,680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2384,2290,3287,3288,3289,3290,3291,3281,3292,2386,2388,3300,3307,2792,2634,2779,3295,3197,3199,3293,2372,2774,2777,2778,3120,3122,3275,3278,3280,3168,3282,3284,3338,3334,3335,3116,2240,2289,2770,2771,2772,2797,2799,2803,2804,2237,3172,2554,2526,2527,2529,2553,2555,2522,2750,2544,2582,3066,3103,3065,3114,2546,2545,2547,3108,2625,3269,2581,2749] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [227,228,237,4124,4126,4128,4131,208,4154,4098,209,210,4152,4153,4096,4099,4100,235,3045,3046,236,3078,3081,219,70,89,72,73,74,3080] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2326,2182,2331,2339,2348,2184,2020,2018,934,2340,2345,2349,2347,2186,966,969,2185,933,1992,2021,2022,2025,1990,1993,1994,2201,2322,2046,2047,2048,2350] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1197,1201,1186,1189,1193,1177,1207,1029,1046,1208,1067,1056,1057,1058,1045,1235,1236,1234,1059] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3313,3340,3341,3342,3343,3347,3169,3170,3171,3157,3141,3158,3319,3320,3179,3301,3309,3312,3289,3298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1023,1027,1028,1029,1240,1242,1278,1279,1033,1030,1263,1014,1386,1387,1013,1022,1452,1261,1262,1427,1418,1420] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [28,1,4,447,25,450,451,452,2564,2119,2116,2137] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2186,968,969,2165,2166,2187,2348,2336,976,977,978,2146] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [425,426,399,423,451,452,563,564,16,38,562,578,15,393,388,390,397] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2672,2674,2675,2676,2690,2127,2511,2500,2502,2534,2535,2537,2507,2505,2508,2509] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [53,54,74,75,3080,3088,3089,224,34,3090,3081] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3886,3887,3866,3880,3884,3885,3637,2901,2902,2903,3642,3644,3653] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3145,3368,3558,3384,3533,3135,3142,3125,3526,3126,3492,3524,3367] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        