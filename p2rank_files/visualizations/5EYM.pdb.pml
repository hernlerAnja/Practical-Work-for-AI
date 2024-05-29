
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
        
        load "data/5EYM.pdb", protein
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
 
        load "data/5EYM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2630,2611,2614,2615,2616,2599,2600,3192,2602,2603,3137,3147,3488,3489,3166,3514,3141,3158,3159,3148,3167,3190,3191,3149,3595,3115,3117,3513,3593,3122,2727,3138,3597,3598,3601,2745,2746,2747,3603,3497,2743,2628,2629,2606,2607,3103,3104] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [287,288,313,314,315,283,284,285,289,788,424,428,431,432,1278,1280,1198,851,1173,1199,852,844,876,875,877,1286,1289,1182,1282,410,412,819,821,807,802,411,800,680,823,826,832,833,300,301,296,299,290,1174] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2754,3082,2640,2641,3081,2736,2734,2548,2547,2568,2570,2564,2526,2523,2656,2636,217,218,219,220,3066,3069] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3126,2985,3127,3529,3542,3543,3544,3558,3559,3576,3021,2998,3120,3124,3125,3128,3131,2454,3022,2391,2390,2392,2399,2400,2406,2955,2950,2957,2960,2422,2425,2426,2430,2427,2428,2711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [107,110,111,112,113,809,812,1261,75,76,1214,1229,91,645,649,1244,84,89,77,1243,1227,115,707,139,640,635,642,811,816,683,670] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [751,2534,754,2532,2533,2535,421,766,767,323,325,419,439,326,253,255,746,208,210,211,212,232,233,249,250,2517] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3597,3598,3601,2745,2746,2747,3603,3653,3587,3117,3118,3580,2993,2899,2922,2923,3620,3625,3627,3611,3613,3608,2988,3103,3104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3327,3333,3560,3302,3552,3551,2357,2967,2340,2364,2366,2367,2339,2966,2978,2980,3355,3356,3357,3304,3539,3549,3550,3305,4537,4553,3303,3567,3306,3307,4509,3556] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [25,41,42,2194,49,50,51,52,1042,652,1244,1241,81,651,661,663,1245,1248,1249,1018,1250,1252,1237,1240,987,1010,1012,1235,988,990] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1286,1287,1288,1289,1282,1283,1290,1293,584,788,789,1338,430,432,1305,1310,1312,802,607,608] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3690,3707,3717,3181,3182,3183,3215,3216,3485,3489,3490,3718,3917,3918,3919,3921,3916,3876,3484] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1174,1175,865,866,867,868,901,1401,1169,1403,1561,1603] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        