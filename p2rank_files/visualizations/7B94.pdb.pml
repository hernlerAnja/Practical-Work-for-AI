
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
        
        load "data/7B94.pdb", protein
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
 
        load "data/7B94.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3596,3567,3603,3701,3702,3704,3594,3696,3619,3582,2823,2824,2825,3196,3703,3195,3618,3620,2805,3216,3194,2660,2661,2667,2668,2670,2707,2662,2708,3237,3269,2664,2673,3595,3245,3583,3219,2679,2683,2687,3783,2686,2691,2693,2694,2672,2675,2676,3752,3182,2977,3698,3700,3699,3707,3708,3716,3717,3720,3564,3727,3782,3779,3755,3757,3759,3760] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1288,1297,1398,519,1390,1312,1313,401,402,518,1314,499,358,1392,1395,1396,1397,876,890,894,910,913,1277,1261,1298,1276,1394,1258,1402,367,1289,1290,361,362,364,356,938,939,931,962,963,964,359,1446,1477,1449,1474,533,535,1448,1453,369,385,366,370,373,377,381,382,380] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [542,854,2700,2633,2718,2719,2716,2634,540,2699,2689,2690,2691,2692,2693,2842,2829,3158,3159,3157,2585,2832,2833,2588,2814,2630,2734,2626,2610,2812,2846,2848,3160,394,2850,412,413,326,328,410,3147,3143,386,387,388,2845,851,526,527,282,508,283,523,536,852,853,384,324,506] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3697,3692,3713,3752,3182,3715,2977,3001,2999,3000,3181,3083,3085,3698,3699,3705,3708,3720,3071,3714,3727,3024,2997,2823,2825,3703,3195,3701,3702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1386,1389,1391,1392,1395,1396,1397,875,876,766,889,887,671,695,1408,1419,694,779,1407,1409,765,772,777,1399,1402,1446,1444,1424] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3411,3054,3056,3058,3435,3403,3405,2429,3044,2427,2458,4569,2402,2419,3669,4613,3673,3380,3381,3382,3383,3656,3658,3670,3671,3666,4597,3384,3385] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3635,3209,3202,3204,3649,3650,3100,2484,2487,2488,2489,2517,3682,2453,2482,2483,2467] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3038,3063,3682,3076,2487,2488,2490,2492,3664,2452,2454,2467,2453,3033,3204] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        