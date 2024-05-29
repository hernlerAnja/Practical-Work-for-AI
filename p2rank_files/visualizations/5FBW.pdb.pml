
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
        
        load "data/5FBW.pdb", protein
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
 
        load "data/5FBW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2848,2362,2927,2825,1401,1428,2349,2847,2849,2358,1700,2338,1697,1706,1683,1672,1680,2221,2223,2926,2306,1921,2224,2923,2924,2307,1998,1999,2929,2932,2933,2934,2935,2324,2330,2327,2328,2318,2321,2322,1997,2332,2336,1404,1405,1920,1402,1456,1953,1954,1955,1413,1390,1971,1935,1936,1937,1476,1906,1494,1495,1496,1389,1373,1736,1734,1735] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [230,227,228,3830,3832,3829,3840,3844,3849,3854,4173,3848,3824,4177,4178,226,4580,231,4562,4563,4566,4579,3836,4559,4560,3841,4561,3842,4586,254,255,4587,3818,3814,4312,3958,3952,3960,3859,3860,3861,3978,3979,3983,3853,3996,3985,3986,3989,3991,233,3946,259,3964,3947,3948,4789] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [381,672,384,670,668,1292,1293,383,675,678,360,382,619,620,704,1255,1269,1273,1274,1275,1276,1277,1278,1286,671,654,660,667,1575,1561,1562,643,653,1556,415,700,701,702,703,356] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [380,412,415,703,2008,730,731,2238,2244,2247,2249,2251,1264,704,1255,1260,389,391,2031,2065,386,387,388,2038,2041,2007,421,422,2032,2230,2231,2232,2233,2029] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2730,2988,2984,2710,3693,2987,3690,3664,3665,2772,2784,3689,2729,2733,2736,2738,2768,3666,3669,2728,2732,2708] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4822,4849,3802,3903,4279,4844,3865,3867,3869,3801,3866,3900,3877] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1348,1353,1359,1360,1361,1362,1347,1368,1369,1148,1172,1335,1336,1645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3771,4907,4909,3751,4930,4912,4914,4935,4936,3740,3746,3747,3749,4106,4916] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [492,3382,3384,3389,752,755,757,1980,3405,3356,3360,3404,3388,3403] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2424,2397,2487,2488,2486,2423,2356,2853,2357,2857,2525,2524,2526,2870,2867] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2047,2748,3303,2759] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        