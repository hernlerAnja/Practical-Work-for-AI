
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
        
        load "data/4KSQ.pdb", protein
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
 
        load "data/4KSQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [643,1098,1100,1148,1149,2544,2545,3197,244,2539,2546,245,644,230,238,241,2955,246,2533,2575,1101,647,248,671,527,529,530,1133,1131,498,505,506,886,887,888,907,510,493,496,485,497,2691,2578,2289,2292,878,909,2286,3146,3148,3179,3180,3181,3196,2553,2554,2926,2934,2937,1132,3155,3157,2695,2719,3149,2698,1095,668,1106,1108,1109,1110,1126,1123,1127,889,2293,2296,3154,3174] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2735,3222,2736,3103,3219,3220,3221,3240,3239,2724,2726,2729,3131,2731,3127,3129,2703,2183,2182,2226,2308,2320,2224,2225,2706,2709,2710,2686,2702,2704,2711,2569,2570,3227,3213,3225,2682,2681] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1176,1178,687,688,1055,1056,1081,1171,1174,1175,1177,125,128,129,131,176,177,178,522,633,634,638,1179,1162,260,654,656,268,275,1165,1173,1192,133,417,272,676,683,1083,714,716,658,661,662,663,655] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2462,2482,2465,3035,3040,2491,2518,2561,2489,2490,2998,2562,2997,3207,3208,3209,3210,3214,3216,3046,3048,3052,3053,3054,3201] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [513,949,950,1153,1156,1159,1160,1002,1003,1004,1005,1006,1161,987,992,998,1000,433,434,435,1168,410,414,415,417,1166,404,443] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2429,2430,2433,2435,2401,2399,2402,2666,2668,2319,2650,2651,2656,2657,2654,2318,2333,2337,2338,2339,2427,2428,2426,2464,2205,2206,2207,2208,2321] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [448,449,5,452,447,28,478,2495,25,8,2079,2063] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2204,2209,2323,2212,2211,2226,2322,3217,3213,2324,2194,2195,2198,3232] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [382,387,389,385,291,353,289,158,159,160,153,290,286,416,620,618,271,603,273,279,280,285,274] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [571,589,590,283,284,266,82,97,79,80,83] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1053,703,705,707,1040,1042,1230,1231,1514,1217] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        