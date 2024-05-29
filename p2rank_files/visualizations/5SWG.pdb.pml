
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
        
        load "data/5SWG.pdb", protein
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
 
        load "data/5SWG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5473,3596,5462,5466,5467,5469,5478,5482,5484,5468,5483,8157,8165,8169,8172,8173,8215,5475,5476,3731,3604,3603,9614,3601,3616,3617,8214,8216,3732,3744,3747,9642,5465,8175,8184,8190,5477,9675,9676,9649,9684,9650,9651,9652,163,9611,9613,9621,9622,3628,9624,3626,9640,5458,5459,5460,5441,6550,6551,6552,6835,6837,6836,6843,6532,6533,6535,147,161,164,3421,3681,3701,3698,8163,3692,5147,3680,3695,8211,3594,3706,3705,3639,5134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [4560,4371,4558,4561,4321,4324,2975,2976,2989,2984,2986,2987,2988,2990,2998,8905,8906,8908,8924,8925,8909,8912,8918,8926,2985,4848,8907,4313,4316,4847,4294,4370,4557,4369,4571,4344,3001,4590,2993,3006,3007,3008,3009,4343,8892,9266,4576,4579,4580,4581,4582,4603,4605,4583,4604,9253,9255,9258] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [5358,5359,5360,5361,5363,5362,5364,6106,6634,6635,5081,6607,6608,6577,6636,6801,5409,5410,6808,6810,6795,6798,6778,5326,1525,1526,5327,6117,6116,6118,5046,5048,5042,5052,5044,5074,5079,5078] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [6244,6245,6289,6290,6258,7531,7449,6935,6959,6542,6870,6506,6507,6571,7537,7533,7536,7532,7528,7530,6259,7538,6887,6885,7448,6916,6918,6890,6246,6312,6487,6869,6874,6868,6787,6790,6792,6789,7512] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [10537,10538,7653,7654,7655,7665,3631,3632,8713,10536,3630,8212,8249,8237,8248,7627,7628,7619,8301,8302,7618,7625,7620,7621,7624,7616,7614,7641,8685,8686,8687,8684,8683,8240,8650,8659,8222] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [9583,9584,9572,7625,7626,7636,7595,7624,7637,9511,9544,9543,8188,8189,7563,7564,7601,7599,3621,3623,7627,7628,3622,3632,10504,3646,3647,3649,10536,10537] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [6830,6834,6827,6833,5431,5445,5451,5452,5455,5457,5427,5399,5422,5425,5426,5447,6821,1109,896,746,1131,1133,178,179,183,5792,5760,5761,5791,6514,6515,6850,159,160,5734,5735,5736,5446] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [8241,3656,8706,8709,8710,8675,8676,8674,3639,3654,3669,3655,3657,8222,8221,8223,8227,8230,3694,8211,3696,3680,8238,3687,3688,8898,8900,8907,8677,8915,8881,2969,2970,3634] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [8642,8796,8789,8643,8808,8788,8792,8793,4320,8933,8848,8949,8826,4280,8815,8817,8950,4362,4335,4315,8336,8337,8338,8334,8335,8624,8635] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [1492,1489,1491,1503,2549,1501,2228,2231,6149,5616,5662,2548,2567,2568,5620,6088,6089,6122,5660,5661,5624,5630,5320,5632] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [2388,2389,6117,6130,6118,6139,6140,6436,2418,1526,6425,2359,2361,2395,2223,6426,2240,2353,2354] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [3664,8727,8732,2937,3662,3687,3688,3666,3670,8898,8900,2969,2970,3024,3026,8896,8894,8895,8897,8742,8736,8740,8735,2938,3023,3654,3658,3655,3657,8722,3656] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [5029,5030,5053,6668,6672,6666,6667,5021,1548,6707,6708,6710,6645,8085,6677,6679,6671,1541,4776,4762,4763,4777,4778,4779,8061,8063] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [5675,5684,5685,6040,6039,6041,6044,816,819,831,832,836,837,841,1090,1091,5678,1093,1114,1116,5674,879,5712,5713,5714,876,844,842,843,852,853,854,875,5676,1113,1115,1082,1081] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [4130,4132,4114,4378,4123,9242,4581,4582,4583,4611,4639,9250,9247,9248,4660,4627,4630,4044,4045,4046,4131,4012,4636,4405,4407,4638,4565] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [10537,10538,10573,10574,10575,7659,7661,10611,7653,7654,10569,10572,10571,7641,10564,10565,7623,8684,8682,8683,8659,8693,8695] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [1540,1541,1542,2378,2379,6702,2352,2348,2350,2347,2375,2384,2385,2389,2408,2409,6670,6671,6662,6663,6700,6701,6709,6710] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [2985,4848,8907,4300,4312,4313,4316,4295,4809,4847,4294,4560,8221,8223,8227,8228,8229,8230,8231,8232,3694,3696,4305,4299,4301,4834] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [1153,1154,1056,1070,1071,1073,1143,1146,1149,1156,1160,1161,776,777,1074,1075,1078,1079,773,1103,1077,756,764,1053,1189] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [1219,1220,1221,1236,5163,5186,3716,3475,3479,5175,5177,3451,3719,3711,5505,5188,5515] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [3381,3383,3664,8726,8727,8731,8732,2920,2921,3380,3382,3041,3042,2938,8736,8735,8719] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [1236,3566,3715,3716,3441,3553,3444,3447,3448,3451,3724,3719,3711] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [3685,3687,2985,4848,8907,4838,2983,4839,3694,3696,8230,8232] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [7159,7119,7121,6924,6927,6928,6990,6991,6992,6961,6988,6962,6966,7160] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [8677,8914,8915,8916,4316,4317,8900,8907,8909,8902,8238,4305,4301,8653,8225,8227,8234,8675,8676,8678,8674,8241] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [6460,6462,6137,6139,6140,6436,6437,6432,6433,6434,6435,6456,6450,6478,6876,6878,6463,6461,6883,6466] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [9643,9644,10419,10420,10422,2834,10382,2818,3772,10385,3760,10384,10378,3779] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [9224,9222,9035,9227,9229,9164,9165,9058,9056,9057,9032,9084,9085] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [8486,8487,8505,8518,7786,8485,8495,7864,7865,8488,7759,7760,7912,7787] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [9680,9717,9718,9707,9712,9682,9715,9744,9745,743,732,9747,9748,9719,217,219,733,736,178,179,180,183] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [4385,4347,4348,4384,4226,4227,4228,4349,8968,8969,8965,8967,8966,8963,8964,8986,9040,9043,8987,8812] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        