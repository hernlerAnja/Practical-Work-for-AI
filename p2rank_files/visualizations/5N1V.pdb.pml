
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
        
        load "data/5N1V.pdb", protein
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
 
        load "data/5N1V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3255,3256,3257,3194,3360,3361,3753,3756,3191,3192,3195,3768,3771,3772,4162,4262,4137,4138,4139,4161,4160,3775,3197,3200,3202,3203,3375,3728,3729,3730,3731,3732,3733,3727,3597,3737,4259,4269,4270,4261,3241] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [453,455,454,558,573,928,930,931,926,935,793,795,559,1467,1468,1457,1460,1358,1459,1336,1337,1360,1359,954,970,389,390,392,393,950] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [427,413,422,426,409,410,1466,1467,1468,575,1465,614,613,645,686,439,455,573,574,591,438,400,1336,1337,1304,1484,1485,1486,1492,1464,1483,429,431,432,1494,646,647] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3241,3376,3377,3231,3488,4286,4287,4288,3233,3228,3416,3224,3415,4285,4267,4268,4270,4289,4105,4106,4294,4295,4421,3392,3393,3212,3215,4138,4139,4122,4428,3450,3458] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3079,1931,1659,998,999,1328,1332,1327,3073,3076,1316,1318,1626,1319,1320,1317,1334,1645,1647,3081,3087,3085,3098,1007,1008,3083,3084,3097,1929,3074] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3616,1985,1969,1966,2054,1922,1923,3131,3625,3298,3338,3312,3319,3321,3311,3617,3140,3142,3313] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1304,1320,1484,1492,1493,1464,1483,417,429,431,1466,1468,575,1465,413,1336,1337] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3057,3054,3056,3506,2981,3538,1979,1634,1635,1987,1990,1994,2009,2011,2986,2982,3058,3061,3527,3528,3529,3530,3526] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3069,3071,3432,3433,3434,3649,3092,3089,3648,3430,3431,3468] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2869,2881,5458,5459,5460,4574,4570,2871,2891,4014,5470,4576,4041,4611,4588,5461] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3002,4341,4343,3009,4363,4310,4309,4362,3030] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [235,236,237,238,228,229,219,1539,1541,200,212,217,207,209,1507,1508,1561] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        