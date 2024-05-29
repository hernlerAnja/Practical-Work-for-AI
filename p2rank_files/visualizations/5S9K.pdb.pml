
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
        
        load "data/5S9K.pdb", protein
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
 
        load "data/5S9K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2432,2433,2434,2435,2436,2458,2437,2404,2409,2456,3403,3016,3431,3017,3045,3009,3012,2407,2457,2988,2979,2981,2985,2405,2406,2549,2541,2966,3405,2557,3509,3510,2679,2680,3503,3504,3507,3508,2553,2555,3502,2805,3430,2947,2943,2962,2961,3375,3391,3661,3676,3681,3414,3662,3392,3402,3677,2597,2614,2431,3660,3668] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1094,134,136,695,730,1082,1083,1191,310,312,1194,1252,1253,1055,1071,1072,1272,1250,1259,137,131,132,308,156,157,158,687,105,106,108,110,107,1188,261,257,259,374,621,253,635,640,245,653,655,617,636,1187,1177,1113,1183,1186,1111,1200,694,690,503,507,510,509,1115,662,499,506] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [920,2234,2273,4224,4225,4226,4227,902,900,478,871,870,872,918,467,469,898,921,452,927,929,955,973,3775,919,3754,4249,4250,4251,4222,4252,4255,4290,4217,3760] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3032,3034,4120,3404,3405,3406,3407,2434,2436,3391,3681,3392,3698,3699,3711,3398,3994,3700,3682,3687,3690,4198,4201,4200] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3657,3666,3669,3670,3672,3722,3747,3749,4216,3642,3623,3624,3772,3789,3800,3801,3720,3716,3750,3365,3364,3882,3360,3361,3673,3676,3855,3853,3790,3774] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1044,1444,1387,1045,1482,1446,1040,1313,1317,1270,1344,1347,1346,1386,1398,1262,1248,1263,1264,1257,1267] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1072,1272,1273,712,714,1086,1087,1084,1085,1296,1801,1297,1785,1070,1078,1310,1586,1729,710,1295,1308,1720,1721] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1456,1462,1464,2221,1425,2219,2220,2216,2210,1497,941,942,943,945,1460,2233,2222,2226,2227,2232,1473,1471,956] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3278,4617,4602,4605,4606,4607,4608,3861,3834,3267,3269,3863,3864,3265,3266,3836,3838,3865,3871,3873,3874,4596,3897] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [493,511,645,1173,668,641,642,643,644,646,667,1130,463,512,471,473,1132] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2793,2777,2779,3447,2967,2968,2969,2971,2993,2994,3445,3489,2762,2769,2807,2806] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [199,200,201,202,203,204,206,532,628,629,239,538,63,549] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3171,3465,3466,3451,3145,3147,3007,3114,3181,3055,3103,3098,3056] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2362,2359,2358,2936,2376,2377,2938,2375,2844,2845,2847,2955,2937] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        