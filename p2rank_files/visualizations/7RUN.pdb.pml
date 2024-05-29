
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
        
        load "data/7RUN.pdb", protein
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
 
        load "data/7RUN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3065,3068,3037,3472,3473,3034,2786,3556,2894,3549,3442,3443,3073,3072,3457,3557,2461,2494,2472,2508,2509,2510,2452,2453,2459,2460,2454,2456,2457,2484,2652,2651,2487,2649,2636,2637,3012,3010,3011,3016,2819] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [201,207,208,209,242,202,204,256,257,258,380,381,205,808,1203,1204,754,760,778,781,805,786,232,395,396,530,1287,393,563,756,1288,1280,638,755,235,219,220,1173,812,813] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [226,225,227,228,233,235,237,238,1311,1442,1447,1443,1444,1464,1148,1187,1188,1174,1176,234,236,1288,2728,2691,2693,2694,2695,2705,1463,2692] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [472,3722,449,438,3723,3724,3743,3744,435,437,439,3445,2477,2478,2479,2485,2486,2487,2488,3727,2489,2490,3417,3457,3557,3579,3456,3443,3580] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1430,1434,1566,2715,1436,2709,2711,2712,2714,2710,1591,1565,1567,1502,1528,1534,2741,2274,2278,2287,2270,2743] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [487,453,455,26,3708,3710,3713,3715,458,459,3716,456,3812,3814,19,20,21,35,37,3782,3844,3846,3871,3847] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [226,227,1442,1447,1443,1444,450,469,472,3722,3723,3724,462,463,3727,2478,2479,2706,1429,2718,2719,2725,2728] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3885,4417,4420,4421,3883,3891,4423,3320,3350,3376,4438,3318,3322,4427,4434] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2142,2149,2135,2137,2138,2153,1053,1603,1081,1106,1107,1079,1080,1082,1049,2145,1051,1613,1604,2132,2136,1601,1602] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        