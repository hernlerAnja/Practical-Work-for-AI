
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
        
        load "data/4U3Y.pdb", protein
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
 
        load "data/4U3Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3599,3602,3782,3638,3639,3732,3640,3627,3794,3803,3804,3805,3806,3807,2808,3781,3797,3802,3842,3844,3851,3852,3853,3854,3845,3846,3816,3579,3600,3601,3619,1376,3888,3891,3894,3935,3928,3933,3628,3924,3916,3917,3918,3885,3869,1390,1388,1389,1391,3878,3884,3877,3868,3882,127,2806,2807,3750,3741,3798,3205,3731,2822,2821,3654,3761,3729,316,317,318,2652,2651,2662,1366,1367,1368,1369,2664,1393,1363,1365,162,163,2656,291,142,648,650,3630,3631,3632,3249,3250,3273,628,627,675,2673,293,311,2674,2678,2679,2680,2677,3655,3241,3242,3243,3229,2661,3234,2633,3235,2684,2683,2791,3223,3225,3233,4041,4043,4045,3585,3587,3961,4119,3960,3958,3929,1794,1792,1793,1806,1809,4025,4026,4028,4027] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [777,780,1729,808,3827,3832,3833,3834,3835,3836,3826,1144,1130,1142,1143,1703,1413,3873,124,1131,1412,3863,1428,1430,1444,1445,1741,1765,1734,1731,810,812,2845,809,2870,3825,787,786,788,820,101,106,107,2831,3143,105,99,100,3141,3142,3136,112,111,117,118,120] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [138,1104,1482,1650,1556,1413,1131,133,137,1129,1118,1437,1454,1452,1481,1436,1448,1410,4256,4257,4263,4264,1551,1398,1387,4272,1552,1378,147,132,135,1099,1098,1108,1109,129,1115,1348,1382,1309] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3297,4238,1355,1356,1357,1359,3629,3630,3631,3632,3265,1354,1363,1368,4204,4228,4230,4197,3618,3925,3926,4166,3909,4226,3619,3893] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4303,1840,1494,1508,4305,1498,1504,1841,3975,1839,1845,1846,4298,3970,4300,4328,4329,4338,3978,3981,3998,1515,4339,3990,1887,1851,4268,1844,4296,1489,1842] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [785,786,788,795,754,820,2421,101,750,189,757,739,740,753,756] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3059,3002,3008,3010,2503,2487,3063,2963,3078,3058,3740,3060,3043,3046,3011,2964,3067,3069,3064,3054,2983,2986,2991,2992,2993,2998,2961,2968,3768] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3157,3139,3147,2624,3160,2622,2638,83,84,180,81,82,78,70,73,88,89,2628,2627,2647,2648,2828] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4060,4062,4059,3516,4617,4612,4616,4619,4610,4611,4624,4053,4054,4074,3514,3513] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3905,4219,4217,4218,4209,4368,4349,4321,4111,4319,4322,4369,4370,4353,4346,4317] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [636,3305,4890,4888,4889,628,627,633,3270,3269,3274,3275,3280,3271,3273,4891,3235,4860,3241,3242,3237,3238,3239,3240] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        