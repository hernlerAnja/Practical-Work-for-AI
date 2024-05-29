
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
        
        load "data/3II5.pdb", protein
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
 
        load "data/3II5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3206,1099,1131,1132,1133,1100,1101,1109,1110,2983,248,668,3173,3174,3175,3223,2572,2580,3207,2716,2717,2579,2984,485,496,497,527,1148,1149,2603,2604,643,647,241,244,245,246,648,650,530,2567,2570,2571,2559,2315,2319,2322,2721,2318,888,886,887,889,878,1122,498,2312,2313,490,491,2304,506,908,909,910,3183,3198,3181,2960,2961,2962,2963,3199,2952,3184,1126,2738,2742,2724] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [176,177,178,1173,129,125,131,616,634,260,633,268,1175,1176,1177,1179,1052,1174,522,275,276,1192,1190,1191,272,417,1165,676,1081,661,663,654,655,656,678,683,687,688,1079] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2737,2730,2202,2735,2750,3264,3265,3266,2251,2250,2252,2205,3153,3155,3245,3248,3249,3250,3251,3252,3253,3247,2761,3126,2752,2491,2596,2707,3236,3239,2516,2517,2693,2708,2333,2334,2346,2348,2690] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2593,2491,2596,3236,3239,3227,3080,3233,3234,3240,3243,3072,3078,3066,3074,3023,2544,2508,3024,3061,2587,2517,2488,3235] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [434,410,414,433,435,1166,1169,513,443,470,1153,522,1152,1159,1160,1162,987,992,998,1000,1003,949,950,1156,1002,1004,1006,1005] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [154,1211,290,378,379,381,382,385,353,380,354,291,355,274,275,276,153,387,618,620,415,416,389,602,613,271,603,1201,1210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2349,2350,2228,2231,2454,2452,2453,2427,2455,2459,2694,2487,2490,2365,2227,2345,2359,2360,2461,2692,2678,2680,2363,2429,2366,3258] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [478,2102,2099,2525,2526,2552,2521,8,28,25,447,451,452,1] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [61,589,590,56,283,284,599,612,571,266,79,97,51,80,83] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2154,2157,2645,2153,2135,2661,2664,2655,2656,2658,2357,2358,2171,2686,2668,2340] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [937,972,974,2298,964,2108,965,2148,2149,2128,2310] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        