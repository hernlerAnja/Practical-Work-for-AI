
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
        
        load "data/8G8O.pdb", protein
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
 
        load "data/8G8O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [143,146,154,165,135,136,142,131,132,133,166,1138,1243,1256,1241,1242,181,329,330,158,157,383,385,386,347,414,454,457,413,425,130,1416,1410,1099,1100,1129,1265,1266,1399,1400,161,163,1397,1401,418,381,389,391,1282,1258,415,416,417] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3455,3076,3080,3486,2449,3485,3469,3566,3571,3573,2500,2899,3039,3041,3048,3072,3073,2446,2499,2633,3045,3027,2442,2443,2444,2447,2498,3023,3056,3108,3081] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [749,750,1124,745,1155,129,130,777,1138,692,1235,1240,1242,179,181,564,1154,127,717,741,742,708,710,725,314,128,180,714,124,125] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2465,2450,2451,2452,2454,2455,2461,2486,2487,2489,2462,2463,3469,3571,3572,3573,3574,2500,3430,3431,3596,3460,2473,2477,2480,2475,3589,2792,3587,3597,2649,2648,2484,2485,2666,2720,2723,2748,2749,2754,2725,2750] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4320,2009,3208,4332,3206,4628,4629,4630,4631,4627,875,877,2020,2021,2324,2325,2322,2323,2320,871,4328,4331,867,868,870,4334,888,4349,3198,3202,2017,2038,3217,3219] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1465,1754,1757,1128,1466,1765,1771,1772,765,1127,1718,766,767] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3776,3983,4076,4083,4082,4065,4068,4029,3097,3098,3096,3740,3743,3774,3444,3772,3457,3775,3777,3458,3459,3460,3456] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4493,4498,4501,4503,3881,3882,3878,4510,3879,3885,3326,3880,3353,3354,3355,3665,3666,3669] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4281,4282,4108,4424,4426] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        