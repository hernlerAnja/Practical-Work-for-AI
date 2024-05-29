
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
        
        load "data/5S82.pdb", protein
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
 
        load "data/5S82.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [248,250,252,594,122,123,149,125,127,128,101,147,703,96,590,244,148,236,99,626,97,98,628,630,1231,117,294,295,296,1042,1179,312,1177,1025,1156,1157,1158,1159,1041,1052,1053,1064,668,1237,1023,1024,1178,1229,1230,489,1152,1153,1151,1080,1081,663,667,660,488,613,632,635,645,608,609] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3404,3407,3408,3409,3410,2490,2610,2611,2488,2489,2337,2340,2342,2389,2390,2391,2364,2365,2541,2366,2367,2368,2369,2370,3429,3430,2566,2843,2482,2486,2839,3525,3274,3275,3291,3314,3292,3303,3304,3305,3519,2539,3402,3403,3302,3331,3330,2338,2908,2905,2884,2857,2877,2474,2875,2858,2701,2881,2912,2913,2941] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2203,2204,2205,2206,3598,3604,3607,4089,4090,4091,4092,841,2236,2237,4129,4130,2178,3606,2202,2207,2200,3506,3619,4063,4062,4099,4100,4066,4122,870,872,888,890,446,448,457,455,456,889,897,899,925,943] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1042,1055,1056,1057,1758,1745,1743,1744,1267,1269,1040,1238,1540,1683,685,687,1674,1675,683,1048,1053,1054,1254,1255,1256] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4041,3542,3543,3957,4027,2930,2932,3958,3544,3540,3555,3290,3303,3305,3307,3526,4028,3298,2928] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2631,2660,2662,2644,2637,2642,2697,2659,2706,2663,2703,3219,3217,3148,3140,3241,2691,3417,2692,2690,3220] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [511,190,191,192,193,194,195,197,230,189,601,54,517,34,32] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2165,2160,2163,2164,926,2177,2176,2175,915,1415,1418,1419,1388,1425,1420,917,2154,1451,1427,912,913,1389,1413] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3700,3701,4436,3155,3675,3702,3705,3706,4433,3153,3712,3714,4430,4435,3157,3151,3152,3164,4445] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2295,2743,2851,2309,2291,2292,2308,2827,2828,2829,2830,2831,2832,2833,2834,2272,2288] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        