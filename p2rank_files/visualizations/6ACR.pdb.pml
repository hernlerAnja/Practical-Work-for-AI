
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
        
        load "data/6ACR.pdb", protein
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
 
        load "data/6ACR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1061,1088,1089,1095,1100,721,1091,1077,1078,1093,720,749,1196,1350,1348,1349,377,1189,1190,1193,1188,505,1116,1117,713,716,688,1356,1364,1365,1369,1370,1347,124,96,125,127,129,130,113,116,117,120,258,93,88,89,91,149,150,151,242,681,683,250,254,256,647,661] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3557,2491,2621,2622,2623,2494,2495,2516,2514,2515,3031,3050,2607,3044,3046,2490,2492,2458,3078,3077,2453,2454,2455,2456,3114,3053,3063,3048,2742,2741,3012,3026,2619,3461,3085,3086,3449,3450,3451,3477,3478,3054,3081,3549,2870,3550,3551,3554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3606,3619,3620,3622,3621,1258,1260,1259,1261,3332,3335,1525,1526,1527,3642,3886,3887,3888,3869,3604,3877,3879,3607,3874,3380,3870,1563,3915,1243,1245,1246,1244,1513,967,1019,1524,1509,1504,1507,1508,1498,1296,1278,1280,1281,1282] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1051,1345,1354,1357,1358,1360,1361,1312,1314,1311,1478,1477,1408,1435,1437,1438,1048,1050,1571,1046,1047,1540,1542,1544,1492,1493] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3719,3771,4253,4255,3408,3407,3718,3721,3722,3769,3411,3412,3672,3673,3674,3675,3691,3706,3839,3905,3838,3798,3799,3765,3854,3796,3901,3903,3932,3853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1794,1384,1386,1387,1388,1861,1863,1877,1864,1370,1371,1090,1091,1076,1078,1092,1093,740,738,117,1869,1802,1793,1399,1401] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4224,4225,4222,3453,3454,3452,2474,2492,2478,2479,2494,2480,3437,3439,3760,3731,4154,3748,3749,3101,3103,3105,4238] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2485,2486,2489,2490,2492,2478,3557,2491,2623,2494,2480,3452,3711,3708,3709,3710,2671,2673,2672,3438,3439,3730,3461,3450,3725,3422,3717] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2858,2871,2872,3059,3535,3536,3033,3034,3036,3056,3058,3492,3041,3032,2841,2839,2846,3493,3494,2831] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3914,3915,4636,3947,4625,4631,4634,4635,4637,4642,4646,3325,3923,3921,3316,3314,3911,3913,1258,1260,3887,1256,1280,1281,1257,4649] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [667,691,693,694,676,493,669,671,668,1175,476,478,1130,1132,1133,466,1129] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3617,2270,2273,2275,3643,2276,960,962,2281,2285,1562,1560,1554,3618,3621,1527,951,1586,1523,1550,949,926,2280,923,1553,947,948,1524] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        