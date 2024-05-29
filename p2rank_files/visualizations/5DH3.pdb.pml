
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
        
        load "data/5DH3.pdb", protein
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
 
        load "data/5DH3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [168,169,170,113,114,115,117,118,119,120,268,650,657,668,687,691,711,713,681,684,671,677,672,643,2223,2224,1152,646,1151,1077,1150,490,285,133,1060,1155,1156,1158,126,1053,1075,1076,121,123] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2998,2972,2956,2968,2969,2406,2962,4497,3339,3430,3434,3332,3356,3429,2976,3355,3431,3435,3436,3437,2573,2574,2930,2931,3427,3428,2457,2458,2557,2403,2405,2947,2995,2996,2966,3032,2977,2935,2953,2787,2997,2402,2408,2411,4499,4500,4498,2413,2414,2421] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2519,2501,2498,2500,547,2823,551,2813,2814,2816,2551,1,2818,2819,2820,2534,2535,2,4,6,2323,2347,2349,2348,2359,2360,532,2826,2824,2836,2837,2839,2829,2921,2922,2923,516,2292,526,553,555,2327,2313,2328] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [547,2823,551,2813,1,16,58,17,4,532,2826,2824,2836,2829,2349,2348,516,2301,2296,2298,2292,526,69,553,555,57,212,213] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3502,3504,3505,3508,3229,3230,4256,4260,4261,3257,3260,3231,3717,3718,3484,3511,3233,3235,3719,3712,3725] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [82,84,30,63,83,614,615,617,619,621,180,620,622,543,276,179,181,576,31] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [946,948,1441,1442,944,945,1443,1205,976,1449,1984,1986,1997,1434,1232,1435,1436,1223] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2859,2860,2861,2862,2863,2903,2904,2906,2583,2373,2374,2465,2582,2907,2467,2469,2840,2842,2375,2353] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [315,2669,568,2854,2894,2853,2635,339,341,2632,342,367,606,609,338,374] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2771,2773,3161,3185,3399,3401,4387,3155,4376,3153,3130,4369] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        