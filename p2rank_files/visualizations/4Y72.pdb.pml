
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
        
        load "data/4Y72.pdb", protein
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
 
        load "data/4Y72.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1208,1202,140,1206,1207,1091,1104,1109,1205,159,157,108,110,101,107,1126,1200,526,656,260,655,665,682,1125,158,685,102,103,105,704,698,697,710,1201,274,275,660,658,276,419,449,661,659] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3833,3791,3772,3766,3774,2853,2855,3717,3776,3719,3720,3722,3714,3715,3811,3812,3477,3485,3486,3487,2530,3478,3479,2882,2885,2886,2526,2543,2527,3458,3467,2849,2850,2851,2879,2881,2910] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3664,3666,4330,4344,4345,4307,2818,2819,2821,2766,4291,4319,4333,4334,4335,4295,4296,4293,2756,2757,2758,2801,2760,2763,2764,2814,2788,2762,2795] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1060,1077,1359,120,139,1208,1207,1109,1230,1059,127,128,130,123,134,137,1297,1229,1221,1222,1348,1351,1352,1354] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3576,3979,3981,3987,3988,3989,3966,3967,3555,3575,3550,3573,3929,3930,3892,3891,3553,3624,3864,3865,3579,3582] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3542,2466,3502,3499,2404,2405,1012,1013,1014,2429,2430] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1696,4698,1726,1764,1748,1749,1756,1761,1794,4697,4576,4573,4578,4600,4601,4602,4603,4604,4599] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2646,2647,2672,4247,3734,4228,4229,4242,4245,4227,3731,4163,3729,3730,3736,4185,4186,4192] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3494,3532,3533,3637,3635,3664,3666,2830,2831] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1459,1460,1461,1926,1927,1928,1936,1335,1336,1337,1465,1438,1440] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [371,374,378,379,384,386,368,3169,3170,3111,351,321,322,326,3147] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [26,608,610,611,612,286,71,631] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        