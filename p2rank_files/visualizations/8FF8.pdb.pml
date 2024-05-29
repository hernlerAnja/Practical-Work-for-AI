
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
        
        load "data/8FF8.pdb", protein
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
 
        load "data/8FF8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1195,227,220,223,225,356,1298,1299,1300,1301,1314,1292,1293,490,1294,1295,457,438,450,454,1185,1188,1184,1183,229,247,222,355,228,352,354,371,376,370,564,563,741,742,192,198,245,246,746,763,1211,1212,193,194,196,339,792,772,773,766,1318,1322,1425,4410,4412,4419,1145,1320,1400,1315,1316,1399,447,1336,4623,1155,1171,1172,4420,4395,4432,4438,4443,218,4418,4444,4469,4645,4648,4649,4631,4644,4650,4635,397,210,213,215,216,219,4434,1415,1417,4640,4642,1394,4625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3024,3930,3934,3935,3936,3937,3124,3125,2897,2898,3039,2916,3022,3023,2915,3951,3952,3953,3954,3958,3950,3228,3928,3383,3007,3388,3157,3812,3795,3811,3823,3824,3831,3929,3434,2867,2861,2865,3847,3848,3415,3405,3408,1780,2888,2889,2892,2873,2879,2894,2896,2891,2870,1762,1772,1773,1781,1805,1756] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1986,1989,4033,4038,1981,3044,3045,3065,2008,1997,1999,1979,2003,2006,2007,3048,1773,4039,4064,4054,1780,2885,2889,2891,1805,1804,1795,1798,4056,3952,3954,3958,3956,3968,3962,3785,3970,3110,3114,3971,3972,3104,3105,3117] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1790,1481,1482,1764,1789,1509,1517,4050,4043,4120,4121,4069,4119,4156,4148,4047,4045,1758,1763,4078,4079,4082,4428,4429,4391,4402,4403,4159,1411,1752,1408,1440] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3470,3471,3866,3869,3621,3622,3508,3552,3506,3582,3583,3584,3585,3586,3868,3581] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1536,1938,1959,4585,4586,4587,4588,1547,4597,1548,4175,4185,4186,4164,4573,1937,1950,4187] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [862,945,946,861,919,847,848,849,850,851,860,1220,828,829,1230,1233,944,1232,982,1217,1218] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [19,150,152,175,20,365,645,646,650,719,627,253,255,256,257,258] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3818,3819,4110,4096,4111,3448,3450,3452,4313,4356,3810,3812,3811,3820,3824,1754,4076,4086,4098,1756,4081] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2841,2842,2843,2693,2818,2820,2694,2925,2926,2927,2924,3361,3307,2707,3289,3290,3031,3033] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3726,3728,4911,4913,4920,4212,4217,4219,4220,4221,4222,4225,4213,3725,4902,4908,4891,5216,5217] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        