
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
        
        load "data/4I5C.pdb", protein
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
 
        load "data/4I5C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1372,1368,1255,1256,1246,1248,1254,1233,474,440,1271,1272,437,438,439,441,1232,199,200,364,365,218,442,385,171,190,195,197,192,414,416,413,1085,1369,1396,180,184,160,161,167,168,158,159,156,1131,1094,1095,1395,1120,1122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [158,155,156,1131,1225,1230,150,1224,1147,1146,727,152,722,724,153,160,161,216,218,217,706,349,710,1232,756,780,781,782,149,752,738,749,730,1117] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3095,2622,2623,2755,2529,2531,2532,3614,3535,3141,3145,3146,3169,3171,3138,3536,3116,3127,3115,3099,2543,2624,3621,2534,2537,2527,2528,2533,3520,3619,3507,3506] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2557,2541,2543,2555,3621,3484,3511,3520,3620,3622,3509,2575,2581,2563,2571,2573,2577,2579,3802,3817,3819,3637,3635,2866,2771,2569,3645] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2829,2832,2597,2601,3645,3762,3474,3660,3661,3637,2575,2571,2830,2831,3746,3776,3777,3779,3778,3775] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1894,1902,1497,1927,4338,1868,3904,4305,4279] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1592,1918,1622,2113,2111,2115,1956,1769,1770,1967] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3999,4367,4177,4524,4526,4522,4029] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        