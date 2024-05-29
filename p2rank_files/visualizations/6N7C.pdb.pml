
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
        
        load "data/6N7C.pdb", protein
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
 
        load "data/6N7C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [209,210,211,1194,355,357,358,1187,194,195,205,342,668,188,181,185,192,372,420,421,392,424,453,426,362,361,395,1209,1216,1217,1218,1210,1193,1195,1208,1192,1186,414,415,416,419,719,745,1079,718,744,149,150,155,156,157,1108,1109,692,710,711,152,686,700,153,689,167,168,171,1082,158,1084,1359,1056,1057,1093,1088,1345] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3347,2442,2443,2444,2575,3426,2383,2385,2944,2951,2952,2981,2983,3318,3348,2943,2382,2386,3327,3431,3425,2901,2922,2925,2917,2919,2933,2905,2391,2388,2389,2390,2438,3332,3432,3433,3321,2591] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3296,3332,3432,3434,3433,2430,2390,2431,2438,2404,2414,2400,2401,2427,2428,3295,3455,3321,3323,2418,2626,2590,2591,2605,2686,2588,2659,2429,2594,2595,2425,2426,3448,3449,3457,3447,2647,2648,2649,2652,2625,2653,2654,2657,2444,2421,2629] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4034,4035,1820,1822,1821,1854,1444,1445,1829,1801,1802,3677,3678,4068,4060,4093,4061] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [735,736,1688,1606,1646,1693,1657,1660,1680,1681,1643,1644,1645,1083,1389,1390,1082] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3309,3320,3321,3322,3622,3623,3839,2968,2969,3913,3914,3921,3890,3893,3876,3877,3878,3879,3929,3926] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1339,1330,1047,1481,1461,1479,4044,1351,1352,1401,4011,4014] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1498,1500,1501,958,983,1494,2098,2109,1502,2114,2117,1506] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        