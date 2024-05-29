
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
        
        load "data/3UO6.pdb", protein
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
 
        load "data/3UO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3246,3601,3648,3650,3620,3621,3622,3623,3624,3626,3595,3597,1399,1480,1074,1076,1094,1431,1361,1398,1400,1248,3640,1092,1346,3639,1347,1256,1260,1345,1093,1095,1111,1112,1135,1136,3244,3245,3240,1450,1451,1452,1453,1454,1426,1427,3569,1428,3515,3516,3517,1469,1470,3418,3426,3427,3430,3431,3413,3411,3262,3263,3265,3570,3568,3264,3282,3305,3531,3281,3306] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2950,3295,2947,2954,2952,2983,3500,3501,3502,3774,2980,2981,3820,3846,3804,2990,2991,2988,2989,2984,2985,2978,2979,3498,3499,3506,3521,3298,3296,3525,3297,3560,3561,3549,3819,3517] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [766,1152,1268,1279,1283,119,122,751,756,757,744,124,117,118,123,790,791,572,1151,121,718,732,736,739,305,177,178,713,1123,1130,1218] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3453,2927,2930,2935,2936,2288,2289,2291,2292,2902,2909,2914,2275,2961,3449,3321,2742,2888,2347,2348,2458,2900,2906,3293,3300,3436,3388,3435,3437,3322,2475,2883] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [782,821,1329,1330,1331,1332,811,813,1604,1634,780,777,810,814,815,818,819,1336,1328,1126,1127,1674,1675,1676,1639,1390,1378,1379,1650,1649,1351,1355] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [395,1248,1250,1251,1253,3640,3641,1230,3648,3650,3651,1070,1074,1076,420,394,396,463,391,389,384,3236,3645] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [29,706,30,32,74,75,283,264,266,219,247,220,705,599,600,601,602,594,595,596,597,598,604] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2766,2767,2768,2769,2770,2771,2772,2875,2876,2199,2200,2202,2245,2453,2244,2390,2389,2436,2437,2432,2434,2435] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1062,1084,2580,2582,2593,423,2586,2590,461,463,460,462,1085,486,1228,1226,1230,1250,1253,1070] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2570,2568,2569,2571,2807,2809,2806,2808,2810,2572,2610,2611,2602,2607,2608,2509,2532,2507,2508,2510,2848] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2593,2592,1066,2566,2561,2564,2559,1480,1481,1471,3420,1475,2555,2554,3423,3421,2565,1478] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [402,339,340,401,362,432,678,440,441,638,639,640,438,400] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        