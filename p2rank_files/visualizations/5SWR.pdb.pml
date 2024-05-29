
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
        
        load "data/5SWR.pdb", protein
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
 
        load "data/5SWR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8256,8257,8259,8272,8273,8274,5559,5560,5561,9709,9710,3796,9681,9684,9685,9686,9718,9645,9647,9648,3675,3677,9678,9674,9676,5557,5551,5562,5566,3643,3645,5568,3470,8249,8253,8299,8300,8241,8242,8295,3666,3650,3665,3686,3652,3653,3780,3781,3793,3821,5550,5553,5542,5543,5544,5552,5525,6636,5567,5218,5219,5220,8247,3750,3747,3740,3741,3744,3746,3729,3730,3688,3754,5231,9658,6915,6921,189,6920,6922,6927,6616,6617,6618,6619,6913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [4454,4455,8976,8977,8978,8982,8993,8994,8995,4405,4408,3034,3038,3033,3035,3036,3037,3039,3047,4928,4639,4644,4640,4641,4642,4645,3024,4397,4400,4932,4931,4930,4378,4426,4428,4665,4666,4667,9269,9270,4425,3049,3042,4687,4688,4689,8962,4453,4649,4664,4451,4655,4660,4663,4668,4672,4674,4676] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [3681,8322,8323,8324,8325,8757,8754,8755,8756,3698,8782,8783,10570,10571,10572,8753,8720,8385,8386,7743,7745,7747,8729,8733,8320,8321,8344,8345,8346,8347,8327,8306,8326,8332,8333,8296,7708,7709,7711,7698,7704,7705,7707,7703,7700,7702,7725,7737,7738,7749,7753,7746,10599,9545] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [5132,5165,6692,5126,5127,5130,5133,5136,6718,5494,5493,5443,5444,5445,5447,5163,5158,5410,5411,5128,5446,5448,6190,6199,6201,6200,6202,6719,6720,6879,6885,6862,6894,6194] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [6330,6394,6396,6571,6969,6974,7532,7533,7019,7043,7000,7002,6954,6874,6952,6953,6958,6971,6876,6871,7596,7612,7614,7615,7616,6570,6373,6374,6590,6328,6329,6655,6342,6343,6591,7620,7621,7623] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [3706,8745,8747,8986,3705,8744,8968,8969,8970,8984,8985,3688,3703,3715,3723,3719,3737,3704,3742,3729,3736,3745,8311,8314,3707,3711,3713,8787,8788,8792,8951,8797,8950,8776,8779,8780,8972,8977,8979,3722,3034,3018,3019,3075,8966,8965,8967,2987,3074,3076,8802,8806,8964,8805,8810,8813,2986,3681,8323,8325,8756,8782,8783,3683,3686,8306,8305,8307,8318,8295] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [1149,5817,5818,5819,5820,5483,5808,6905,6911,5845,6909,6914,6934,5816,221,5853,5844,933,934,935,936,777,229,206,215,6918,6917,214,6598,1152,1154,1156,5531,5535,5539,5541,783,5511,1171,786,1173,5509,5510,5506] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [2588,1542,1543,2271,6172,6173,1541,6206,5744,5745,5746,2589,5716,6233,5403,5404,1529,5700,5704,2598,1532,1531,2601,2605,2608] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [9010,9245,9247,9015,9026,9053,9223,8927,9151,9177,9179,9141,9142,9143,4437,9062,9081,9242,9244,9098,9237] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [6214,1566,2263,2280,2246,2386,2388,2393,2394,2397,2399,2428,2429,2430,6201,6202,6222,6224,6508,6509,6510,6520,2401,2458,2435,6223] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [6786,2448,2449,6745,6746,6747,6784,6785,2388,2417,2415,2424,2425,2429,2418,6846,1580,1581,2392,1582,2390,6794,1652,6793,2419,6754,6755,6717] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [8869,8870,8858,8859,8854,8855,8421,8422,8712,8713,8867,4364,4399,8887,9020,4446,4419,8919,9003,8918,9019,8896,8865,8883,8885] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [3672,7708,7709,7710,7711,7712,7679,7706,7707,3673,3675,3677,9617,9606,9577,9578,8272,8273,7685,7683,9616,9618,7648,7718,7719,7720,7721] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [3672,7709,7710,7711,7712,7707,9617,9606,9545,10538,9577,9578,3681,3695,3698,8783,10570,10571,3671,9618] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [3524,3527,3576,3500,3496,3490,3491,3493,3602,3603,1276,3760,5247,3772,3773,3615,3768,3607,3765] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [2969,2970,3428,3429,3430,3431,3432,3713,8789,8797,3114,2987,8802,8806,8805,3090,2986] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [1581,2392,1582,5104,5105,1588,5137,5136,6755,6753,6754] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [4085,4115,4116,4181,4189,4190,4178,4720,4723,4177,4695,4094,4095,4096,4491,4711,4714,4744,4093] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [1108,1109,1096,1110,1114,1115,1118,1183,1189,1186,1201,796,804,1229,1196,1200,1113,817,821,816,813] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [5759,5757,5758,5760,1155,1156,1133,856,859,882,883,1122,5796,5797,5798,881,1130] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [8719,8745,8746,8747,8748,8986,8744,8970,8984,8985,4403,8717,8311,4385,4389,8723,4400,4401,8972,8977,8979,8982,9002,8322,8756,8319,8318] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [6960,6961,6962,6967,6550,6221,6223,6534,6547,6546,6540,6544,6545,6224,6520,6521,6516,6517,6518,6515] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [4169,4171,4168,4164,4166,4167,4432,4464,4465,4468,4311,4312,4469,4470,4431,4433,4196,4502,4511,4512,4285,4211,4214,4472,4283,4284] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [7244,7011,7012,7076,7203,7205,7075,7074,6995,7557] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [9747,9751,9753,9749,9781,257,259,206,9752,216,772,773,776,9779,9739,9746] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [7996,7871,8589,7948,7949,8572,7870,7843,8569,8602] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [6729,8169,4861,4863,5113,5114,6761,6763,6757,6726,6752,5137,6794] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [4769,4035,4530,4532,4042,4070,4069,4740,4741,4767,4768,4771,4772,4776,4778] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [2468,2470,2435,2478,6509,6504,2401,2403,2494,2497,2472,6498,6506] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [3660,10512,10492,10484] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [9895,804,805,808,809,747,748,999,1001,1016,1015] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        