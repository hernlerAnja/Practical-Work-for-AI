
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
        
        load "data/7M0Y.pdb", protein
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
 
        load "data/7M0Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [182,183,184,282,1179,1091,1092,1093,146,281,278,1172,1177,1178,629,527,643,644,134,137,138,142,143,2674,2676,725,727,728,139,664,665,666,266,648,698,693,726,697,686,672,668,671,1348,1051,1052,1063,1073,1062,150,155,147,1074,165,1032,1033,1064,1065,1066,3599,3603,2675,717,3605,3618,3619,3617,2673,2668,2672,2653] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3375,3508,3372,3373,3374,3509,2632,3512,3565,3567,3568,3590,2649,3561,2631,2647,3361,3360,3369,3379,3516,3533,2785,2990,3505,3506,3507,3513,3504,2881,3524,3525,3528,3535,3538,2989,3001,3003,2809,3521,2893,2879,2886,2808,2490,3389,3391,3390,3585,3586,3587,3591,3592,1728,3588,3589,2496,2497,2498,1738,3673,3674,3663,3659,3661,1707,1713,1724,1718,1720,1717,1719,3608,3628,2494,2493,1727,1737,3641] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3077,3045,2470,2472,2473,2516,2514,2515,2633,3402,3511,3053,3046,3048,3052,3427,3411,3428,3426,3008,3024,3028,3027,2613,3004,3078,2468,2469,2474,2475,2480,2481,2483,2484,2478,2479,2476,3403,3404] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3012,3458,3456,2288,2290,3009,2296,2297,2908,2292,2295,2291,2289,2321,2322,3490,3443,3473,2884,3011,3013,2275,2276,2260,2261,2270,2262,2298,2841,2871,2846,2832,2836,2843,3014,3017] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1655,2693,751,742,753,1645,1647,3573,3581,3600,3572,3579,2681,2683,750,2671,2678,748,1685,1650,1651,3574,3575,2712,2713,3553,3548,3578,3582,3576,1659,1661,717] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1172,1178,1189,1201,527,643,644,543,1190,1173,1183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [599,600,62,68,57,86,89,85,103,290,577,272,576] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2397,2440,2640,2418,2622,2542,2395,2396,2620,2621,2441,2442] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1710,3361,3704,3705,3730,3736,3740,3568,3569,3363,3365,1707,1716,1719,1746] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        