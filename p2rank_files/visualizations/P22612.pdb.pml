
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
        
        load "data/P22612.pdb", protein
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
 
        load "data/P22612.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1359,1505,1530,1531,1529,430,432,1376,1387,1036,1389,1037,696,710,676,422,433,592,395,397,401,402,405,2688,407,413,409,414,415,417,434,1632,1634,1640,1633,1498,1499,1501,1503,1504,1517,1518,1521,1496,1400,1388,454,452,455,1497,558,1415,1416,2658,575,576,574,985,396,399,1002,990] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2490,2492,2493,2494,2495,2467,2469,2471,2472,140,142,143,144,145,2496,2498,118,119,112,2455,114,109,111,811,812,1241,1260,1262,2374,155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1664,1639,1666,1877,1878,1919,1920,1656,1651,1653,1654,1655,1053,1055,1089,1391,1392] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1185,2486,2531,2436,2434,2445,2438,2532,2446,1178,1179,1181,1152,1153,1154,1151,1175,1177,2537,2553] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1290,1285,1286,1287,1800,1769,2336,1802,2339,1258,1293,2344] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [566,959,962,316,317,366,318,2751,362,363,340,2731,2728] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        