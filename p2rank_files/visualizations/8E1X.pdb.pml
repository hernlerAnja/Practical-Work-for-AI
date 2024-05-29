
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
        
        load "data/8E1X.pdb", protein
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
 
        load "data/8E1X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1221,1226,756,759,1212,1217,171,161,163,164,1412,589,1241,1318,1325,1324,188,189,1326,348,209,706,333,155,208,153,156,151,152,158,587,1240,1242,752,728,732,710,731,724,749] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2965,3470,2968,2986,2959,2961,2390,2383,2384,2385,2387,2388,2389,2587,2589,2590,2943,2574,2822,2823,2436,2437,3449,3454,3651,2393,2396,3440,3445,2996,3552,3553,3554,2421,3469,3546] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2732,2733,2734,2766,2756,2760,2757,1572,2731,1570,1569,1582,2112,3361,3365,2761,2105,2107,2119,2108,2123,2754,2755,2721,1126,1129,1131,1127,3370,3371,1097,3377,1099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3679,3680,3643,3642,3415,3416,3417,3418,3664,2410,3613,3393,3454,3455,2404,3651,2403,3648,3550,3576,3554,2406] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1175,1187,1188,1189,1190,1440,1441,1404,1225,1227,174,178,1348,1226,1479] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [971,998,1000,1001,1029,1278,1279,1295,1296,1248,796,798] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1146,3582,2679,3586,2646,1180,1179,1359,1159,1161,2677,2678,2668,2670,2669,2671,1549] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4323,4326,4328,4340,4344,3351,3806,3807,3808,3809,3810,4336,3814,3815,3818,3802] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2032,2034,1749,1751,1884,1616] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3881,4253,4255,4100,4258,4256,3986,3984] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        