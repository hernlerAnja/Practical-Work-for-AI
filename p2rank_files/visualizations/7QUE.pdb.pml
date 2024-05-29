
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
        
        load "data/7QUE.pdb", protein
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
 
        load "data/7QUE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [189,278,1137,711,690,692,699,1044,678,696,543,544,545,710,292,433,291,311,434,290,673,1159,1160,1161,1139,1140,1143,1144,1145,1146,1028,1136,1138,719,720,1016,1045,347,171,147,158,159,722,175,145,188,190,144,138,139,142,141,176] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2820,2139,2418,2420,2422,2432,2152,2072,2150,2151,2049,2050,2046,2047,2045,2048,1581,1586,1590,1573,1574,1575,2449,2439,2440,2441,2458,2914,2915,2424,2821,2324,2428,2406,2401,2153] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1532,1533,1456,1457,1458,1492,1490,1491,1428,1426,1001,1011,1012,1439,1636,1548,1606,1638] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3249,3219,3234,3241,3242,3246,3247,3226,2535,2539,2534,2538,166,354,3221,2468,2499,2540,2541,2496,2498,2494] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3189,3167,3165,3168,3169,3186,3187,3188,2772,2778,2781,3222,3263,2783,2792,3325,3156,3158,3357,3275,3278] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2162,1999,1996,1997,2164,2015,2089,2090,2144,2379,2394,2369] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1428,1403,1890,1424,1425,1426,1402,1439,1638,1637] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3541,3542,3543,3662,3630,3637,3609] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        