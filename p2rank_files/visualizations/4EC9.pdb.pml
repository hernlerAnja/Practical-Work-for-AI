
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
        
        load "data/4EC9.pdb", protein
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
 
        load "data/4EC9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [680,682,683,297,282,174,698,700,702,703,151,147,149,153,148,175,173,681,687,1190,552,553,1191,1195,1114,1115,707,706,712,721,1099,1197,1091,732,733,734] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [378,380,381,384,330,331,386,3539,3514,352,643,629,630,631,632,633,628,329,328,3534,3535,3538,3532,3507,3484] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [727,2476,2477,726,1127,725,1122,759,760,1134,1150,1151,2456,1123,2460,2478,2479,2481,824,803] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4037,4039,4065,4100,4116,4067,4212,4182,4184,4282,4283,4194,4058,4192,4123,4140,4120,4177,4186] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2563,2590,3951,2588,2586,3911,3916,3917,2587,3926,3905,3908,3910,2719,2720,2717,2683,4358] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2517,2985,3611,2486,2535,2534,3623,3638,3976,3977,3933,3932,3628,3633,3635,2945,2946,3639] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3273,3275,3298,3469,3124,3096,3328,3300,3337,3306,3339,3363,3364,3296,3299,3106,3465,3464] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [444,417,664,310,314,315,316,320,298,299,303,408,409,410,411,413,414,1211,1212,1213,1197] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2807,2808,2809,2810,3861,4477,3839,3841,3870,3871,4447,4475,3895,4448,3893,2784,4449,3863,3894,3891] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2503,2547,2545,3014,3026,2620,2604,2647,2578,2579,2580,2583,34,3018] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        