
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
        
        load "data/6KC4.pdb", protein
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
 
        load "data/6KC4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [285,1149,102,1152,1153,268,273,306,265,307,269,2070,986,1168,1167,1169,2052,2053,2054,1887,2050,2051,2058,2068,1883,1880,1187,1190,300,303,2088,2091,2092,2085,1148,1157,283,1191,982] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2939,2940,2941,2942,2943,4545,2980,2981,4726,4728,4727,2956,2958,3822,2947,3856,3849,3852,3855,2977,4756,4707,4708,4716,4743,3832,4746,4749,4750,2959,2938,2776,4712,2769,2772,3814,3815,3816,3817,3818,3651,3813,3630,3644,2755,4541,4538,4711,3834] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [2999,3001,3126,3191,3193,3144,3145,3147,3148,3143,4558,2983,2993,4724,2991,2992,5281,5313,3149,3150,5287,4561,4565,4572,4576,4723,4722,4729,4730] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [2071,2072,2643,477,478,479,480,2613,2620,2619,2063,2064,2065,2066,2068,316,318,456,474,475,309,327,521,523,1918,1900,1903,1907,1914,317] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [122,1405,1407,836,860,286,861,287,1209,278,279,280,281,1192,1193,1211,115,118,129,282,1358,1361,1362,1363,1364,1340,1200,1201,1202,834,829] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [4917,4899,4760,4761,3827,3829,3830,4752,3828,4762,4768,4964,4965,4966,3684,4770,3664,4382,4922,4920,4921,4923,3682,4916,3835,4414,3836,3671,3678] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [4019,4022,4023,4024,4026,4027,4028,4029,4072,4070,3874,4005,3860,3865,3867,2789,3876,2954,2792,2803,2807,2796,3501,3524,3494,2960,2961,2952,2953,2963,3858] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [1162,1164,1170,2255,2256,2258,2260,2103,1163,2094,2237,2304,2104,2110,2302,2096,1745,1171,1746,2261,1722,1002,1006,1013,1017,1720,2259,999] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [4085,4175,4106,4099,4101,4105,4114,4112,4109,4115,385,386,388,4201,4202,4255,4211,4260,4252,4253,4212,4267] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [1624,1540,1549,1590,1591,1593,1595,1598,1550,1433,1434,1440,1441,1444,1431,1605,1438,1450] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [948,950,1528,1529,1523,1524,1527,895,1118,1558,1560,1561,1556,1557,1688,2876,1530,932,933,953,1494] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1471,1473,1482,1502,1503,2866,1466,1396,1454,1456,1462,3062,2831,2833,2832,3072,3078,3080] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [3597,3618,4222,3613,3615,4183,4355,4217,4218,4220,202,4189,4190,4191,4156,4157,4354,3783] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2346,2341,2344,2435,2436,2437,2490,2337,2338,2332,2521,2522,2495,2317,2321,2328,2502,2446,2447] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [100,101,102,1153,98,99,145,109,87,965,966,909,907,915] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [5163,5170,4983,5003,4979,4999,5000,4990,4994,5006,5022,5078,5114,5158,5103,5105,5115] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [157,159,410,408,394,372,4135,4136,4131,392,4119,4127,373,4144,4165] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [3227,3230,3235,3377,3321,3323,3332,3333,3381,3388,3221,3226] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [2755,4552,2705,2701,4530,2756,4544,2697,2699,4587,4560,4588,2943,4545,4543,4546] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1885,1886,25,1894,27,31,1930,81,82,268,1887] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [662,706,557,651,663,653,560,563,564,565,718,547,551,556,711] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [2421,2424,2426,1833,1841,1851,1849,2585,2453,2455,2457,2458,2420,2418,2452] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        