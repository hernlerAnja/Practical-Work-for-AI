
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
        
        load "data/6I82.pdb", protein
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
 
        load "data/6I82.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2408,2401,2402,2403,2405,2407,2463,2461,2462,2596,2406,2971,3024,3484,2998,3021,3011,3483,2972,3091,2997,2994,2440,3453,2441,2442,2443,3028,3029,2439,3568,3560,3567,2610,2612,2745,3561,3559,3050] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [870,1252,1327,1328,1251,250,862,863,303,304,840,244,245,247,248,305,438,836,839,813,814,811,1221,1335,1329,1336,282,284,453,452,450,281,283,285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3606,3421,3605,3678,3694,3695,3693,2713,3591,3604,3677,1407,2704,1404,1405,3734,3733,2674,2677,2700,2703] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [268,269,275,276,556,277,278,279,1357,1358,1359,1425,1421,553,1349,270,273,1420,281,1225,1235,1236,1441,1442,1198,1199,1335,587,1348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [68,70,95,595,597,598,109,734,150,143,105,108,61,66,63,746,96,133] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2711,2714,3580,3581,3589,3431,3590,3730,2427,3734,3732,2434,2715,2436,2612,3565,2437,3568] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4444,4445,4447,3329,3333,4451,4458,4462,3370,4454,3331,3361,3891,3892] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        