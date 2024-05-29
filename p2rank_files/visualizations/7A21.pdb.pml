
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
        
        load "data/7A21.pdb", protein
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
 
        load "data/7A21.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3365,3589,3858,1248,3896,3868,3283,3860,3302,3590,3591,3592,2263,3600,3604,2258,2261,2264,3605,3606,3603,3305,3607,2269,3894,3895,3892,1515,3855,3869,3846,3850,3851,3866,3867,1550,1551,3626,3627,3628,2252,3840,2231,3902,3904,3905,3865,1231,1501,1504,1514,1540,1541,1542,1538,927,1574,1007,1247,939,943,1249,924,925,936,2268,1246,4626,1269,1270,1233,1234,1232,1266,4624,1492,1495,1496,1497,4594,1486,1513,1548,1286,1284,3642,3645] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3446,3539,3542,3422,3423,3435,3535,3536,3434,3534,2837,3462,3463,2998,3436,3437,3438,3439,3068,3070,3052,3053,3045,3048,3081,3020,3030,2711,2465,2466,2468,2467,2469,2470,2490,2432,2437,2489,2491,2433,2434,2435,2495,2582,3011,3013,3015,2643,2464,2597,2598,2979,2594,2596,2977,2580,2581,2590,2975,3407,3424,3710,3711,3715,3716,3717,4211,4203,4205,4206,4219,3696,3693,3694,3695,3702,2460,2453,2457,3745,3747,3730,3430,4009,4135,3732,3733,4136] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [246,359,244,242,113,114,116,117,118,139,115,137,722,87,82,138,230,634,83,84,85,658,661,671,652,654,656,635,616,620,1181,1184,1088,1076,1077,1078,1104,694,686,689,693,1105,1177,1178,360,1176,484,1049,112,1065,1066,1357,1079,1337,1338,1344,291,108] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1049,1066,1357,1358,712,713,1079,1080,1081,100,103,93,1655,1387,1389,1781,1782,1374,1372,1375,1851,1852,1857,1865,1376,1849,710,1072,117,115] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1396,1342,1347,1398,1466,1465,1425,1426,1448,1423,1880,1480,1481,1532,1528,1530,1035,1038,1039,1034,1559,1300,1302,1318,1333,1203,1348,1349,1299] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3783,4235,3396,3397,3392,3707,3659,3823,3824,3781,3784,3834,3835,3884,3886,3913,3691,3561,3700,3704,3706] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3520,3477,2825,2806,2807,2808,2809,2798,3479,3478,2839,3000,3001,3003,3025,3026,3487,3488] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4621,4627,3894,3895,3892,3286,3928,3297,3896,3868,1245,1246,4626,4624] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [666,667,1119,640,644,641,642,472,485,453,1121,455] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        