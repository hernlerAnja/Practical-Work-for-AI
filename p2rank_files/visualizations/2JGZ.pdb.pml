
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
        
        load "data/2JGZ.pdb", protein
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
 
        load "data/2JGZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [643,641,645,640,146,147,248,264,662,89,701,1087,92,664,91,93,1070,1159,1163,1166,101,108,265,1158,1065,1058,405,100,107,95,98,670,1086,508,667,687,688,509,650,678] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1209,1210,1213,1222,1214,3085,3086,3096,3416,3420,3463,3464,3466,3467,3095,3094,981,982,2391,2428,3414,1236,1223,1226,2793,2790,3462,3495,1255,1252] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2844,2847,2848,3425,3448,3449,3734,3736,2872,3728,2843,2841,3684,2812,3773,3774,3753,3795,2505,2816,3677,3679,3682] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1440,1832,1835,1846,1847,1848,1849,2190,2191,1830,1841,1441,1450,1389,2189,2183,2199,2182,2184,1423,1428,1866,1875,1874,1426,1437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4148,4191,4190,3693,4205,4208,4117,4118,4126,4147,4122,2601,2602,2603,2634,3692,3703,3705,3724,3709,3698,2604,2607,2610] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2330,2331,2338,2339,2347,2328,2212,2348,2188,2198,2199,1466,1450,1461,1465,1478,2189,1246,1472,1474,1475] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [404,374,373,108,265,263,261,122,371,116,109,111,118,269,280,130,377,282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3628,4306,4295,4296,4297,4307,4255,4256,4257,2776,2783,2720,2763,4258,2725,2726,2727] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2331,2338,2339,2347,1231,1240,1245,1466,1465,1234,1472] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [360,365,354,3072,3073,337,338,341,3045,128,3131,3132,3136,3109] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        