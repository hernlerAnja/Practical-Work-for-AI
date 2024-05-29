
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
        
        load "data/5Y9M.pdb", protein
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
 
        load "data/5Y9M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [891,1254,1255,1256,1250,1279,346,337,343,339,341,888,1263,365,366,367,472,473,485,487,843,845,846,1381,1382,1384,488,489,1278,706,708,868,850,1373,1375,1376,1377] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2781,2782,1992,1994,2303,2304,2316,2318,2263,2264,2794,1838,1839,1840,2778,2780,2790,1970,1972,2808,2814,2848,2816,2851,1885,1876,1967,1991,2003,1862,1871,1884,1968,1881,2852] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3043,3069,3070,3175,4085,4087,4084,4076,4078,4079,3981,3032,3176,3571,3548,3549,3544,3546,3174,3188,3409,3411,3553,4080,3410,3191,3192,3190] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2843,2850,2869,2871,4126,4127,2852,4158,4159,4160,2860,2872,2879,2881,4179,4180,4181] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1576,1237,1239,916,917,1251,1246,1851,925,926,1858,1562,1564,1542] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4103,3262,4086,3191,3192,3208,3303,4104,4105,4113,3263,3202,3209,3214,3216,3196,3926,4111,3217,4087] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1424,178,180,1423,1455,1457,152,159,161,1456,555,181,188,191,169,1476,1477,1478] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4392,4402,4388,4403,4406,5270,5273,5275,5264,2722,2723,2725,3859,4394,3861,4429,3833,5276,5285,5281,2735,2745,2717,2718] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1154,1156,1158,1689,1690,1691,1699,2577,44,1726,54,26,1685,1700,1703,27,2578,2582,2570,2571,2572,31,34,2573,2561,1130] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4180,2852,4156,4159,4160,4155,4157,2851,2781,2778] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3274,2926,2929,3517,3244,3281,3247,3248,3467,2910,2911,2903,3283,3284] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [562,560,514,559,558,565,493,505,1400,1401,1402,1408,1384,488,489,600,1383,1410] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4245,4279,3620,3954,3949,4265,4267,4553,4554,4268,3940,3938,3942] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3926,3942,4111,4112,3958,4087,3956,4086,4113] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1238,1239,1253,1255,1223,1408,1384,488,489,1383,514,1409,1410] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3972,3973,3971,3990,4477,3767,3752,4504] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        