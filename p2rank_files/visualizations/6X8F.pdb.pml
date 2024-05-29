
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
        
        load "data/6X8F.pdb", protein
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
 
        load "data/6X8F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [150,153,157,163,397,399,400,401,402,167,174,175,176,177,178,179,334,347,437,165,166,138,140,141,142,143,149,1074,1038,1177,1190,1191,466,1192,426,425,1174,1175,193,335,1176,1063,1064,1065,1198,1200,1341,1342,1345,1356,1037] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2455,2465,3699,3700,3703,3702,3426,3529,3381,3714,3382,3550,2701,2730,2699,2704,2706,2726,2692,2469,3542,3543,2768,3544,2728,2727,3546,3552,3548,3565,3566,2694,2707,2696,3372,3661,3688,3709,3689,3660,3667,3690,3691,3410,3412,2440,2442,2444,2445,2443,2451,2476,2477,2478,2479,2480,2481,2452,3528,3526,3527,2636,2637,2495,2468,2733,2467] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [713,130,131,132,135,136,684,686,716,720,1060,1090,721,745,748,137,690,693,712,1174,1089,1169,667,193,1176,134,192,319,668,1074,138,139,191] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3034,3037,2436,2621,3011,3012,2437,2494,2432,2434,2433,2438,2439,2493,2495,2441,3405,3441,3442,3520,3521,3528,3526,2440,3056,3057,3060,3064,3089,3092,3028,3030,3426] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2353,2954,2989,2398,2400,2519,2402,2520,2946,2947,2955,2956,2961,2646,2664,2642,2652,2488,2484,2485,2487,2625,2483] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2032,2033,2605,3046,3025,3047,3026,2057,2058,1907,1917,3457,3458,3492,3466,2019,1949,2600,2599,2601,2021,2022] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1350,1351,1322,1312,1314,1317,1364,1309,1311,1398,1400,1401,1028,1199,1333,1427,1462,1464] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1512,1513,1516,1537,1504,1505,1506,1507,2156,2158,1509,1508,959,957,958,961] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2547,2392,2393,2568,2573,1988,2276,2287,2275,2285,2526,2391,2592,2527,1995,1996,1991,2607,2003] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [735,736,1063,1065,1614,1652,1664,1668,1653,1650,1388,1689,1703,1702,1688,1389] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2095,2066,2126,3055,3103,2130,3138,3139,3140,3102] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1934,2080,2082,1730,1579,1549] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4436,4438,4440,4292,4088,3907,3937] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        