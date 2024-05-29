
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
        
        load "data/5CF5.pdb", protein
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
 
        load "data/5CF5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3167,3171,2981,3656,3657,2529,2584,3139,3576,3577,2533,2534,2527,2585,2583,3114,2531,2718,3118,3130,3132,3136,3546,2532,2528,3164,3172,3199,3662,3664] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [142,165,143,146,150,151,155,158,160,162,163,1380,1391,1394,431,1276,403,1401,401,1094,1258,1260,1250,1251,1252,1275,1132,1235,1237,135,136,326,327,470,1236,178,344,436,428,432,433,398,429,430] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [176,177,178,311,696,695,1229,125,127,712,128,714,124,130,131,1118,1234,746,749,1147,1148,1149,1128,1129,722,577,700,721,718,754,781,753] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2546,2547,2570,2571,2572,2573,2574,2585,2539,2540,2535,2536,2537,2538,2550,2569,3657,3551,3560,2554,2557,3686,3687,3678,2566,2567,2568,3688,3522,3665,3664,3663,2733,2734,2751,2874] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [869,870,872,874,2054,4608,4612,2350,865,861,4625,4675,4644,4645,2071,4674,4640,2347,2348,2346] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2835,2832,2806,2808,3680,3682,2566,2567,2568,3688,3822,3827,3703,2833,3704] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3985,3986,4641,3987,4644,4661,3761,3417,3444,3445,3446,4636,4653,4646,4657,3419,3409] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1741,4402,4401,4403,4540,4541,4542,4543,4563,2038,1740,1715,1716,1717,1732,4579,4580,4581,4575] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1411,1415,1430,1464,1466,1502,1493,1497,1499,1389,1416,1387,1869,1895,1893,1894] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4022,4025,4565,4566,4567,4569,4414,4570,4214,4215,4419] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2004,1786,2003,1998,2149,2148,2146] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        