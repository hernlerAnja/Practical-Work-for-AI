
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
        
        load "data/6RSE.pdb", protein
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
 
        load "data/6RSE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1259,1261,1266,1267,1242,1244,1257,1258,484,447,448,1283,1400,1405,450,1409,1398,1282,192,193,194,195,356,357,358,1243,196,197,198,211,355,423,451,452,455,372,175,188,190,1428,171,181,185,183,424,1105,1133,1106,1143,1142,160,161,167,168,158,1424,1425,1131] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [150,1158,732,152,726,729,153,148,149,155,1157,1235,1137,1142,1241,708,342,1243,209,210,211,1236,791,750,751,740,1128,759,789,793] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3396,3398,3534,3536,3549,3550,3557,3551,3535,2492,2499,2500,2690,2543,2687,2688,2689,2526,2527,2528,2529,2530,2694,2748,2785,2724,2752,2753,2756,2704,2758,3397,3423,3425,3434,2493,2501,2503,2507,2509,2513,2524,3716,3717,3733,3558,3559,2522,2517,2520,2728,2730,2751,3693,3720,3690] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2487,2480,2481,2482,3086,3429,3434,3420,3059,3084,3085,2541,2542,2543,3533,3534,3528,3535,2484,3055,3051,3052,3450,3027,2485,3025,3030,3033,3041,3449,3009,2674] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1902,1900,1527,1899,1927,1958,1960,3816,1525,1526,4252,4218,4219,4194,4191,4227,1524,1935,3818,3819,3817] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3773,3775,3776,3675,3853,3855,3725,3708,3709,3835,3831,3834,3802,3707] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3763,3977,4051,3076,3077,3424,3764,4064,4066,4067,4052] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3775,3776,3388,3675,3725,3558,3559,3689,3708,3709,3702,3703,3707] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        