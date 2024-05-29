
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
        
        load "data/2GS7.pdb", protein
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
 
        load "data/2GS7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [207,2375,2376,2444,2445,2933,138,2373,2422,2423,703,718,701,2911,2912,2916,2556,2555,2569,2565,2573,3445,3446,3447,2424,2571,2960,2964,3358,3359,3438,2800,3439,3329,2934,2941,121,123,2957,2965,2989] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [137,318,673,335,1203,1204,1205,186,334,674,1228,565,574,578,498,2444,133,134,135,138,695,696,722,1120,1121,726,1196,1197,1091,1105,559,560,2359,718,748,751,2361,719,727,703,184,185,327,331,316,317,580,139,140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2404,3499,3472,3475,2396,2402,3497,2407,2397,2398,2400,2572,2573,3447,3467,2424,2408,3564,2406,3509,2384,2388,2383,2387,2413,2409,2410,2411,2412,2391,2395,3332,3343,3307,3333,3304,3305,3329,3581,3583,3292] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1317,153,157,164,166,168,1257,1225,1229,1230,1255,335,1203,1205,186,334,150,1091,1105,1106,1094,1095,1067,1068,1069,1336,1233,171,172,173,151,160,169,158,159,162,352,332,333,142,149] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [688,691,687,2227,2929,2939,2942,701,704,706,705,2925,2921,2542,2543,4475,304,305,2211,2212,4489,2936,2944,3372,2943,3370,3374] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2999,3034,2998,3000,3037,3035,3063,3059,3069,3070,3098,3100,3061,3062,108,97,101,112,3097,3099,3101,3387] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2734,3460,3462,2699,2727,2728,2700,3480,3482,3483,3275,3456,3458,3271,3282,3457,3297] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3423,2766,3424,2771,2772,2775,2920,3375,4488] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [761,762,821,2335,2339,858,859,861,862,863,799,822] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        