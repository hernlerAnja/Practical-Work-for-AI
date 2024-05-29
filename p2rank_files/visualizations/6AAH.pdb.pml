
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
        
        load "data/6AAH.pdb", protein
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
 
        load "data/6AAH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [727,731,1099,1116,732,724,1137,128,141,142,146,699,713,757,705,143,145,195,196,197,681,1214,1215,1220,328,697,702,1136,1107,1109,148,149,151,153,154,160,161,163,1222,343,344,1121,1074,1221,1223,754,756] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3543,3547,2659,2661,2760,3545,3561,3562,3563,3565,2729,2730,2733,2735,3390,3391,3424,3426,3438,3422,2506,2466,2492,2490,2491,2655,2657,2665,2666,2489,2736,3733,2474,2477,2482,2486,2706,2676,2704,2725,2726,2728,2473,2487,2488,3381,3569,3571,3586,3587,2727,3732,3747,3709,3736,3705,3706] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3416,3433,3453,3454,3531,3532,3048,3005,3026,3029,2454,2455,2456,2458,2459,3021,3023,2504,2505,2637,2461,2462,2463,2464,2506,2657,3426,3438,3541,3543,3547,2661,3076,3079,3037,3051,3055,3056] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3599,3617,3625,3628,3618,3619,3343,350,354,3891,138,190,206,3635,3638,3639,370,107,108,205,101,105,220,60,61,655,656,657,334,87,91,88,3317,3321,3340,3341,3342] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3890,3888,3891,3884,135,136,137,138,190,206,3628,3892,3893,3896,3917,4494,4508,4519,3635,3637,3638,3639,3879,3881,3640,3641,3642,158,4492,4495,115,121,131,107,108,109,4527,4524,134,3292,4529,4533,3289,104,3315,3316,3318] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [286,97,99,3300,3302,271,269,3322,96,98,100,3331,3323,3330,285,287,3293,4554,4556,3266,3268,3269,3270,3271,3272,2843,3298,284,3273,3289,3290,3294,3295,3332,228,117,119,316,229,4552] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [749,747,748,1744,1745,1724,1445,1670,1757,1759,1760,745,746,1707,1708,1709,1710,1711,1721,1101,1105,1087,1073,1413,1446,1093] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3071,3418,3993,3779,3780,4083,3070,4033,4032,4044,4067,4030,3404,3422] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [285,287,3293,3269,2843,3298,3294,3295,286,3300,3302,275,271,274,3323,3322,2841,2825] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1567,1568,969,2218,2193,2192,2197,2198,2201,2202,2203,2214,1570,1573,2161,1553,1561,1565,1569,1566,1275,1302,1306,2182,1556] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2980,2981,2514,2668,2403,2407,2529,2395,2367,2391,2643,2979] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1457,1485,1541,1458,1063,1064,1357,1404,1245,1403,1377,1380,1408,1371,1359] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        