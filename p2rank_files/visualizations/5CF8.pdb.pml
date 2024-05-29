
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
        
        load "data/5CF8.pdb", protein
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
 
        load "data/5CF8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2943,3593,3594,3050,3513,3514,3599,3600,3601,3051,2490,2543,2505,2530,2531,2544,2542,2494,2495,2496,2498,2523,2525,2693,2710,2528,2529,2692,2677,3073,3055,3483,3497,3459,3602,2527,2506,2509,2517,2499,3624,2516,2486,2487,2492,2493,3101,3104,3067,3069,2488,2491,3076,3108,3109,3136,2836,3615,3617,3623,3625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [118,124,119,121,170,171,172,305,685,1212,668,669,1204,1205,1210,1211,1213,321,125,126,139,320,673,687,122,754,129,130,1094,136,1103,1108,137,722,1124,1125,718,719,1105,561,694,691,726,727] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4582,4586,4587,4590,4592,3927,3928,4591,4603,4607,4620,4609,3934,3930,3921,3923,3698,3694,2317,2311,2313,2314,2315,2310,2035,2281,3693,3381,3382,3383,3929,4610,2305,3354,3346,4599,3356,4547,4552,4553,4554,843,844,846,2018,2017,838,834,842,4557,4571] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3756,3765,3640,3744,3449,3619,3625,2797,3617,2768,2770,2526,2527,3772,3641] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2002,1691,1692,1693,1712,4349,4521,2000,4526,4527,4528,2001,4488,4489,4487,1713,4347,4348,4509] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [139,320,143,149,1228,338,417,422,454,416,415,412,413,391,388,1226,1213,144,152,1236] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4511,4512,4514,3964,3967,4360,4513,4515,4152,4153,4365,4516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1968,1967,1962,1758,2110,2112] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        