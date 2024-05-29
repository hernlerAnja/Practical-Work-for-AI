
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
        
        load "data/3EFL.pdb", protein
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
 
        load "data/3EFL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1385,1387,352,719,242,243,718,723,604,1370,1372,1379,367,1373,603,200,201,203,204,735,737,739,355,360,364,351,701,491,1388,770,777,1291,1292,1369,1368,740,743,766,767,749] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3606,3509,3586,3604,2525,3588,3591,3057,3058,2664,2668,2671,2672,2782,3603,3605,3601,3602,2526,3597,3068,3031,3034,2895,2894,2893,2656,2655,2992,3009,3010,2814,2486,2484,2487,2654,2659,2483,3028,3030,3040] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3420,2807,3424,3436,3430,3434,3432,2841,3383,2804,2806,3580,3382,2887,2775,2779,2780,2782,3583,3588,3591,3592,3594,2815,2892,2814,3577,2893] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1374,1376,524,596,1206,515,1202,550,488,522,516,1358,1362,1365,1359,1164,1220,1218,1366,1214] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3017,2635,3018,3525,3529,3542,2872,3573,3572,3556,3523,3023,3019,3015,3530] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3081,3082,3654,3875,3480,3482,3483,3655,3118,3919,3922,3923,3912] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        