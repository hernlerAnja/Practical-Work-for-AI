
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
        
        load "data/6AYW.pdb", protein
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
 
        load "data/6AYW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [114,115,116,119,120,121,172,171,288,290,278,692,682,684,686,688,703,705,708,118,711,1108,549,550,1195,1196,1197,1200,1201,1202,1203,1080,1109] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2478,2479,3096,3098,3472,3473,3087,3088,2913,3075,3056,2484,2485,2486,2488,2534,2535,2536,2497,2491,2642,2652,3048,3050,3047,3046,2654,3564,3565,3566,3567,2498,2655,2656,3561,3560,3456,3444,3559,2480,2482,3072] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [769,771,770,799,800,860,861,862,859,882,890,916,884,742,1117,1160,1161,798,1137,1136] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3481,3517,3518,3519,3521,3524,3226,3163,3164,3480,3280,3246,3254,3505] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3416,3566,3567,3582,2498,2501,2655,2656,3433,2505,2506,2807,3580,3432,2713,2739,2765,2772,2773,2776,2778,2522,2670,2491,2509,3589,2767,2769,3588,3590] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1662,1660,1667,1726,1360,1361,2303,1377,2338,1629,1355,1362,1364,1363] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4699,4702,4701,4686,4687,4090,4006,4015,4018,4028,3994,4031,3719,3740,3727,3728,3993,3724,3725] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [923,1057,1059,1554,1555,1556] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        