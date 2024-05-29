
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
        
        load "data/3IW4.pdb", protein
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
 
        load "data/3IW4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2840,2801,2802,2803,2806,2805,2505,361,362,2516,2542,334,336,363,364,337,367,368,370,2509,3426,3433,3422,3423,3424,3816,3815,3406,3403,2500,2498,2499,3792,3794,3790,3791,3793,3432,3447,3449,3488,2479,2814,2519,3777,3778,2838,3894,3897,3900,2834,2835,2836,2839,2858,2859,2860,2963,2976,2978,3378,3379,3381,2821,3801,3893,3243,3817,3892,3130,3907,3164,3360,3361,3363] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [120,121,123,124,177,724,727,1133,1134,1135,176,119,125,296,678,178,698,697,482,483,699,559,560,561,158,126,156,1108,751,152,154,1215,1119,1210,1212,1211,448,1112,703,281,717,721,696] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5917,5918,6567,6491,6492,6108,6568,6569,6572,5805,5839,6465,6476,6469,5651,5478,5482,5483,5534,5535,5476,5477,5653,5513,5515,5509,5510,5511,6490,6471,6098,6105,6084,5916,6053,6054,6056,5638,6060,5480,6074,6078,6081,5481,6097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4598,4601,4627,4594,4596,4597,5368,5370,8011,8012,8013,8014,8015,4628,5612,4505,7975,5367,5369,5573,5595,5364,4467,4488,4482,4486,4617,4636,4618,4478,4479,4480,4481,4475,4623,4629,4633,4634,4635,4644,4646,8019,8010] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [6523,7600,8020,8021,8022,8008,8009,8017,8023,8028,8030,6514,8047,4463,4461,5925,5927,8002,8003,8004,6554,6505,6508,5890,6064,6061,6066,6091,6069] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3075,3076,2980,2996,3129,3915,3099,3100,3101,3105,2995,3061,3077,3074,3028,3031,3036,3913,3914,3921,3922,2823,2825,2826,2827,2841,2842,2829,3899,3900] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5502,5750,5752,5671,5711,5503,5516,5517,5498,5774,5780,5804,5670,5655,5672,5703,5702,5705,5706,6574,6588,6590,6596,5751,5736] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [146,147,1233,1239,1240,394,417,392,379,395,393,423,314,349,354,298,313,447,1231,1217,149,145] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3974,3977,3981,3991,3961,4177,4182,4652,4696,4148,4153,4164,4165,4168,4172,4175,4176,4698,4699] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4454,8048,8052,4114,4117,4120,4131,4133,7608,7609,7611,4429,4391,4424,4417,4389,4392,4395,4420,4422,7595,7587,8029,8034,4463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1490,1491,1494,1498,1499,1502,1503,2019,2022,1508,1507,1474,1479,1978,1979,2021,1976,1977,1482,1307,1317,1300,1279,1287] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6649,6650,6655,6657,6658,7376,6855,6856,6857,6858,6859,7379,6864,7333,7334,7338,6865,7335,7378,7384,7339,6851,6836,6847,6848,6664,6673,6831,6637,6636,6643,6644] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2819,2852,2853,1344,1341,1342,1343,2818,5085,5088,5089,5094,2798,2868,5105,5113,2851] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [707,2243,1157,1163,1151,1196,1148,704,712,567,568,569,2646,2647,2648,570,2645,1197,530,533,2659,2660,2663,2664,2665,2673] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3878,3833,3879,4917,4915,5331,5325,3831,3830,3839,3845,3848,3252,5327,3215,3389,5332,3409,3394,3417] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1002,1003,1005,1500,1535,1498,1499,1501,1502,1532,2052,2027,2048,2044,2045,2031,1009,1010,1014,1001,2055,1279,1286,1287,1292,1293,1298] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [394,416,417,1344,1069,1245,1235,1236,1233,1239,1240,383] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1721,1443,1746,1459,1440,5058,5059,1353,1748,1460,5072] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        