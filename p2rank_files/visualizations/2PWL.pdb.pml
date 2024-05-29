
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
        
        load "data/2PWL.pdb", protein
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
 
        load "data/2PWL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1257,1262,1263,375,377,508,361,739,740,187,188,191,192,179,180,181,226,172,174,178,224,225,194,193,196,203,205,793,1149,1164,790,1179,173,177,176,765,782,783,756,758,1260,1255,1256,1178,621,762,766,744,2614,195,1423,1126,1285,1286,1284,478,2422,2667,2668,2642,1421,1419,1418,2628,2629,1152,1153,1439,1440,2626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3490,3405,2587,2588,2589,2718,2719,2720,3483,3484,3487,3489,3482,2833,3005,3379,3391,3376,3380,3353,3354,3385,2752,2936,2951,2952,2753,2998,2995,3406,2977,2974,2956,2416,2407,2408,2409,2413,2454,2585,2452,2400,2401,2402,2404,2405,2453,2573,2421,2422,2667,2431,2433,2690,3511,3512,3646,3513,3648,3650,3666,429,430,3643,3645,2419,2420,2423,2688,2689,3504,3505,402,414,418,194,455,456] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1421,1422,1403,1415,1419,1420,1404,1405,1117,1342,1347,1336,1343,447,448,1286,1299,1300,1330,1423,1392,1394,1397,1402,1383,1401,1411,1393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3570,2660,2689,2710,2711,3525,3526,3527,3560,3561,3557,3569,3646,3513,3647,3649,3650,3344,3630,3638,3629,3618,3619,3620,3621,3623,3624,3628,3642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3285,3286,3287,3803,3811,3814,4338,4334,4345,3800,4333,4331,3259,4349] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1060,1573,1574,1576,1578,1587,2122,2129,2133,2115,2118,2117] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4020,3749,8,461,464,3674,3739,4050,4013,4047,4048,427,4016,4018,3737,436,439] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [827,962,828,1215,1216,1218,990,1214,932,931,933,934,955,956,899,900] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2673,2639,1447,1788,2644,2676,2647,2648,1512,2651,1816,1820,1821,1791,1786,1793] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        