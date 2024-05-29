
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
        
        load "data/4K77.pdb", protein
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
 
        load "data/4K77.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3386,3537,3539,3385,3545,3547,3376,2494,2496,2505,2506,2473,2474,2480,2481,2482,2484,2737,2738,2739,2735,2736,3562,3563,2685,2745,2498,2501,2718,3681,2716,3677,2714,2740,3648,3705,3704,3708,2488,2490,2492,3412,3522,3524,2670,2671,2774,2524,3523,2470,2747,3422,3679,3678] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3408,3410,3417,3422,2468,2460,2461,2462,2467,3521,3522,3524,2524,3523,2469,2470,2522,3040,3043,3047,3419,3438,3021,2466,3015,3029,3515,3516,3437,3001,3018,2523,2655,2463,2465,3013,2997,3048,3073,2473,2474,2480,2481,3411] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [190,192,194,197,201,418,416,413,414,381,177,180,184,187,189,1405,1406,1247,1422,1246,1248,437,440,1263,1420,1223,1225,474,1224,1238,1240,366,367,202,220,441,442,445,1123,1086,1087,1124,169,170,165,166,167,1113,1112,1382,1409] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [157,158,159,163,164,165,166,1109,1118,1123,1222,1216,722,1139,1138,719,161,162,716,351,698,702,219,1217,220,218,1223,1224,748,749,774,741,744,730] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1883,1916,3805,3806,4215,4179,4206,4207,4208,4240,4177,1882,1508,1941,1907,1908,1909,1878,1505,1506,1507,4181,4182] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1975,1780,1980,1602,1632,2125,2127,2129] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4274,4428,4079,3931,3901,4426,4424] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        