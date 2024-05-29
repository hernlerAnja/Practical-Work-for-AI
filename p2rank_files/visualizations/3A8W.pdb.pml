
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
        
        load "data/3A8W.pdb", protein
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
 
        load "data/3A8W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2972,2861,2986,2987,3397,2860,2988,2989,3929,3921,3922,3927,3928,3930,3829,3401,3419,3423,3425,3844,3148,3944,3946,2829,2810,2819,2820,2821,2823,2845,2841,3111,3114,2833,2835,2837,3439,3440,3441,3845,3442,3446,3447,3448,3818,3819,2803,3422,5054,5068,2799,5060,5066,5070,2805,2806,2808,5100,5102,2811] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [307,1214,1206,1207,1114,1212,1213,1215,1130,1103,159,141,145,128,129,137,138,731,732,733,1229,1230,1231,396,399,1232,151,153,155,1074,1238,1239,121,178,704,1129,2376,2378,123,177,117,2411,2413,723,724,2365,725,726,2381,305,682,290,686,163,179,550,549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1290,1295,1297,1493,1491,1489,1000,1525,1528,2005,2007,2025,2031,2032,2023,2024,2015,2049,2053,2045,2046,2009,2008,2010,1960,1961,1008,998,1011,972,1470,1481,1482,1485,1496,1500,1501,1312,1464,1962,1963] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4704,4694,4735,4696,4697,4698,4699,4214,4721,4734,4738,4171,4174,4159,4170,4178,4185,4189,4190,4181,4659,4650,4153,4651,3719,3726,3687,3713,4742,3715,4183,4712,4713,4714,4715,4716,3720,3723,3990,4001] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4935,4936,4940,4836,4842,4846,4847,3600,4838,4839,4951,4957,3570,3571,3603,3604,3607,3609,3572,3573,3577,4955,4952,4848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3405,3906,3907,4919,4920,3860,3410,3425,3859,3858] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2677,3285,5355,2965,2966,5369,3282,2963,3269,3215,3216,3219,2951,3403,3404,3405,2943,2676,5353,5354] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4967,4968,3477,3478,3508,3509,3522,4979,4985,4989,4991,5057,3470,3473,3475,3437,4982,3439] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3811,3812,3821,4077,4079,3464,3813,4065,4066,4068,4291,4293,4334,4289,4290,4330,3465] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        