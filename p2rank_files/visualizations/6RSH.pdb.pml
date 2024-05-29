
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
        
        load "data/6RSH.pdb", protein
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
 
        load "data/6RSH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [188,181,192,185,193,194,195,160,161,167,168,169,171,357,358,1242,1243,355,356,211,158,196,197,156,157,198,205,190,1425,1428,372,424,423,451,421,484,452,455,457,411,426,428,1258,1267,1096,1261,1259,1282,1283,1257,447,448,450,445,449,446,1397,1398,1400,1383,1106,1244,1413,1424,1131,1133,1142,1143] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2522,2517,2520,2499,2500,2524,2525,3557,3558,3559,3693,2728,2730,2724,2704,2751,3574,3575,2748,3716,3425,3434,3536,3549,2689,2690,3534,2493,2490,2491,2492,2526,2527,2528,2529,2488,2530,2537,3397,3396,3398,3550,2687,2688,2746,2752,2753,2756,2758,2785,3551,2747,3535,2543,3423,3690,3689,3691,3705,3717] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [148,149,150,153,155,1128,1137,1142,732,1158,726,1242,1243,1236,708,209,210,211,152,729,1157,342,724,1241,793,758,789,791,751,750,740,1129] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2543,3009,2480,2481,2482,2484,2485,2541,2542,3429,3533,3527,3420,3528,3535,3434,3534,2487,2488,2489,2537,3059,3083,3084,3086,3033,3449,3450,2674,3030,3025,3027,3051,3052,3041] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4193,4194,1525,1526,1527,4191,4252,4227,1524,1927,1959,1960,1930,1958,1935,1900,1902,1899,1929,4250,3818,4219,4221,4222,3816,3814,3817] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3731,3764,4066,4051,4067,3424,3763,3422,3977,3074,3421,3423,3075,3076,3077,3425] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4507,4512,4515,3299,3324,4496,3876,3877,3880,4475,3628,3630,3868,3872,3874,3875,3627,3625] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1828,1968,1969,1942,1904,1936,1907,1908,1909,1911,3835,3673,3669,3824,3816] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2551,2566,2399,2983,2984,2985,2552,2441,2444,2446,2440,2426,2430] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4120,4199,4200,4201,4203,4228,4261,4196,1524,1543,1532,1377,1381,4118,4121,4123,4198,4234,4235,4260] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [94,98,684,67,108,112,114,219,234,220] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        