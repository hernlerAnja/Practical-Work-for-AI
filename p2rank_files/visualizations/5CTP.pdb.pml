
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
        
        load "data/5CTP.pdb", protein
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
 
        load "data/5CTP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3915,3885,4064,4065,3733,3734,3736,4622,4623,3732,3735,3737,3800,3871,4090,4089,4108,3713,3772,4616,4671,4672,4597,4062,4066] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1851,1852,1030,1100,1103,1337,1067,1113,1072,958,959,962,963,964,966,991,942,946,993,1318,1320,1291,1293,1294,1295,1826,1822,1114,1144] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [422,423,527,361,1328,1329,358,359,1305,1306,895,528,762,763,1426,764,1429,917,919,923,920,542,543,424,408,897,540,899,1430,1434,1437,898,900] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3185,3289,3668,3184,3186,3533,3534,4197,4199,4201,3665,3666,3669,3671,4202,4071,4074,4076,4200,4077,4205,4100,3710,3712,3123,3119,3120,3121,3124,4099,3675,3695,3288,3290,3535,3697,3306,4208,3304,3305] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3953,3952,5416,5414,5415,5533,5532,790,791,269,309,792,295,296,297,298,480,3510,3511,3954,3958,3960,3927,3955,262,263,266,270,3509,3928,3929,3930,242,2821,2823,3986,3987] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [256,235,236,232,636,3541,230,815,3499,3500,816,3491,3492,3497,3498,3542,259,624,626,627,594,597,598,599,596,868,600,633,635] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3140,3141,3144,3170,3155,3156,3153,3157,3160,3305,3322,3326,4232,4044,4233,4234,3390,3426,4207,4208,3151,4060,3148,3149,3150,3389,3396,4075,4077,3131,3132] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [560,398,382,386,387,388,389,625,564,391,393,394,395,543,544,408,379,655,1453,618,619,1454,1456,1461,1463,617,1462,1435,1436,1437,1273] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [868,848,600,601,259,598,599,849,815,816,853,3491,3492,3493,3494,3542,256,852,3466,3467] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4253,2938,4281,4279,4300,4301,2931,2959,4247,4248,2960,2969,2940,2948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5393,5399,5404,5382,2800,2801,5359,2812,2795,3978,4514,4522,4523,4526,4549,4508,5405] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [244,245,246,247,3518,3932,230,4162,3906,3907,3866,4149,228] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        