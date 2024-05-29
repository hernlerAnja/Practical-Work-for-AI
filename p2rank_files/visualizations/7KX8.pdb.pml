
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
        
        load "data/7KX8.pdb", protein
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
 
        load "data/7KX8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [290,291,618,1029,619,489,490,167,623,661,662,664,945,952,954,972,973,974,654,152,130,153,116,122,123,168,287,288,289,635,637,640,118,120,274,149,1030,1032,1039,957,147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2636,2622,2141,2248,2989,2489,3066,3067,2639,2988,2990,2110,2657,2660,2667,2968,2961,2112,2114,2264,2265,3076,2973,3070,3073,3069,2127,2128,2263,2142,2116,2118,2617,2618,3083,3085,2615,2487] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [667,668,670,671,752,1385,687,673,674,676,679,1962,1938,1941,697,694,695,696,699,1376,940,939] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [145,387,1052,1053,1054,147,149,1037,1038,917,1039,957,142,143,144,146,148,364,356,357,358,306,933,934,290,291,305,307,1060,1062,2302,2297] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1272,1276,1274,846,849,1281,1815,1819,1813,1820,1826,1283,816,814] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2673,2674,3425,2671,2714,2677,2679,3416,3413,3441,3443,2955,2956,3210,3221,2957,3417,3460,3209,2683] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2865,3838,2861,2862,3844,3851,2860,2832,3321,3323,3312,3314] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2123,3074,3075,3076,332,2933,2973,3097,3099,2950,2965,328,3089,3091] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        