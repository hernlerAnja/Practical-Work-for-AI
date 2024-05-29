
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
        
        load "data/7AJM.pdb", protein
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
 
        load "data/7AJM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2992,3220,441,2993,3978,4274,4244,4262,4263,4269,4270,4275,4273,3994,3995,3996,4008,4011,4306,3000,3002,3004,18,32,37,38,39,439,440,4012,4250,4279,4283,4286,4291,4292,4293,22,23,4010,28,30,31,428,29,27,11,19,20,4294,4296,465,3979,4131,4145,4146,4147,4152,4153,4257,4260,4019,4132,4130,3275,2998,2999,3003,3153,3169,3241,3242,4239,3218,3216,3213,3168,3246] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [270,269,382,1383,1384,1385,688,859,839,1276,1393,1386,397,398,399,522,835,395,832,834,829,1264,1265,883,886,914,1292,853,1293,864,857,249,218,250,215,216,224,212] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1234,1236,1252,1253,1276,1393,490,1406,1413,1414,1392,398,399,415,521,1265,1266,459,487,491,1483,1480,1481,1482,1521,3194,3195,1235,1531,1535,1523,2797,2798,3178,2796,244,238,231,234,239,247,249,464,466,1500,3193,1501,1524,3191,3192,3219] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3022,3023,4122,4123,4124,3430,3431,3572,3573,3575,2970,3136,3599,3607,4035,4036,3582,3596,3602,3595,2999,3003,3151,3152,3153,3024,3149,3577,3578,4019,4132,4125,4126,4129,4130,4131,4007,3629,3622,3657,3000,3002,3004,2972,2966,2969] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3194,3195,2770,2777,1534,1535,1554,1567,1251,1253,1267,1268,1269,2790,2791,2796,2789,2788,1540,1544,1553,1547,1555,1556,1557,1536,3182] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2992,3220,455,2993,3178,463,464,465,466,238,239,491,3209,3218,3219] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [48,229,49,423,424,232,233,234,235,2984,2985,2986,2987,2988,2989,3178,2807,2808] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1636,1637,1990,1994,1996,2002,2003,1998,2633,2634,2624,2631,2617,2625,1641,1642,1643,1644] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        