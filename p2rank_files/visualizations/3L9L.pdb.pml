
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
        
        load "data/3L9L.pdb", protein
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
 
        load "data/3L9L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [336,334,337,1428,1425,1310,1311,1419,1298,1322,487,890,892,484,486,488,889,896,1420,755,1418,1421,2916,2906,2909,2913,2915,2917,2897,1299,646,1441,1422,1427,1443,612,1450,1452,1453,1454,2921,1282,1445,1446,1447,1458,1546,1555,1272,1540,1535,316,319,339,341,342,343,338,340,941,942,943,327,331,2911,2910,2887,2889,2890,313,363,364,365,2591,2592,1338,1339,308,307,917,310,471,908,914,306,2619,504,2935,332,2933,587,588,2934,585,610,566,574,2928,2927,614,615,621] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3286,3409,3264,3265,3266,3288,3257,3258,3259,3260,3261,3262,3410,3411,3256,3263,5835,5840,5842,5844,5845,3255,3813,3814,3427,3511,3510,3253,3254,3509,3544,3489,3508,3831,3837,4261,4262,3864,3866,4233,4234,4235,5517,5818,5819,3287,3394,3812,5816,5826,3819,3840,3239,3242,3230,3229,3235,3236,5546,5545,3233,3231,3606,3815,4344,4345,4348,3570,4350,3676,4333,3677,3678,4343,4338,4341,4342,4245,4351,4222,5846,4373,3535,3537,3538,4366,4478,4375,4377,5850,5849,4364,3569] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [27,28,2398,2400,5,49,51,61,59,2299,2383,1180,1181,47,48,50,21,2422,2424,2419,2420,2421,2423,2399,2431,2433,721,723,1156,2418,2393,2394,2381,2382] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2950,5348,5350,2954,2959,4105,5226,4079,5345,5346,5310,5327,5224,5225,2974,2975,2976,2977,2979,2958,4103,4104,4075,4102,5347,3644,2949,2953] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4101,4137,4138,4129,4131,4134,4619,5149,4130,5191,5192,5187,4651,4648,4103,4106,4099,5184,5161] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [5420,3938,5415,5418,3940,5416,3899,3897,3939,3929,3966,3995,3997,3964,5414] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1211,1728,1695,1696,2222,2264,2260,2257,1208,1178,1180,2265,1206,1207] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1098,2413,2460,2461,1092,1093,1096,1085,1086,1087,1062,2465,2371,2360,2365,2369,2370,2375] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4021,4010,4015,4016,3985,5407,5409,5340,5388,5387,5392,5297,5296,5287] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [974,2491,2493,2488,2490,1072,1074,2489,1015,1017] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4463,4370,4195,4479,4369,4381,4368,3535,3537,3538] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        