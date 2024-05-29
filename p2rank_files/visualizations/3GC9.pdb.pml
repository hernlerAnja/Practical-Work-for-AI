
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
        
        load "data/3GC9.pdb", protein
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
 
        load "data/3GC9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [280,281,395,383,840,381,386,391,823,382,285,232,233,284,288,289,292,593,592,683,824,841,826,397,398,399,878,1219,1322,1323,262,881,1324,1325,1328,1330,1320,251,669,872,1241,861,862,869,870,871,874,865,866,867,868,845,857,855,670] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3539,3935,4017,3534,3566,3549,3559,4014,4016,3077,2974,2954,2956,2975,3089,3556,3551,3555,3075,3076,3078,3085,3913,3572,3575,2926,2927,3563,3564,3565,3560,3561,3562,2987,2986,3568,3363,3535,3286,3517,3518,3091,3364,4013,4025,3093] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4963,4981,4962,4239,4924,4925,4926,4927,4221,4222,4223,1880,1881,1854,1943,1857,4228,4231,3790,3818,3819,3820,3826,3827,4973,1858,4958,3822,4260,4959,4964,4968,4969,4943] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3734,3736,5057,5061,3709,3711,5107,3349,3350,3770,3772,3338,3342,3744,3746] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1043,2364,2414,1015,2368,2370,1042,1076,655,1050,656,648,1078,1052] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [943,911,989,990,1279,1247,1252,1260,913] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        