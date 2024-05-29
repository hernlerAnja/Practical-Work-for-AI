
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
        
        load "data/5SXE.pdb", protein
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
 
        load "data/5SXE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3754,5530,5523,5524,5539,5540,5541,5525,8190,8194,8196,8236,8237,8178,8186,3623,3639,9400,9402,9403,3638,3648,3625,3626,9430,9432,9433,3753,3769,5532,5533,5534,9464,9465,3794,9436,9439,9440,9441,9473,3650,3616,3618,3727,3728,3443,3703,3720,3723,5204,3714,3717,3702,8232,3661,8184] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [7569,7585,7587,7588,6973,7505,7506,7016,6543,6301,6302,6346,6927,6367,6369,6544,6924,6925,6926,6303,6564,7593,7589,7594,7596,6563,6584,6992,6347,6315,6316,6931,6944,6948,6950,6942,6947,6628,6844,6847,6849,6846] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [5416,5417,5418,5419,5420,5421,6691,6692,6693,6867,6632,6634,6656,6858,6660,6842,6852,6163,6167,6855,6172,6173,6859,6658,5127,5105,5098,5099,5100,5103,5101,5467,5130,5415,5466,5131,5135,5138,6664,6665,6174,1565,5383,5384] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [5789,5790,5791,5792,5793,214,215,221,5817,933,935,5818,6890,6907,773,775,932,776,936,5788,5824,5826,5825,5849,5848,6571,229,1171,1173,5484,786,5479,5483,6878,6884,5512,6887,6891,783,784,5504,5502,5508] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [4428,8875,8882,8883,8890,4381,8876,8884,4614,4618,4426,4427,4378,3032,3027,3028,3030,3033,3029,4647,4373,4374,4375,4638,4639,4640,4401,4398,4399,3040,3041,3046,4660,4661,8873,8874,3047,3048,3054,4641,4628,9117] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [9373,7693,9332,9370,9371,9372,9333,8209,3650,7658,7656,7652,7694,3643,3644,3645,3651,3652,3648,3654,7685,7683,7681,9361,10293,3668,8718,3671,10325,10326,9300,8208] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [3588,3741,3745,3746,3579,3580,3733,3738,1261,1276,5227,5228,5238,5245,3473,5572,3736,5220,3575,3576,3464,3465,3549,3470,3485,3466,3469,3494,3497,3500,3501,5232,3744,5562] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [1531,1532,1543,1529,1541,5677,2607,2608,2271,2588,2589,2592,2601,5687,5717,5718,5719,5689,5691,6145,6146,6180,6181,6179,5376,5377,5673,5681] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [1566,2280,2388,2393,2394,2429,2428,6174,6187,6175,6196,6197,6482,6483,2263,2399,2401] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [9474,9440,9441,9473,9396,9413,8211,3650,5515,6894,5516,5517,6886,6893,6607,6609,6589,6590,6591,6592,6620,186,6900,180,181,183,9410,187,188,8196,5523,5524,9400,9402] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6727,6718,6719,6720,6755,6756,6758,6690,6819,6810,6811,6728,6766,2415,2424,2425,2449,2448,1652,2388,2390,2429,1582,2419,2392] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [4410,8898,8902,8903,9006,9007,9008,9042,9044,8930,9102,9045,9078,9079,9104,9004,9039,8947,8935,8949,9100,8836,8839,9016] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [4367,8647,8648,4334,4335,8767,8770,8771,8772,8645,8640,8641,8891,8845,8830,8907,8908,8804,8808,8795,4372,8831,4337,4418,8829,8357,8358,8359,8635,8636] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [7609,6588,6582,6583,6599,6626,6627,6628,6564,7594,7595,7596,6329,6584,6330,7620] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [3696,3710,3692,3709,2976,2977,3684,3686,3038,8736,8868,8869,2978,3064,3065,3067,3009,3010,3036,3035,3676] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [4257,4445,4284,4285,4437,4438,4441,4442,4443,4404,4405,4406,4169,4475,4484,4144,4158,4186,4187,4135,4137,4139,4141,4142,4143,4140] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [8269,7684,7675,7676,7683,7682,3653,3654,7685,8718,8258,8264,8233,8261,8262,8690,8691,8717,8692,8243] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [1189,1193,1196,1200,1093,1096,1108,1109,1110,1111,1112,1113,1114,1201,796,1183,1186,817,819,1115,1118,1119,804,813,821,824] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [4066,4067,4068,4464,4693,4696,4150,4163,4058,4088,4668,4684,4154,4717,4036] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [1155,5771,915,883,881,5769,5770,916,5732,5735,1121,1122,1130,1131,1133,859] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [9038,9039,9037,9047,9048,9010,9012,9078,9079,9042,9124,8753,8754,8756,8758,8740,9015,9016,8852,8853,8839] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [3504,5233,3317,5235,5221,5224,4938,4921,4934,4937,4959,5226,5213,5217,4961,5214,5216,5230,5249,5258,5262,4936,5268,4947,3316,3526,3314] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [3696,3710,8863,3718,8721,3661,3676,3677,3678,3679,8262,8711,8715,8242,8243] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [7675,7676,7674,8322,8321,8323,7695,8258,7671,8689,8690,8691,8653,8654,8655,8688,8661,8664] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [8762,8816,8815,8827,8828,8832,8833,8836,8817,8820,8984,8618,8620,9016,8623,8629,8631,8761,9008] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [9506,772,9534,9502,9504,214,216,221,218,211,9507,9508,773,257,776,259] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [2874,3782,3794,10173,10174,10211,9431,10208,10209,9433,10210,3789,3801] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [4008,4505,4009,4010,4014,4015,4741,4742,4751,4043,4042,4006] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [6535,6520,6517,6518,6519,6513,6523,6933,6934,6940,6935,6507,6956,6957,6194,6196,6491,6493,6494,6489] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [6985,7207,7217,6984,7047,7048,7049,7178,7176] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [10210,10247,10239,3633,9362,10267,3422,3415] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [2311,2307,2575,2566,2577,2222,1480,1482] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        