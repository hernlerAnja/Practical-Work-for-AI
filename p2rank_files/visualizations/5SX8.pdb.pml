
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
        
        load "data/5SX8.pdb", protein
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
 
        load "data/5SX8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8227,8231,8234,8235,8219,8225,5529,5531,5528,5530,5544,5545,5546,3646,3648,3784,3656,3669,3668,9540,8277,8278,8273,3653,3655,9568,3783,5536,5537,3799,9578,9610,9537,9539,9566,9573,9576,9577,3680,8237,8252,3678,9547,9548,9550,5516,5520,6899,5521,5522,6897,6898,5503,6905,6614,6594,6595,6597,5539,9602,9601,193,3753,3757,3758,3750,5209,3744,3745,3747,3473,3733,3749,3691,3732] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5421,5422,5423,5424,5425,5426,6168,6696,5143,6670,6637,6661,6669,6697,6698,5471,5472,6870,6863,6177,6172,6857,6860,6840,6847,5136,5103,5104,5105,5106,5110,5108,5141,6179,6178,6180,5388,5389] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [6306,6307,6308,6351,6352,7593,7510,6997,7021,7511,6568,6932,6569,6633,6854,7590,7594,7595,7592,7485,6320,6321,7598,7599,7600,7601,6589,6549,6374,6947,6949,6953,6952,6978,6980,6930,6931,6849,6851,6852,6936,6955,7574,6548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [8718,8747,8746,8303,8719,8720,8721,8717,7689,8364,8690,8693,7716,7727,3684,7690,3699,3700,10463,10461,10462,10464,10500,8716,7721,7723,7725,3698,8311,8305,8307,8310,8302,8301,8299,7680,7681,8684,8363,8274,8284,8249,7686,7687,7675,7676,7678,7682,7683,7715,7660,7649,7655,7685,7703,10491,9436,9437,8682,8689] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [1171,1173,5489,5487,5488,5509,5507,5508,5484,5513,5461,6889,6883,5514,5517,6896,6892,936,218,219,223,5854,5823,5822,5853,6577,6912,6895,6575,6576,210,192,5798,5795,5796,5797,5786,935] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [3036,3050,4906,3047,3048,3049,3051,4623,3056,4433,8926,4432,4617,4622,3059,4654,4619,4431,4633,4646,4652,4406,4627,3060,3061,3053,3054,8938,8939,8937,4638,4641,4642,4643,4644,4645,4666,8923,4908,4909] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [3489,3493,3768,3618,3771,3774,3775,3776,3763,3503,3765,3759,3766,5225,5250,5573,5216,5577,5567,1259,1260,1261,1276,3527,3494,3496,3499,3515,3524,3605,3606,3537,3539,3531,5564,5569] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [9117,9119,9013,9108,9120,9082,9040,8985,9011,9038,9163,9179,9177,8994,9186,9188,9184,8970,8887,8954,8959,8966,9083,9079,9081] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3679,3680,8250,8251,3675,3676,3677,3678,9509,7686,7687,7688,7657,7661,7663,9498,9436,9437,9470,7685,9469,9508,9510,7697,7696,7625,7626,3672,3673,3674,3684,7690,7689,3699,3700,10463,10462,3698,10430,3701] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3722,3725,3716,3717,8910,8908,8911,3707,3708,3709,3726,3739,3740,8923,3058,3059,8916,8917,8774,8777,3085,3086,3088,3056,3057,3030,3031] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [2608,2587,2588,1532,2601,1531,1543,1529,1542,2271,2607,5682,5722,5723,5724,5694,6150,6184,5680,5686,5381,5382,6151] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [8398,8400,8664,8815,8818,8670,8669,4377,8674,8675,8676,8947,8677,8665,8399,4342,8843,8878,8963,8964,8849,8845,8847,4424,4397,8879,8856,8877] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3691,3739,3740,3748,8923,8744,8708,8740,8709,3706,3707,3708,3709,3716,8910,8911,8929,8711,8747,8745,8746,8303,8283,8284,8301] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [6733,6732,6723,6724,6725,6763,6760,6843,6815,6816,6817,6824,6772,2429,2415,2424,2425,2418,1652,2449,2450,2419,1581,2428,2448] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4689,4088,4180,4192,4193,4691,4183,4469,4440,4182,4184,4467,4673,4698,4701,4181,4722,4098] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1156,5736,5773,5774,5775,5776,5741,883,882,881,916,1155,915,5737,1152,1154,1121,1122,5746,859,1130,1131,1133] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [8292,8294,8289,8290,8291,8293,4908,4909,4910,4357,4367,4356,4378,4871,4622] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2263,6201,6202,6487,6488,6498,1566,2280,2388,2393,2394,6179,6178,6180,2399,2279] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1189,1196,1183,1200,1110,1113,1229,1201,1108,1109,1114,1115,817,820,1118,824,1096,821,1143,1186,796,813,1093] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [6169,6540,6177,6938,6939,6940,6525,6523,6528,6945,6961,6962,6524,6199,6201,6498,6499,6494,6495,6496,6493,6512,6518,6180] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6989,6990,7052,7053,7054,7181,7183,7221,7222,7212,6973,7535] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [290,5862,6001,5861,287,6034,5997,5999,283,5894,5906,286,294] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [3511,3572,3510,2806,3914,3571,3883,3915,3321] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        