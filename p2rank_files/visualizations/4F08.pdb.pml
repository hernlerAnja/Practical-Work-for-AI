
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
        
        load "data/4F08.pdb", protein
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
 
        load "data/4F08.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1353,1348,1349,1310,2210,2211,2212,2209,1547,1562,2498,2502,2506,1360,1362,2477,2479,2480,1563,2484,2493,2525,2526,2527,2736,2214,2217,2719,2570,2733,1585,1586,1587,1588,1589,1592,2261,1613,1037,1038,1579,1580,1515,2249,2252,2233,2244,1013,1014,2272,2273,2258] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2710,2805,2808,3651,3653,2727,2847,3802,3659,3660,3811,3661,2544,2783,2785,2787,2538,3800,3799,3804,3805,3801,2529,2540,2542,2545,2548,2532,2536,3815,2547,2546,2709,2516,2517,2519,2521,2522,3636,3637,3638,3533,3523,3494,3495,3524,2559,2561] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1138,1169,763,115,117,1152,705,706,1168,173,724,118,120,121,307,1249,1256,710,717,791,123,172,174,759,756,731,728] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2559,2560,2561,2694,3091,3109,3549,2954,3635,3637,3550,3630,3519,3533,2510,3137,2511,2513,2514,3112,3140,3144,3145,3172,2516] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [143,1279,144,146,139,128,129,136,323,153,155,157,322,158,159,160,174,1255,1280,1114,1257,1152,1256,1143,1142] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [418,1272,1278,421,389,1416,157,156,1279,1417,1419,390] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1408,1409,1410,1528,1923,1444,1445,1459,1924,1522,1526,1532,1493,1495] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [416,418,1272,422,423,421,394,460,340,155,426] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3417,3418,3419,3390,3392,4626,4629,3382,4638,3388,4635,4631,4621,3962,3963,3964,3965,3966,3969,3734] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3841,4191,4192,4410,4032,4554,4553,4362,3866,3999] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2175,2177,2032,2033,1622,1625,1814,1815,1464,1985,1986,1489] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3821,4299,4300,3870,3872,3905,3909,3822,4301,4310,4312,3836] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        