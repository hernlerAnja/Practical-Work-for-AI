
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
        
        load "data/6PNX.pdb", protein
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
 
        load "data/6PNX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1300,1306,1307,396,752,1223,181,182,236,237,238,184,380,774,777,639,756,215,1308,393,394,1194,1224,795,794,1208] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1567,1572,1874,1871,1873,4143,4144,1879,1880,3200,1568,1569,1571,1573,3199,1841,4302,4059,4287,4288,4295,4308,4091,4093,4312,4284,4277,4291,1904,1908,1868,1875,1905,1907] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3557,3641,3527,3640,2551,3633,3634,2708,2709,3556,3083,3090,2497,2550,3107,2952,3069,3087,2693,3065,2493,2494,2500,2495,2498] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3439,4514,4500,4501,4502,3436,3437,3440,3704,3705,3703,4510,3438,3955,3989,4503,4507,3954,3957,3968,3410,3406,3408] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1400,1413,1415,4168,4169,4170,3838,3839,4164,1384,1589,1590,3837,3836,1390,1481,1482,1483,4178,4179,1353,1355,1354] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1003,976,1007,842,843,945,1009,1036,1259,1260,1277,1261,1263] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2551,2533,2534,2536,2537,2710,2713,2725,2707,2838,2705,2816,2814,2521,2523,2525,2532,2524,2811,2804,2805,2806,2810,2783,3664,2512,2513,2516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3593,3611,3340,3309,3311,3312,3596,3164,3155,3156,3261,3278,3310] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3132,1394,1396,3851,4112,4125,3134,1395,4117,4118,3524,3528,3529] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        