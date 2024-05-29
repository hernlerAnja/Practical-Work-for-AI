
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
        
        load "data/6SMB.pdb", protein
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
 
        load "data/6SMB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [236,237,182,184,185,175,177,179,180,1276,238,383,384,385,748,221,223,224,225,232,770,1189,1190,369,753,765,767,769,473,478,1174,1175,1274,1275,1138,1289,1267,1268,1188,505,1290,1291,472,1164,1165,1160,1163,823,824,826,795,176,791,792,773,781,187,188,194,195,198,204,201,202,399,220,206,1299,468] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2581,2580,2582,2727,2728,2729,2824,3566,3039,2528,2521,2523,2569,2576,2797,3116,3450,3113,3114,3115,3480,2526,2519,2520,2524,3465,3464,3557,3558,3564,3565,3060,3063,3478,3479,2713,3043,3055,3057,3059,3082,3081,3071,3454,2531,2532,2538,2539,2527,2529,2530,2551,2549,2542,2545,2546,2564,2565,2566,2567,2568,2743,3455,3428,3579,3581,3746,3453] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3581,2789,3604,3605,3583,3587,2787,2788,2790,2545,2546,2547,2548,3719,3720,3721,3722,3723,3705,2768,2766,3690] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1299,1314,1415,1429,1433,468,469,470,471,1315,1400,201,202,447,449,1291,1430] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4097,3453,3793,3794,3106,4081,4082,3107,4094,3455,3105,4006,3451,3452] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1807,1504,1792,1804,1791,1165,1503,1163,1716,815,816,817] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        