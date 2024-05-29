
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
        
        load "data/5VAM.pdb", protein
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
 
        load "data/5VAM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [498,884,1128,1129,1145,1094,1096,1103,1097,643,1106,237,238,240,489,485,488,490,2686,522,639,2652,2653,2654,231,233,222,230,3067,3068,3069,2683,2685,2666,2641,236,519,521,1091,885,1118,828,3258,3266,3292,3293,3309,2662,3046,3047,3048,3049,2661,3038,2801,2802,2803,2807,3260,3261,3267,3270,3268,2824,497,905,906,883,882,2829,874,2404,851,852,2397,2400,2401,2804,2810] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1167,1170,1171,1172,1174,1169,168,169,170,266,1155,1158,1162,1161,615,267,264,612,433,435,434,409,1187,513,658,634,629,641,647,654,657,252,650,652,651,1149,514,1176,630,251,1048,1173,120,122,123,1074,1076,1078,1079,683,121] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2821,3240,3241,3242,3243,3334,3335,3336,3337,3338,3212,3331,3333,3325,2843,2873,2874,2847,2848,2875,2677,2678,2794,2793,2432,2573,2818,2822,2798,3319,3322,2333,2281,2284,2286,2287,2332,2334,3351,2414,2415,2416,2779,2428,2430,2431,2424,2776,2805,2814,2816,2815] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2675,3312,3313,3319,3320,3322,2670,3109,3164,3316,3371,3374,3375,2678,2570,2573,3166,3325,3326,3321,2599,2590,3110,2669] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [426,433,435,434,406,409,1002,1155,1156,1157,1158,1162,1245,1161,1242,1243,1149,505,946,1000,945] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [149,151,147,268,1178,1179,1180,1192,152,371,408,148,150,1201,372,1205,1227,1228,1230,1204,1240,1242,1163,1164,1161,407,409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2726,2727,2201,2206,2750,2440,2749,2224,2225,2228,2208,2242,2759,2422] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1207,1229,1230,1178,1179,1180,1192,1164,1177,1021,1038,1288,1193,1281] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [470,2173,439,2605,2170,2171,2607,2608,2603,17,18,20,443,444,7] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3344,3356,2432,2572,2535,2536,3371,3369,3362,2313,2315,2447,2310,2317,2430,2431] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [258,75,563,608,71,72,89,585,586,275,590,591] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [387,388,389,391,357,382,570,603,415,554,553,555,556,414] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        