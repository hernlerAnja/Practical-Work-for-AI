
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
        
        load "data/4E6D.pdb", protein
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
 
        load "data/4E6D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1356,1592,1593,1594,1587,1595,1354,1355,1586,1360,2565,2566,1317,2564,1036,1037,1039,1365,1367,1596,1599,2226,2225,2227,2229,1522,1568,1521,1554,1555,2779,2267,2778,2781,2264,2288,2231,2764,2248,2259,2263,2276,1000,1035,1012,2269,1013,2516,2517,2527,2537,2530,1369,1375,2521,2514,1570,1357,2541,2544,2545,2598,2599,2615,2562] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2755,2898,2567,2568,2571,3678,3685,3687,3686,3837,3850,3559,3550,3520,3521,3560,3663,3662,3664,3677,2606,2754,3679,2560,2561,3549,2590,2575,2579,2576,2577,2578,2588,2589,2585,2587] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1138,1261,1264,140,141,142,788,789,790,146,147,148,150,198,144,196,197,705,331,721,145,723,725,1256,704,729,753,1174,1175,754,1176,597,726,757,761,762] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2555,3545,2550,2604,2605,2739,2552,2606,3113,3656,3663,3554,2549,2553,3197,3575,3576,3117,3124,3134,3137,3162,3165,3169,3131] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1303,1426,1423,1424,451,449,414,448,450,166,178,180,421,423,169,1279,1287,452,453,418,364,490,1433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3985,3986,4652,4654,3408,3443] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3984,3985,3986,3987,3443,3444,3445,3760,4643,3416,4645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4564,4565,4566,4567,4568,4214,4024] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2190,2192,1822,2048,2047,2042] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        