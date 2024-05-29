
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
        
        load "data/1S9I.pdb", protein
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
 
        load "data/1S9I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [155,737,1116,729,1115,711,718,150,151,156,157,163,158,160,1093,1091,1092,317,1101,1193,1201,162,165,166,168,198,297,1117,196,197,154,692,708,1079,1080,762,761,719] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2710,2726,3067,3643,3587,3588,3589,3590,3591,3592,3593,3597,3598,2708,2709,2885,2956,3605,2886,3586,3078,3080,2957,2958,3066,2573,3672,3673,3606,3607,2862,3642,3645,3650,3649,3454,3456,3604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [315,333,1194,1195,1250,674,1249,1247,1197,1196,1205,1211,1214,1224,1223,1217,317,1189,1199,1200,1192,564,687,570,685,563,673,493,578,1279,1280,1256,1258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2709,3493,3594,2589,2591,2551,2553,3153,3155,2543,2544,2549,2550,3154,2548,3104,3586,3081,3510,2590,2690,2545,2547,3508,3509,3122,3123,3125,3485,3130,3484] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2564,2570,2571,177,178,2568,2561,337,169,1287,164,165,166,184,2730,2734,2736,191,181,334,338] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [342,2584,2715,3045,2731,2733,3043,3044,122,340,322,323,651,324,325,650,652,190,189,191] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [120,119,122,205,204,220,306,77,323,324,325,652] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        