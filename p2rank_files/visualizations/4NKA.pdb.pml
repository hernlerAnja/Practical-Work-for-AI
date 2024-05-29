
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
        
        load "data/4NKA.pdb", protein
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
 
        load "data/4NKA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1607,1634,1635,1617,1618,1763,1632,3958,3984,3985,3986,3983,1547,1550,1587,1769,1768,1776,1783,1761,1762,1623,3826,3844,3816,1772,3757,3759,3796,1770,3832,3827,4000,3972,3975,3976,3982,3756,3834,3989,3990,3996,3997,3843,1771,3841] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [662,338,1204,450,677,678,482,561,483,1215,1219,1217,1214,1216,447,481,164,188,189,190,160,162,166,169,326,682,703,700,165,728,1091,1120,1121,721,724,161,167,1197,1198,1199,1203,1205,1105] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3396,2923,2924,3318,3319,3320,2906,3402,3403,3404,2532,2347,2348,2351,2353,2354,2355,3393,3397,3398,2764,2881,2885,2880,2530,2865,2655,2659,2531,2691,2690,2516,2350,2403,2528,2402,2404] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3961,3835,3836,3894,3929,3953,3928,3978,4122,3966,3701,4120,4123,3731,3529,3531,3554,3698] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2532,2605,2357,2365,2366,2385,2358,2388,2374,2378,2386,2387,2376,2603,2404,2658,2659,2531,2635,2633] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1626,1627,1757,1762,1739,1715,1351,1489,1328,1522,1492] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3136,3355,3104,3079,3110,3077,3080,3081,3082,3356,2973,3359,3054] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        