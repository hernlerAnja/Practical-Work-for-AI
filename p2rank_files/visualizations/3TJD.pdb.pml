
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
        
        load "data/3TJD.pdb", protein
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
 
        load "data/3TJD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [116,117,122,123,771,118,172,174,1118,1119,1131,1237,1095,1134,1235,1236,1238,1252,1251,1260,1259,154,147,149,150,151,158,322,323,129,128,135,136,159,160,161,162,124,126,1399,1396,1253,1261,1398,1400,1277,425,427,156,398,400,395,1230,466,686,120,173,307,691,703,687,684,340,394,424,121,707,740,744,745,1150,1149,712,736,737,573,709,1122,1094,1123,1124,1404,1415] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2519,2520,2522,2524,2531,2532,3123,3515,3133,3136,3140,3141,3167,3546,2569,2703,2513,2512,2514,2516,2517,2559,2560,3105,3108,3529,3631,3632,3633,3634,2570,2718,2557,2558,3655,3657,3648,3647,2719,2535,2543,2554,2555,2556,2550,2551,2552,2553,3545,3626,3082,3083,2969,3087,3656,3491,3519,3520,3811] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3730,3725,3726,2361,2362,2363,881,2359,3415,3962,3963,4621,4625,4626,4631,4635,4638,4629,4648,4630,4642,4646,4660,3969,3956,3957,3378,3386,3413,3414,3964,3388,4593,870,871,872,874,4586,4591,4592,4597,4588,862,864,866,876,4610] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3779,3782,3802,3803,2823,3672,3673,3776,3481,2821,2822,2820,2793,2795,2552,2553,3651,3657,3649,3811,3804,3805,3806] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2578,2579,2728,2593,2459,2477,2432,2433,3057,2434,2463,2726] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        