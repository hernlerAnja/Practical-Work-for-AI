
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
        
        load "data/2JC6.pdb", protein
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
 
        load "data/2JC6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [615,1161,1163,637,640,651,1048,203,204,642,643,644,154,155,157,160,2139,2145,2147,2138,2181,652,1049,663,1162,1164,1031,1033,2146,650,1087,1088,301,616,627,632,482,620,634,2134,687,690,317,186,189,187,170,171,161,163,165,316,190,205,191,192] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3234,3356,3357,3358,3359,4331,3249,3232,3233,4327,4329,4330,4332,2365,4366,4317,4323,2839,2845,2832,2837,2850,2842,2686,2687,2688,3250,2856,2857,2868,2847,2849,3289,4319,4320,4324,2895,2685,2527,2528,2820,2821,2512,2400,2368,2366,2410,2414,2415,2416,2373,2397,2401,2376,2381,2398,2402,2382,2825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2619,2620,2622,2623,2641,3160,2698,2685,2527,2528,2819,2820,2691,2692,2694,2680,3353,3176,3119,3177,3178,3172,3165,3170,3357,3358,2686,2687,2806,2700] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [436,971,972,973,475,914,965,481,1160,1161,1162,480,967,960,955,411,412] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3480,3505,4036,4039,4041,3481,3484,3991,3097,4042,3123,3124,3125,3127,3477,3479,3475,3131,4026,4015] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [592,570,75,81,590,123,125,321,338,571,572,573,322,198,197,212,323] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [920,922,1279,1281,1848,1861,890,892,1275,1284,1288,1309,1850,1800] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2533,2408,2532,2405,2409,2548,2549,2795,2335,2336,2337,2534,2331,2332,2334,2422,2423,2797,2775,2776,2777,2778,17,2279,2293] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2718,2706,2812,2315,2317,2453,2454,2506,2507,37,2737,2305,2306] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [277,295,106,607,296,501,502,532,513,2248,94,241,242,243] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3259,3261,3319,2937,2938,2939,2904,2902,3301,3308,3017,3023,3024,3025,2995,2998] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1634,1635,1608,1609,1611,1452,1413,1415,1417,1418,1412,2061,1425,1426,1449,1423,2097] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3608,3609,4246,4247,4283,4274,3826,3825,3611,3613,3614,3799,3800,3801,3802,4282,3619] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        