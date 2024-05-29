
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
        
        load "data/3GGF.pdb", protein
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
 
        load "data/3GGF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [168,286,166,167,662,663,112,114,271,681,683,685,688,667,699,700,701,702,695,696,109,110,111,113,116,2091,2100,2060,2063,2103,304,647,1047,709,1055,1144,1070,1071,1143,524,525,526,143,145,147,148,287,288,406,1156,544,546,428,437,404,405,426,427,429,705,137,128,129,132,710,730,728,729,731,739,320,1001,1148,1165,2093,2094] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2275,2276,2277,2278,2279,2283,2286,2281,2323,2324,2280,3195,3203,3218,3292,2443,2444,2295,2296,2442,2853,3219,2848,2850,2836,2842,2843,2844,2849,2262,2831,2876,4243,2879,4240,4242,2857,2858,4212,4252,2833,2427,2810,2811,2815,3291,2673] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3407,3435,3389,3401,3402,3406,3436,3549,3408,3433,1537,1538,3354,3365,3368,3154,3163,3166,3167,3168,3169,3482,3484,3520,3483,3513,3142,3145,3151] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1006,1018,1019,994,997,1003,1021,1219,1222,1038,1020,1374,1245,1251,1208,3687,3701,1260,1261,1262,1289,1290,1256,1336,1337,1338,1403,1366,1365,1367,1243,1244,3686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2553,2574,2575,2585,2606,2576,2552,2554,2795,2794,2694,3291,3304,2692,2810,2811,3149,2443,2442,2460,3292,2324] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3646,3644,3655,3382,3719,3776,3779,3742,3744,3746,3379,3800,3801,3541,3569,3796,3377,3753,3755,3783,3789,3795,3749,3751] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1233,1604,1423,1497,1651,1634,1395,1600,1602,1652,1495,1506,1627,1630] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1037,1252,1253,722,1452,723,1048,3339,1490,1491,1483,1478] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3639,3640,3660,3659,3629,3632,3383,1197,1198,1199,3385,3185,3398,3598,3367,3399,3196,2871,2870] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2699,2700,2364,2379,2381,2728,2701,2702,2389,2390,2404,2405,2421,2703,2217,2229,2727] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3097,3140,3057,3073,3521,3498,3055,3061,3158,3159] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [62,580,579,265,208,248,654,550,551,552,553,554,555,557] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1743,1777,1780,1859,1860,1889,1890,1891,1926,1836,1861,1924,1886,1918,1921] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        