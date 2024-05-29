
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
        
        load "data/5SXD.pdb", protein
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
 
        load "data/5SXD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5532,5541,5542,5526,5528,3618,3620,5543,5527,8204,8210,8212,8216,8219,8262,8263,8258,3641,3625,3640,3662,3663,3627,3628,3755,3756,3768,3771,3796,8220,8222,5534,5536,9645,9680,9621,9582,9583,9644,9610,9612,9613,9620,9653,9616,3445,3725,3721,3722,3702,3703,3715,3716,3719,3717,3705,3699,3720,3729,3730,5193,5204,5206] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6634,6636,6695,6658,6660,6854,6857,6860,6861,6694,6693,6837,5419,5421,6869,5420,5422,5423,6165,6174,6176,6175,6177,5133,5469,5107,5138,6667,5100,5101,5102,5103,5111,5417,5418,5468,5140,6666,5386,5385] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [6846,6849,6928,6851,6546,6848,7571,7507,7589,6371,6975,6977,7508,7018,6929,6304,6545,6927,6305,6369,6630,7592,7595,7587,7590,7591,7482,6994,6303,6348,6349,6565,6566,6317,6318,7596,7597,6944,6946,6949,6933,6950,6952] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [3680,3681,8736,8737,8740,8741,8748,8749,8705,3674,3678,3682,3686,3690,3679,3720,8268,8269,8270,8277,8274,8288,8706,8707,8708,3712,3717,3698,8926,8927,8941,8943,8944,8940,8758,3697,3069,3694,2979,2980,3688,8942,8763,8766,3711,3012,8954,8946,8948,8955,8962,3027,8774,8771,3662,3656,8287,8718,8744,8742,8743] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [3020,3031,3030,4430,4616,4617,4649,4383,4428,4429,3032,3035,8969,8970,8971,4403,4400,8938,8937,4651,4614,4630,4635,4638,4624,4639,4640,4641,4642,4663,3029,8952,8953,8954,8958,4375,8961,3017,4619,3028,4620,4905,4906,4907,4372,4380,4903] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [9223,9199,9221,4412,9222,9224,9119,9041,9042,9117,9118,9153,9155,9156,9218,9219,9220,9074,9002,8903,9127,8991,8986] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [5762,5763,5486,5795,5458,5484,5485,5490,6880,6886,6884,5759,5764,6909,1173,5794,217,5514,5516,6889,6892,6893,937,5783,5820,216,5851,5819,5850,194,195,223,1175,5506,5481,5510] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [7685,7660,7683,7684,7682,3646,3647,3648,3650,9541,10471,10473,10469,9478,9480,8235,3660,10450,3659,3665,3666,10449,3669,3671,8744,10506,3654,3655,3657,3656,3673,10505,10479,7693,7695,7696,3651,9551,9552,9553,9513,9512,7654,7658,3652] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [4338,4339,4369,8861,8863,4374,8836,8859,8831,8834,8826,8894,8673,8674,8979,8819,8820,8895,8825,8872,4336,4421,8867,8869,8995,8996,4394,8379,8381,8382,8383,8384,8385,8672,8373] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [5719,5720,5721,2590,2591,2610,2603,5379,1533,1545,2594,1531,1543,5679,5691,6147,6181,6148,6205,6208,2273,5378,5675,5683,1534,2607] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [1566,1568,2390,6176,6189,6177,1565,2281,2282,2388,2395,2396,6198,6199,6495,6483,6484,2401,2265,6485] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [1278,3509,3475,3738,5222,1261,1262,1263,3511,3590,3577,3466,3472,3468,3499,3503,3578,3740,3743,3747,3735,3739,5247,5564,5565,5245] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [1191,1203,1185,1188,1095,1098,1111,1112,1113,1115,1116,1198,1202,1231,1145,1146,798,818,819,770,821,938,1119,806,815,769,787,1147,1148,1149,1152,1154,1117,1120,1121,1124] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [6896,191,6895,6902,6592,6593,6594,6622,6591,9593,9653,185,188,5519,8220,6611,8222,8237,5517,9621,8219,5525,5526,5500] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [5089,5110,5111,5112,6727,6729,6730,6766,6726,6767,6769,5079,1583,2393,2394,1585,1589,1591,1595,5080,1590,1584,2392,6693] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [1584,2390,2392,2427,2430,2431,2417,6757,6760,1654,2418,2420,2421,6758,2450,2451,2419,6692,6693,6721,6839,6722,6812,6813,6729,6730,6769,1582,1583,6768] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [1123,1124,1135,858,5737,5734,5735,1153,1155,1157,1156,1158,5773,883,884,861,917,885,5771,5772] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [8552,7833,7911,7912,8532,8533,8534,7959,7957,7790,7834,8535,8565] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [4670,4695,4156,4698,4155,9239,4060,4164,4165,4163,4687,4686,4689,4719,4466,4070,4069,4071,4152,4068] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [8285,8347,8348,8681,8716,8717,8718,8715,8349,8690,8694,8284,8310,8311,8314,8309,7678,7676,7677,7712,7713,7716,7674,7675,7710,7711,7673,7680,7700,8687,8686] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [10289,255,257,264,266,9753,10220,226,9694,9697,10262,9696,9685,260,9752,10260,10263,10257,10256] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [4939,4936,5215,5218,5260,3506,5251,3528,3319,5237,3318,3316,4940,5228,5235,5223,5232] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [6585,6332,6586,7597,7598,6630,7595,6566,6590,6628,6629,7611,7613,7610] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [4619,4620,4906,4353,4868,4595,4893,4354,4364] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [2577,1481,1482,2544,2545,2579,1484,2224] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [4146,4160,4171,4141,4486,4487,4188,4260,4189,4169,4286,4447,4445,4259] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [3623,3626,3424,10390,10427,3417,3635,10447,10419,9542] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [6970,7532,7219,6986,6987,7049,7050,7051,7178] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        