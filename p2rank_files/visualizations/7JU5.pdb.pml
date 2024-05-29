
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
        
        load "data/7JU5.pdb", protein
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
 
        load "data/7JU5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2774,2798,2801,3891,283,272,279,280,281,282,276,530,531,534,529,1463,3888,3890,284,274,275,475,3571,3597,3598,3609,3908,3909,3887,3733,3734,3735,3572,3728,260,2517,2518,2519,2527,2529,2530,2528,1392,1393,1460,1461,1464,1465,561,556,557,558,1384,1256,1257,1267,1481,1482,451,1365,1367,1368,1369,1370,1371,1383,591,1231,2511,2520,270,2507,2508,2531,2715,2773,2806,2534,2536,2532,2533,2535,2537,2538,2700,2702,2703,271,3608,3712,3709,3724,3725,2802,2797,2698,2699,2803,2808,3710,3711,2831,3708,2550,2695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3132,3625,3624,3083,3108,3099,3101,3105,3169,3135,3122,3170,3209,3210,2496,2488,2489,2490,2494,2495,2548,2549,2550,2696,2697,2683,2492,2493,3139,3594,3140,3712,3711,3703,2497] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1284,240,241,242,245,244,870,866,867,843,1253,874,1283,300,301,435,818,836,451,1360,1369,1370,1371,1282,1362,449,840,302,246,247,450] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [259,450,285,287,288,289,458,302,286,563,568,561,556,557,558,1384,530,531,529,284,475,283,451,1365,1368,1369,1370,1371,1383,591,1231] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1444,1448,3892,1449,3870,2764,2789,2800,2791,3755,3756,3852,3735,3884,3562,3851,3853,1447] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [635,66,147,602,603,104,96,109,611,610,61,63,751,83,37,59,60,64,130] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1394,1414,1415,1221,1443,1413,1457,1462,1465,1447,1454,550,551,1475,1220,1600,1412] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1735,892,1781,1510,1511,2741,2735,2738,2739,2734,1254,1250,1256,1257,1258] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        