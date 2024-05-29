
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
        
        load "data/5SWP.pdb", protein
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
 
        load "data/5SWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5589,8278,8286,8290,8293,8294,8296,8324,5597,5598,3817,5590,5594,5596,5599,5587,5588,5604,5605,3687,3702,3703,9732,8335,8336,8337,8330,9794,3818,3689,3690,9759,9761,3830,3833,3680,3682,3787,3791,3792,3784,3778,3781,5268,3783,8332,3507,3767,3766,3723,3725,5583,9770,9800,9802,9803,8311,9728,9730,9739,9740,9742,3712,3714,9793,9768,9769,5575,6958,5580,5579,5581,6957,6950,6653,6654,6655,6656,6673,213,206,211,212,6964,220,6959] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [3085,3061,3072,3073,3074,3075,4713,9024,9026,3076,3078,3079,4681,4682,4490,4491,4492,4676,4678,4679,9043,4442,4449,4445,9023,9030,9042,4422,4415,4968,4434,4437,4439,4440,4960,3069,3070,3071,4959,4967,4969,9018,9025,4965,4416,4692,4705,4702,4703,4488,4709,3086,3087,3088,3092,3093,3094,4725,9338,9341,4465,4704,9336,9010,4711,4686,3780,3782,8344,8348,8349,8350,8351,8352,8353,4426] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [5479,5480,5481,5482,5483,5484,5485,5173,6755,5531,5530,6931,5202,6729,6696,6698,6922,6720,6756,6757,5448,2417,6915,6916,6996,7000,6919,6228,6231,6226,6227,6238,6236,6923,6722,5194,5162,5163,5164,5165,5191,5195,5199,5200,5169] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [6367,6608,7652,7570,7569,7055,7056,7080,6366,6607,6365,6410,6411,6663,6991,6627,6628,6989,6990,6911,6690,6691,6692,6910,7633,6913,7649,7651,7653,7654,7657,7658,7659,7660,6379,6380,6648,6652,6646,7673,7675,6645,6433,7002,7006,7008,7011,7037,6995,6908] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [8364,8368,8370,3716,3718,7748,8333,8369,7738,7739,7740,8358,7737,8422,8423,8824,10654,10655,10656,10683,7776,7786,7780,7782,7784,10692,7775,7774,8367,8383,8795,8796,8797,8798,8793,8794,8343,8360,8362,8761,8766,8767,8770,7734,7735,7741,7719,7721,7745,7746,7714,7742,7744,7762] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [237,238,239,240,5856,5855,5857,5881,5888,5890,5882,6971,6954,246,960,961,1174,1196,1198,1190,5548,5547,5568,5520,5543,6942,5576,6948,6951,6955] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [3743,8342,8343,8360,8361,8362,8822,8823,3742,8817,8820,8821,8355,8359,8786,8785,3766,3720,3725,3760,3740,3780,3782,8332,8344,8348,8351,8353,3718,8824,3773,3774,9018,9020,9025,3071,9027,9032,9033,9034,8999] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [4398,4399,4400,4431,8935,8751,8752,8753,8754,8899,8900,8908,8903,8906,4436,8933,9067,9068,4456,4483,8944,8966,8458,8447] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [3527,3652,3797,3802,3800,3528,3529,3530,3533,3534,3637,3639,3644,1301,3537,5284,5275,3549,3558,3561,1284,1285,1286,3571,3809,3810,3805,3808,3793,5628,5632,5309,5602,5611,5634,5636,5252,5254,5626] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5749,5751,5753,5440,5441,1554,5745,5746,5781,5741,1556,1557,1568,2613,1566,2632,2633,6209,6210,2296,6243,5782,5783,2617] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [3748,3023,3024,3750,8837,8838,8843,8998,9015,8846,3773,3774,3752,3756,9016,9017,9018,9025,9014,9013,8854,9012,8847,8851,3056,3110,3111,3112,3113,3055,3744,3760,3740,3741,3743,3742] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [6792,6791,6783,6782,6822,6901,6754,1605,1606,2415,1607,2413,2414,2442,2443,2444,6874,6875,6876,2449,2450,2454,2440,2473,2474,2441,6883,6902,6784,7615] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [5835,908,909,884,902,906,907,917,918,944,897,6162,6165,919,5794,5795,5800,5805,6161,5768,940,941,1177,1179,1180,1181,5834,5796,5797,5799,1147,1146,1155,1156,1158] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [2419,2422,2424,2426,6546,2305,2288,6261,6545,6547,6557,6238,6239,6260,1591] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [4528,4133,4732,4748,4757,4227,4214,4226,4218,4215,4781,4131,4132,4130,4760] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [1133,1135,1138,1121,1214,1221,1225,1226,1211,1254,1139,1140,1143,842,841,829,838,821] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [8355,8356,8359,8786,8787,8789,8764,4426,8348,4422,8788,9031,9034,4437,4439,4440,4441] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [1613,5141,5142,5150,5151,5171,5172,5174,6789,6787,6788,6831,5185,6766,8206,6763,6798,6793,1600,6792,5173,1606,2415] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [6258,6260,6577,6584,6571,6581,6582,6583,6557,6558,6553,6554,6555,6556,6997,6998,6999,6228,6599,6587,7004] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [3732,3735,10654,10598,10599,10622,10620,3718,7748,3708,9629,9661,9662,10621,7744,7746,7747] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [4469,4468,4349,4470,4548,4321,4322,4502,4348,4505,4506,4507,4539,4233,4250,4251,4208,4203,4206] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [9834,9835,9831,9833,9862,9863,797,241,243,246,801,240,9836,9837,798,282,284] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [7048,7049,7594,7242,7281,7032,7111,7112,7113,7240] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [3007,3024,3466,3467,3750,3468,3469,8838,8843,8846,3127,8847] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [246,252,254,801,5856,5855,1179,5853,5854,960,961,958,959,1174,1196,1198,808] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [9702,7720,7722,7747,3712,3714,3710,3711,3713,9700,9701,8309,8310,7748,7749,3707,3708,3709] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4469,4468,4349,4470,9084,9085,9086,9087,9082,9083,9146,9149,9081,9105,4347,4348,4505,4506,8930,4480] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [9162,9163,9164,9236,9237,9305,9310,9312,9141,9210,9247,9248] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [5528,6700,5202,6697,6698,5554,6669,6671,6701,6668,6702,6705,5563,5235,8274,5560,5561,5200,5201,5525] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [7907,7880,7985,7986,8606,8626,8607,8609,8033,7908] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        