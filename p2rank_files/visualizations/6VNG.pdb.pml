
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
        
        load "data/6VNG.pdb", protein
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
 
        load "data/6VNG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2806,2808,2810,2564,2566,3841,3846,3852,3836,2834,2837,2799,3834,3818,2557,2559,2561,2568,2549,2553,2555,2536,2538,2539,2545,2546,2571,2570,2569,2750,3677,3678,3679,3574,3701,3536,2534,2535,2578,2584,2732,2733,3694,3696,3699,3700,3526,3702,2876,3717,3718] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2523,2543,2544,1361,1364,2521,1359,1360,1370,1373,1375,2219,2221,2222,2225,2496,2214,2218,1555,1570,1571,2495,2497,2501,2494,2519,2542,2758,2759,2741,2742,2224,2541,2548,1600,2217,1596,1597,1587,1588,2220,1522,1523,1322,1593,1594,1595,1049,1050,1051,1025,1026,2257,2241,2252,2280,2281,2260] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1150,1159,123,124,172,173,174,1261,125,136,135,717,307,718,722,715,117,118,120,121,734,736,1180,775,1181,768,771,744,740,743,1269,1125,322,323,1266,1267,1268,1165,139,145,1161] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2535,2578,2582,2584,2530,2583,3127,3128,2717,3676,3678,3574,3560,2533,2528,2527,2531,3590,3591,3670,3671,3569,3571,3125,3132,3178,3177,3153,3181,3185,3146] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1425,424,425,427,394,395,396,389,398,400,1282,1284,1292,428,142,340,153,155,322,323,139,146,434,466,159,158,1434,1308,1427,1424] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4341,3862,3863,3946,3837,3954,3972,4342,3877,3857,3940,3944,3950,3913,4319,4317] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4003,4004,4005,4006,4007,4010,3458,3459,3460,3775,3423,4679,4672,4667,4670,3431,3429] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2185,2040,2035,1823,1633,2181,2183] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4593,4043,4591,4440,4594,4595,4592,4233] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        