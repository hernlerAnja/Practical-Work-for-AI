
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
        
        load "data/5S7P.pdb", protein
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
 
        load "data/5S7P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2974,3359,3360,2975,3003,3388,2970,2374,3348,3371,3464,3465,3459,3362,2428,2519,2426,2427,2511,2915,3387,2933,2377,2935,2375,2376,2937,2639,2640,2901,3460,3461,2759,2916,2897,2967,2942,2939,2952,2920,3467,2527,2401,2402,2404,2406,2405,2407,2525,2379,2594,3466,2523,3332,3349,3618,3619,3620,3634,3635,3639,2570,3617,2569,2571,3626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1206,1070,1209,1097,1109,1086,1087,701,1098,130,131,255,125,128,702,737,1203,1208,1274,1275,1276,299,1202,253,624,628,643,151,496,1128,1130,152,150,247,251,239,666,660,642,697,694,99,100,102,104,101,669,662,359,360,493,1201,1290,1291,1295,1282] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [925,926,927,2239,2267,4186,4187,4188,4185,877,878,879,909,880,464,907,1176,847,849,854,851,453,454,455,934,438,881,471,1174,1175,962,964,968,936,986,988,987,4174,3712,4176,4178,4211,4173,4213,4250,4251,4220,3731,3732,3733,2293] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3680,3624,3627,3628,3730,3732,3705,4177,3600,3615,3584,3759,3758,3760,3321,3322,3317,3318,3487,3630,3631,3703,3707,3708,3747,3748,3811,3582,3813,3581,3840] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1319,1320,1789,1795,1796,1810,1296,1735,1318,1726,1727,1728,1331,1333,1085,1086,1087,1099,1100,1101,1102,717,719,721,1600,1093] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1059,1060,1410,1370,1496,1340,1369,1284,1286,1287,1280,1283,1290,1467,1421,1469,1392,1367,1825,1409,1069,1055,1056,1064] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3650,3640,3641,3364,3349,3654,3656,3657,3658,3362,3355,3356,3361,3952,4078,2990,2992,2994,3669,3347,3360,4079,4161,4162] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [970,1479,2238,2232,2221,2224,2225,2226,2227,2231,950,1475,1477,952,1511,1478,1448,1485,1487,2215,2204,1450,1452] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4558,4564,4567,4569,4547,3224,3226,3222,3223,4579,3235,3237,4582,3794,3819,3821,3822,3823,3829,3831,3832,3793,3855] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [862,864,786,797,798,828,830,1165,1167,782,1137,692,748,749] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3402,2947,2948,2747,2760,2723,2731,2733,3404,2761,2924,2921,2922] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [199,193,195,197,198,200,194,196,518,233,635,57,524,29,32] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [479,650,652,649,1145,1188,675,674,459,457,1147,449] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1202,628,643,496,360,485,1215,1199,492,1192,493,1198] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3183,4608,4610,4581,3203,3237,3208,2727,2729] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        