
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
        
        load "data/6E2P.pdb", protein
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
 
        load "data/6E2P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [331,333,338,339,341,2583,2585,469,2702,2701,211,2550,470,471,2804,301,302,2715,2722,2712,2796,2805,2989,3057,2744,2746,2747,2993,2988,2990,3042,335,337,353,601,362,365,603,2522,2523,209,210,2711,3021,3024,3023,3037,3233,3234,242,3267,3268,233,240,216,217,466,3026,234,3232,3058,2738,3288,2737,2739,2619,3660,3657,3659,2628,2622,2625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [4011,4013,4146,4149,6310,3889,3890,3891,3888,3922,6821,4015,4018,4145,4150,4151,4033,4042,4045,4017,6149,4282,4283,6121,6123,3914,4007,6312,6184,6182,6296,6297,6316,6317,4129,6391,6342,6579,6580,6333,6641,6819,6608,6611,6613,6615,6610,6624,6584,6602,3982,3983,6339,7213,7212,6399,6400,4019,4020,4021,3988,3981,6218,6221,6224,6227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [4456,4457,7191,2890,4423,4425,4404,760,2864,2865,2900,4402,4403,2889,2887,4386,2834,2831,4426,7235,7237,7238,7239,7253,4366,7254,7190,7187] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [4201,4181,4182,4184,4190,4222,4186,4202,3906,3908,3863,3864,3865,3829,3822,3826,3825,3710,3716,3810,4183] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1848,380,443,1008,381,991,990,1851,440,570,911,1816,571,952,953,954,577,419,421,416,1811,1839,1825,1815] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6410,6413,6414,6415,7203,7205,6430,3148,3132,4478,4485,3121,6440,4428,4438,4420,7202,3991,3989,3990,4001,4412,4482,4002,6591,6590] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [3757,3773,4860,4892,5351,3782,4582,4585,3755,4584,3740,4893,4624,4627,4664,3786,4665,4615,4616,4617,4621,4870,4859,4576,4578] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2036,2190,2034,2035,2037,2038,2039,2041,2176,2040,2042,2191,2192,2193,2194,1969,2407,2406,2405,1954,1905,1903,1904,2019] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [5543,5544,5545,5663,5576,5656,5657,5659,5661,5662,5664,6008,6025,5591,5790,5806,6009,5804,5658,5660] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5483,5460,5469,4691,5455,5488,5492,5495,4673,4689,4061,4123,4251,4118,4120,4096,4097,4099,4101,4257,4594] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [4678,4679,4681,4100,4101,4073,4074,3805,4076,3747,4636,4628,4629,3724,3726,3727,4230,4229] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7551,5291,5292,5293,7553,5368,5366,4827,5341,4851,5303,5294,5299] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [894,899,902,901,896,932,934,1210,1707,73,1209,1177,91,101,99,100,71,92,94,55] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5781,5599,5737,5486,5598,5484,5450,5451,5485,5476,5478,5627,5628,5651,5613,5614,5503,5734,5738,4322,5623,4312] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [6373,6546,6547,7132,7133,7128,7021,7022,7023,7115,6985,6986,6961,6957,6371,6370,6362,6363] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [995,998,421,393,550,37,38,40,42,945,946,396] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6789,6881,6788,7089,7091,7057,7058,7053] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6419,6421,6572,6778,6779,6781,6648,6649,6651,6653,6591,6592,6586,6593,6650,6652,6415] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3011,3191,3192,3010,3068,3069,3070,3002,2981,3001,2820,2824,2826] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7069,7070,6788,6677,6679,7090,7091,7057,7058,6777,6769,6770,6771] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [2955,2956,3579,3409,3411,2767,2768,2778,2766,3385,3446,3562,3445,3447,3419,3575,3567] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        