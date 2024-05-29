
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
        
        load "data/7B9L.pdb", protein
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
 
        load "data/7B9L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1322,1323,1422,1423,1415,1283,1339,403,404,405,905,1338,909,510,925,357,359,364,365,361,362,983,928,945,946,1301,1314,1315,954,1313,530,388,529,528,373,369,372,391,370,384,385,1502,1302,1286,891,780,890,903,904,682,705,792,794,1416,1417,1418,1419,1424,1427,1432,1434,1436,777,1499,1501,1467,1473,1469,1470,1472,1474,1478,546,1446,1444,1449,1450,706,730,702,729,358,982,984] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3590,3591,3592,3724,3725,3726,3628,2861,2844,2845,3202,3216,3727,3728,3729,3215,3721,3644,3733,3755,3778,3750,3752,3784,3732,3805,3807,3808,3812,3785,3621,3265,3619,3620,2682,2726,2727,2728,2684,2825,3257,3260,3645,3239,3236,2680,2681,2687,2688,3293,3294,3295,2685,2693,2696,2699,2703,2706,2707,3608,2695,2708,2692,2711,2690] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2866,413,3178,3180,397,415,416,327,329,331,390,391,387,534,389,535,536,866,867,869,537,538,517,285,519,286,2709,2712,2713,2714,2715,2719,2849,2738,3179,2720,2852,2853,2630,2739,852,2650,2653,2654,856,551,553,555,2698,2702,2754,2646,2862,2865,3177,2608,2710,3163,3167,2869,2834,2832] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3730,3020,3021,3091,3738,3740,3044,3105,3103,3017,3733,3750,3723,2843,3202,3722,3728,3093,3215,3201] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3674,3675,2537,3707,3218,3221,3222,3224,3226,3120,2533,2534,2507,2509,2487,2500,2503,2504,2502,2473,3229,2809] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3406,3408,2439,3694,3696,3691,3681,3683,3436,3405,3698,3428,3076,3078,2449,2422,3430,3460,4620,3064] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3406,3407,3408,3409,3410,3696,3681,3436,3405,3698,3428,3076,3430,4620,4664,4648] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [911,913,181,184,186,809,177,178,180,480,210,211,481,1401,148,153,150,179,918,1369,1354,486] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        