
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
        
        load "data/4CNH.pdb", protein
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
 
        load "data/4CNH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1945,3629,3631,3633,3411,3409,3410,1920,1913,1914,1917,1886,3628,3630,3632,3594,3627,3599,3642,3381,3383,3384,2812,3388,3389,3574,3576,3578,3597,3593,3596,3572,3600,2791,2751,2752,2788,3573,3575,1983,1984,2027,2000,2298,2300,2304,2287,2779,2780,2781,2782,2754,2749,1944,1943,1816,1817,1820,1965,1985,1805,1807,1801,2307,1992,1989,1990,2321,2316,2311,3812,1812,1815,3390,3392,1826,1908,1910,1911,1946,3367,3368,3359,3385,3595,3800,3809,3821,3826,3824] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3472,2638,3026,3038,3040,3043,2555,2500,2553,2503,2504,2502,2554,2498,2501,2518,2520,2521,2524,3580,3583,3457,3588,3589,3565,3566,3567,3443,2517,2539,2508,2509,2516,3452,3453,3564,3471,3559,3044,3421,3446,3447,3065,3067,3058,3061,2651,2529,2525,2536,2652,2653,3021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1151,747,751,753,1178,1180,1272,239,241,1179,725,729,744,224,222,726,730,240,336,338,339,1267,707,324,1274] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1089,1337,1091,31,1339,40,1075,1302,1335,1083,1087,1093,1096,1303,1092,1118,1119,1329,1331,1332] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1844,1849,1862,1863,1864,1870,3825,3826,4334,4335,4336,4344,4345,3760,3761,3762,3763,3807,1873,3793,3808,3750,3755,3756,3759,3796,3784,4319,4328,4329,3752,1845,1843,1842] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1426,1424,1429,1430,1433,1425,1458,1459,1467,1993,1994,2309,1991,1797,2329,2339,2343,2344,1470,1988,1436,2010,2001,2002,2003] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3554,3560,3561,3562,3400,3402,3563,2888,3551,3336,2889,3574,3576,2845,2820] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3872,4019,4294,4296,4297,3905,4144] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        