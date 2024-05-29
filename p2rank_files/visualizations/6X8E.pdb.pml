
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
        
        load "data/6X8E.pdb", protein
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
 
        load "data/6X8E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2417,2418,2420,2468,2616,2617,3418,3389,3546,3547,3554,3555,3524,3529,3530,3531,3532,3545,3442,3443,3444,3413,3427,2410,2411,2412,2415,2416,2458,2466,2467,2981,2414,2601,3003,3006,2980,2985,2997,2999,2760,2688,2722,2723,2726,2718,2719,2721,3066,3039,3038,3063,3034,3031,3014,3021,3030,2422,2423,2429,2430,2433,2437,2438,2440,2457,2452,2453,2454,2455,2456,2441,2443,2445,2448,2634,2689,2690,2692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [322,323,129,127,159,160,161,128,135,136,139,143,144,147,158,1252,1155,1257,1258,1259,1260,1273,1274,466,1275,429,149,151,154,340,398,432,428,424,766,767,1141,1150,1170,794,1145,791,146,1117,1116,1282,1283,1146,124,126,162,163,172,173,174,708,709,1171,731,713,307,725,120,116,117,118,121,122,123,762,1172,734,758,759,727] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4494,4505,3823,4497,3311,3312,4488,3282,3824,3822,3825,3829,4490,4485,4501,3313] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1555,1556,1557,1039,1040,1041,2169,2172,2160,2165,1014,2163,2176,1353,1352,1558,1562,1351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2082,2080,1785,2083,2084,2081,1595] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3862,4409,4411,4413,4052] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        