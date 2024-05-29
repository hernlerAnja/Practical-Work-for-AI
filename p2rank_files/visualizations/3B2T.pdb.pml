
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
        
        load "data/3B2T.pdb", protein
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
 
        load "data/3B2T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [221,233,234,219,235,236,208,218,238,239,200,207,231,232,454,475,477,474,478,1427,374,375,376,619,735,1263,250,252,251,373,736,740,201,203,204,360,758,761,754,506,507,1275,1276,472,473,479,1277,237,484,482,1255,1262,1164,1149,1150,1178,1179,789,779,782,762,1163,1124,1125,1284,1139,1140,2722,2724,2721,2723,2705,1152,2720,2735,2736,2762,1285,1422,1444,1286,2529,2761] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3488,3087,3086,3090,3094,3562,3568,3569,3458,2814,2684,2683,2551,2552,2553,2680,2525,2527,2528,3048,3066,3060,3062,3069,2928,3487,3043,3044,2668,2523,2524,3097] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3728,2784,3433,3590,3591,414,415,416,3434,3448,3750,3592,3459,3461,3462,3748,3449,2532,2533,2761,2781,3473,3566,3568,3569,3472,3458,3585,3565,3581,3582,2813,2779,2780,2785,2786,2684,2682,2683,223,225,401,417,413,429,455] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3721,3725,3729,3730,3732,3424,3743,2754,3713,3714,3706,3711,3693,3700,3704,3592,3605,3606,3588,446,447,3722] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [446,447,476,1427,1426,2753,1407,1387,1394,1400,1405,1424,1408,1415,1419,1416,1286,1115,1299,1300,1398,1282,2754] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1588,2123,2124,1589,1591,2125,2126,2130,2137,2141,1058,1060,1061,1062,1065,1059,1577,1580,1582,1028,1030] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4436,3883,3368,3889,3897,4432,4429,4431,3879,3886,3367,3366,4443,4447,4430,3338,3369,3370,3373] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2007,2186,2184,2185,2116,2117,2003,1996,1998,2002,2034,2036,2033,2118,2009,1968] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4309,4312,4313,4315,4492,4423,4422,4339,4340,4342,4424,4489,4490,4491] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2366,2368,2352,2355,2356,2361,2799,2797,2798,1798,1799,2768,2769,2770,2360,1797,2772] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [828,962,990,1214,1215,1216,1218,900,899,932,933,934,935,931,955,956] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3273,3521,3522,3135,3136,3211,3272,3539,3301,3212,3242,3243,3266,3244,3245,3267,3145] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        