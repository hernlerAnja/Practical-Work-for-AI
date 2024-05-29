
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
        
        load "data/3D0E.pdb", protein
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
 
        load "data/3D0E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3764,3776,3751,3752,3766,3767,3768,3769,3880,3877,3394,3396,5055,5065,5069,5098,3395,3412,3414,3420,3422,5071,2777,5100,5088,3735,3878,3879,3894,3901,3902,3895,3903,3046,3047,3048,3031,4024,4018,3872,3871,3792,3388,3793,5045,3324,3344,3345,2824,2947,2948,2949,3100,3873,2823,2932,2764,2766,2768,2771,5063,2765,5061,2801,2802,2803,2804,2795,2797,2798,2800,3029,2774,2964,2965,3099,3893,3076,3044,3045,3007,3003,3208,3210,3342,3349,3367,3131] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [291,1216,1220,1222,142,144,146,307,1219,287,289,290,686,687,164,165,166,113,106,107,108,2403,2405,441,442,1221,1234,1235,1236,1237,1238,306,418,274,691,709,349,136,141,143,145,119,2440,2442,371,373,387,388,390,1245,389,386,137,139,140,1093,1094,1109,1111,1118,1106,737,1110,736,738,754,762,764,2407,2411,2412,2414,759,1077,1244,1212,1213,1214,1215,735,1134,1135,2387,2397,756,1360,1366,1243] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2867,3241,3242,3243,2674,2716,5284,2864,2881,2701,2662,2673,2702,2703,2705,1713,1715,1755,5295,5294,5303,1348,1360,1373,1374,1343,1346,1352,1402,2659,3231,3232] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4162,4694,4647,4648,4696,3955,4657,4660,3969,4133,4143,4144,4126,4132,4079,4649,4650,4154,3954,4147,4152,4695,3952] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1992,1994,1999,2002,1294,1496,2038,2041,2043,1504,1989,1990,1991,1420,1421,1311,1474,1485,1486,1296,1297,1489,1494] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2688,2689,2956,2957,3302,3303,2734,2735,5159,2817,5150,5132,5136,5148,2730,2731,2732,2733,2832,5135,2816,2686,2687] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [30,31,28,29,644,645,2490,2492,2480,2485,174,158,159,298,75,76,77,299,74,2474,2478,72,73,2477] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [291,1216,287,289,686,687,442,473,474,1209,1212,1215,550] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3351,3353,5008,3818,3358,3350,1705,1704,2901,1725,1706,2923,2925,2907] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        