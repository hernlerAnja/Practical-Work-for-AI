
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
        
        load "data/4XX9.pdb", protein
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
 
        load "data/4XX9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2705,2665,1074,2452,2666,2667,2668,696,348,361,362,404,2653,2486,2434,1695,322,323,340,1698,1314,2652,1315,1592,428,429,430,694,663,1608,1637,2485,1640,1624,324,326,1684,387,388,389,970,1073,2694,971,972,973,974,988,989,969,2402,2403,2991,2355,2982,2439,2968,2979,2706,373,977,922,923,975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2117,2118,2120,2167,2168,4524,2166,2176,2177,2180,2182,4728,4732,4677,4678,4702,1278,1246,1247,1260,1261,4752,4754,1245] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1258,2524,2617,2618,2619,1609,1616,1619,1376,1292,1329,1256,1259,2521,2522,2553,2535] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1569,1523,1525,1526,1541,1448,1411,1412,1413,1424,1449,1447,992,1026,1085,1087,1088,1089,995,991,1017,1018,1024] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1980,1981,4639,4637,4735,4646,4661,4787,4651,2002,4830,2004,4829,4831,4800,1999,2006,1998,1938,1941] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [449,717,240,242,246,244,248,1505,1547,1548,1503,156] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        