
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
        
        load "data/4IVB.pdb", protein
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
 
        load "data/4IVB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3207,3182,3175,3178,3206,3208,3543,3571,3573,3572,3651,2563,2657,2561,2564,2566,2567,2658,2790,2549,3132,3650,3153,3156,3150,3174,3164,2576,2578,2592,2659,3657,3658,2569,2570,2572,3557,3656,3659,3521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [873,875,845,243,237,238,241,823,842,1240,831,817,250,252,264,266,333,331,799,332,240,464,820,1210,1219,1224,1323,1324,849,1317,1318,1239,1325] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2616,3557,3656,3659,3521,3682,3672,3674,2872,2873,2874,3545,3548,2576,2578,2590,2592,2598,2612,2659,3546,3657,3658,2618,2641,2805,2806,2909,2820,2877,2876,2848,3697,3698,2632,2636,3816,2851,2853,2875,2620,2626,2628,2849,3813,3511,3812] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [302,306,1341,575,1339,1325,1224,1323,1324,1326,1213,286,288,290,1215,250,252,264,266,272,296,298,300,479,480,292,1349,1188] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1215,1856,1857,1214,1841,1842,1211,1212,1213,1207,865,867,864,866,1554,1553,1767,1521,1538,1854,1518] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2017,2042,3941,4342,4375,4350,4316,4317,4341,4343,1983,1984,2009,2010,1607,1608] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3540,3887,3534,3886,4100,3545,3547,4174,4175,3544,3546,3198,3199,3200,4187,4190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1703,1733,2227,2228,1881,2226] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4561,4559,4214,4366,4036,4404] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        