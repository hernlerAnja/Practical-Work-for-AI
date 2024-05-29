
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
        
        load "data/6V2W.pdb", protein
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
 
        load "data/6V2W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1064,1063,1066,1062,693,697,698,1091,1093,138,139,184,146,142,140,143,150,3643,3645,3647,3646,147,155,281,1178,1179,278,1073,1092,1172,527,644,525,134,182,183,671,672,665,666,668,686,266,642,643,648,1052,1348,2697,2700,2681,2698,2699,2701,725,727,137,131,3633,717,3627,3631,2696,3636,2521,2692,2693,2678,3609] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3399,3414,3415,3416,3385,3397,3398,3400,3436,3437,3702,3537,2656,2658,3701,3534,3536,3539,3615,3616,3618,3617,3584,3585,3591,3593,3595,3544,3556,3563,3552,3553,3589,3566,3590,2523,2673,2674,3015,3596,1713,1717,1719,3386,1707,3561,1724,1727,1728,3669,1720,1737,1738,3678,2518,2519,2515,3614,3656,3691,3689,3683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3427,3428,3073,3077,3078,3101,3102,3451,3452,3453,3103,2493,2494,2495,2497,2498,2499,2500,2501,2638,3053,3033,3049,3070,3071,3052,2526,2541,2657,2658,3540,2528,2529,2540,3436,3029,2504,2505,2506,2503,2508,2509] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2300,2301,2320,2321,2323,2286,2317,2322,2347,2933,2618,2871,2875,2868,2285,2316,2314,2313,2315,2295,2909,3036,3037,3038,3039,3042,3034,2622,2896,3515,2287,3497,3498,3483,2857,2866,2861] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3607,3609,3610,3601,3606,3604,2718,2738,2737,3576,3581,750,2708,2703,1685,3603,3605,1683,1686,717,3628,3631,2696,751,1661,753,1645,1659,1660,1655,1647,1650] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3525,3533,3534,3551,3549,3539,3028,2904,2905,3014,3015,3544,3589,2833,2834] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1201,629,545,543,644,525,1189,1190,524,1183,1173,1178,278,1172,527,642,643,532] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [89,272,577,69,85,82,86,57,62,589,599,600,68,103,290] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [746,785,742,1645,801,849,1885,1887,1643,1622,795,797,1888] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3596,1716,1719,3388,3390,3733,1707,1710,3732,3758,3764,3768,1746,3761] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        