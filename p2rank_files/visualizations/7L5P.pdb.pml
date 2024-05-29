
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
        
        load "data/7L5P.pdb", protein
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
 
        load "data/7L5P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2483,2474,2482,746,749,141,720,756,706,709,710,711,717,698,2289,714,725,1113,724,1156,1111,2484,2485,152,153,161,165,302,300,695,699,142,144,145,691,149,157,197,198,315,301,1155,672,673,1228,657,541,559,1229,1236,1230,1235,1246,158,318,319,317,655,658,1259,1258,1247,468,469,786,802,751,816,817,818,2323,747,2306,2319,789,805,806,741,2472,2476,148,2473,2296,2298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2903,3375,2539,2541,2542,2543,3455,2929,2926,2930,2888,2904,2889,3448,2692,2789,3457,3449,3450,2768,3465,3466,3467,2922,2369,2366,2368,2421,2420,2422,2526,2948,2951,2955,3331,3353,3376,2956,3456,2385,3359,2365,2373,2377,2382] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3411,3412,3100,3403,3105,3410,2989,2990,2991,3069,3138,3025,3101,3054,3104,3027,3402] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2795,2797,2268,2270,2794,2800,2799,2801,2796,2798,2520,2461,2462,2464,2465,2896,2499,2500,2501,2502,2467,2469,2466,2468] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [638,580,581,595,416,420,445,413,656,658,414] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2972,3337,3339,3341,3660,3661,3625,3616,3874,3929,3930,3644,3645,3927,3928,3994,2393] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [813,907,838,814,816,869,895,870,874,867,871,1190,1191,1192,896,760,1183,1189] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [566,245,568,278,279,280,281,570] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3948,4092,4093,3807,4245,4247,4087,3804,3836,4246] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        