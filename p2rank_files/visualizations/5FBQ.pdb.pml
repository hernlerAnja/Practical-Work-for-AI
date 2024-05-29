
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
        
        load "data/5FBQ.pdb", protein
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
 
        load "data/5FBQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2877,2386,2390,2875,2876,1424,1425,2853,2860,1422,1433,1476,1477,1420,2954,1949,2334,1948,2951,2952,2961,2955,1963,1964,1965,2335,1446,1448,1980,1981,1982,1983,2962,2963,2380,2366,2377,2384,1496,1409,1497,1516,1515,2346,2349,2350,2355,2360,2352,2364,1734,1762,1421,1711,1700,1708,1694,1763,1764,2246,2247,2250,2248,2027,2028,1999,1987] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4240,4235,4232,4213,4217,4218,4219,4018,4193,4203,3658,3659,3660,4204,3217,3218,4023,3174,4024,3692,3243,3624,3657,4013,4015,4016,4017,3173,3175,3178,3176,3177] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [703,704,1275,1289,1293,1294,1295,1296,702,701,700,667,668,669,670,671,1297,1311,1313,354,356,349,360,381,382,383,384,678,672,620,619,653,654,675,1580,1599,415,379,380] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [391,2092,2093,2059,2060,703,704,1275,421,2036,2035,379,386,388,380,422,2266,2258,1284,2259,2260,2261,1280] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3839,3845,3850,3851,4186,4190,3832,3833,3835,3865,3869,3860,3861,3862,3863,3853,3870,3874,3882,4005,3875,3987] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3882,3955,3957,4804,4811,4809,4600,3853,3857,4326,4586,4607,3862,4581,4599] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3830,4239,4247,3815,4241,4211,4221,4225,4194,4432,4212,4459,4493,4491,4466,4461,4501,4465,4467,4456,4531,4530] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4056,4057,2632,2633,3779,3780,4154,4155,4157,2578,4142,4141,3152,3157,3158,3148,2630,2660,2629,4143,2652,2653,3159,2579] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2766,2768,2738,3703,3706,3707,3709,2757,2760,2795,2812,2736,2761,2764,2796,3727,3728,3729,3705,3730,3733,3024,3027,3028] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3904,3905,3930,3931,2178,2174,2175,4033,2176,3873,4032,4031,4034,2193,2194,2699,3189,3899,4038,3929,3897,4050] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1505,1524,942,1365,973,1271] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4288,4569,4290,4874,3890,3891,4306,4793,4840,4842,4864,4844] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        