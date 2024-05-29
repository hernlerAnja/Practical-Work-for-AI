
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
        
        load "data/4E4L.pdb", protein
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
 
        load "data/4E4L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5724,5887,5895,5893,5894,5910,5998,5073,5074,5076,5911,5885,5870,5872,5759,5761,5734,5770,6053,6052,6026,6027,6028,6029,6025,4820,4830,4809,4810,4816,4817,4841,5007,4834,5110,5006,5021,5077,5078,4860,5871,6056,4824,4837,4839,5053,4832,4842,4843,4805,4806,4807,4808,4844] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [171,181,185,167,168,183,192,193,195,409,410,412,407,408,413,414,417,372,357,358,1206,1207,1208,446,175,188,190,1392,389,1222,1223,1229,1230,1231,1221,1246,1247,1361,1363,1365,1362,1364,1388,1389,160,161,1069,1070,1096,1097,1106,1405,1403,1404] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5384,5756,5377,5785,5786,5355,5358,5380,4860,5871,5334,5338,4809,4810,4816,4798,4799,4801,4802,4804,4858,4859,5350,5352,4991,5345,4805,4806,4807,4808,5410,5759,5761,5734,5770,5765,5767,5863,5864,5869,5870,5872] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3548,3550,3525,3527,3540,3541,3542,3526,2765,2503,2494,2504,2505,2506,2668,2669,2522,3682,3683,3684,2486,2499,2501,3711,2710,2492,2496,3680,3681,2726,2728,2729,2730,2731,3566,2727,2683,2732,2733,2708,3653,3565,2738,3416,3708,2472,2478,2479,2482,2470,2471,3415,3388,3549,3706,3707,3387,3389,3425,2467,2468,2469] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [149,150,155,156,157,694,152,153,686,688,691,1092,1101,1106,1121,1122,1199,1205,670,1200,1207,209,210,211,342,674,561,720,744,746,716,713] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [8121,7194,8206,7669,8091,7715,7719,7743,7744,7745,7693,7690,7712,8120,7673,7544,7138,7131,7132,7139,7133,7192,7193,7136,7135,7325,7685,7687,8100,8198,8199,8204,8105,7118] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7151,7154,7158,7168,7171,7173,7143,7144,7150,7175,7176,7178,7340,7341,8206,7372,7355,7396,7397,7402,8391,8229,8069,8207,8220,8228,8068,8096,8105,8205,8387,8403,8404,8230,8402,7395,8222,7429,7392,7393,7390,7391,8361,8362,8363,8360,8388] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [3519,2466,2467,2468,2458,2460,2461,3039,3411,2520,2464,2452,3420,3425,3518,3524,3063,3064,3065,3441,3035,3032,3440,3010,2463,3005,3007,3013,2521,2522,2989,2653,2993,3525,3526] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [1297,1301,1532,1295,1288,4743,4757,4749,4752,4754,960,4756,2153,1548,1549,1552,2185,2190,2193,4760,2195,4761,4869,4763,4764,4765,983,984,985,986,987,1015,1018,1019,1540,1260,1544,1545,1546,1547,1573,2202] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4523,4519,4520,4525,4540,4541,7114,3882,4504,4515,3876,4532,3903,3279,3878,3879,7099,7097,7094,7105,3616,3620,3862,3870,3874,3875,3877,3276,3302,3304,3303,3305,3306] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [1093,735,736,737,1431,1434,1435,1436,1083,1655,1095,1096,1097,1094,1403,1729,1700,1706,1730,1695,1692,1693,1694,1742] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [4852,4853,4761,4868,4869,4717,4716,4714,5309,5310,4883,4744,4745,4747,4763,4764,2161,1302,1299,1300,1301,4743,4757,5012,5017,4997] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [3753,3755,3750,3754,4060,4059,4072,4074,4075,3722,3416,3985,3057,3402,3414] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [4260,3809,4227,4235,4201,1872,1905,3807,3808,1930,1489,1490,1491,4202,1488,1897,1898] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6594,6569,6153,6154,8904,8929,6561,8871,6536,8488,8489,8895,8896,8898,8899,8927] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [7187,7643,7644,7645,7048,7078,7079,7081,7050,7077,7046,3602,7186,7097,7202,7203,7091,7095,7217,7331] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [6406,5747,6099,6100,6319,5758,5759,5760,6393,6394,6409,5401,5402,5400,5757] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [8092,8434,8654,8729,8728,8093,8095,8082,8088,8435,8741,8094,7737,8744,7735,7736] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [2114,2116,1769,1585,2115,1621] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1370,1361,1059,1060,1230,1346,1348,1503,1523,1447,1394,1398,1448,1474] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [8584,8620,9113,9114,9115,8768] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [6433,6778,6249,6780] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        