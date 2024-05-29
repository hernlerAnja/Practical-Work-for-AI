
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
        
        load "data/3QS9.pdb", protein
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
 
        load "data/3QS9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2284,2546,3307,2283,3303,3304,3326,2288,2289,2291,478,479,3869,3870,3325,2486,2487,2509,2511,2539,2508,2510,2512,2513,1236,1802,1239,1801,1235,1787,2514,418,419,238,2306,237,2290,2820,2295,2296,2818,3855,443,444,445,446,441,440,442,221,749,223,752,750,216,1258,228,1256,1257] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4293,4296,4298,4393,4547,4311,4290,4291,4336,4223,4560,4460,4545,4464,4461,4462,4463,4465,4466,4548,4210,4397,4404,4405,4406,4438,4441,4206,4207,4208,4211,4559,4439,4440,4421] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [8797,8946,8947,8949,8822,8782,8784,8879,8891,8876,8880,8883,8890,8776,8777,8778,8779,8948,8950,8951,8952,8924,8926,8927,8907,8794,8793,9046,8696,8697,8892,9031,8694,9045,8651] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [11410,11411,11412,11261,11413,11415,11416,11246,11158,11160,11161,11343,11495,11497,11248,11240,11286,11388,11390,11391,11115,11509,11510,11414,11347,11354,11355] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2305,2801,2803,2800,2802,2804,752,753,2449,2446,2472,2755,2756,2805,2445,1786,2514,2481,2483] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [9601,9096,9091,9439,9442,9443,9446,9610,9460,9554,9598,9572,10315,10317,9570,9594,9107,9109,9616,9613,9614] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [413,445,446,736,2821,400,3854,404,687,418,237,415,2820,377,378,381,737,735] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [9814,9815,9717,9891,9905,9699,9708,9709,9711,3143,9705,9819,9825,9826,3144,3147,3148,9685,3997] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [2438,2440,2462,2470,2471,1272,1779,1783,1764,1761,1765,1768,1745,2697,2715,2692,2699,2702,2472,2726,2727] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [12283,12369,12279,2110,12355,2113,12289,12282,12290,2114,12149,2109,12163,12172,12175,12179,12178] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [5356,5358,604,610,5384,614,5202,611,5192,5196,642,643,5195,5387,5385,606] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [402,403,404,3832,3833,3829,394,632,634,3846,3822,3823,3819,629,631,624,647,658,659,655,651,370,372] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [12334,12152,12339,2647,12335,12337,12306,12308,2670,2678,2679,2682,2708,2710,2674,2671,2672,2711,12142,12145] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7361,7362,7427,7441,7247,7235,7244,1076,7221,7351,7445,1079,1080,7251,7253,7444,7454] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [7378,7380,1645,1648,1613,1637,1644,7224,1674,1676,1677,7407,7409,1640,7218,7209,7406,7214,7217] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [11000,11004,11005,10798,10812,10704,10747,11001,10813,10999,10802,11056,10757,10910,10745,11051,11055,11008,11012,11052] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [9678,9688,9681,3716,3744,3745,9842,9844,3681,9871,9870,9873,3712,3713,3706] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5068,5072,5084,5086,5115,5088,5108,4605,4953,4956,4960,5831,5829,4601,4949] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [8534,8535,8536,8544,8538,8540,8541,8293,8281,8334,8548,8349,8351,8289,8284,8286,8280,8282,8283] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [12339,1288,1289,1778,1290,1757,2676,2677,2615,2533,2504,2505,2617] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [3980,3953,3955,3957,3425,3456,3457,3458,3400,3987,3409,3398,3421,3422,3424,3978,3979,3981,3982] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [12390,11918,11621,12086,12100,11782,11800,11832,11622] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [9332,9333,9369,9454,9455,9336,9926,9636] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        