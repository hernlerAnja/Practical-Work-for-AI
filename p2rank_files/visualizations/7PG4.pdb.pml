
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
        
        load "data/7PG4.pdb", protein
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
 
        load "data/7PG4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2642,2651,2653,2652,2654,2863,2954,3223,2769,2953,2637,2845,2846,2770,2964,2635,2502,2503,2543,2739,2740,3116,3112,3114,2993,3224,3285,3288,3246,3020,3210,2936,3340,3479,3510,3362,3477,3478] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [516,517,571,593,594,1033,838,1059,863,864,1076,1078,903,1077,875,876,901,902,904,1431,1125,980,982,1200,767,769,771,962,770,963,1180,1089,1092,928,785,774,784,512,515,505,506,499,500,501,618,278,626,628,630,616,675,653,275,547,261,185,1072,1055,1096,1094] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [9133,9134,9144,9146,9397,9399,9401,9129,9248,9249,9246,9507,9508,9467,9676,9494,9495,9442,9418,9220,9763,9700,9021,9023,9131,9124,9127,9098,8938,9024,9053,9054] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.329,0.702]
select surf_pocket4, protein and id [9508,9572,9395,9396,9397,9398,9399,9400,9401,9129,9763,9530,9758,9624,9587,9794,9760,9787,9788,9790,9128,9130,9388,9387,9304,9389] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.373,0.902]
select surf_pocket5, protein and id [8348,8350,8381,6563,6800,6364,6365,6367,6369,8408,8409,6396,6382,6814,8461,6562,6799,8259,8459,6580,8377,6398,8288,8258,8296,8298,8299,8268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.310,0.278,0.702]
select surf_pocket6, protein and id [7245,7015,7764,7205,7126,7108,7111,7420,7441,7763,7466,7241,7304,7269,7323,7303,7400] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.451,0.361,0.902]
select surf_pocket7, protein and id [11620,11625,11653,13020,13022,13028,12989,13021,10208,10209,10211,10238,10239,10776,10778,11616,11617,11618,11614,12994,12998,10851,10852,10795,10241,10827,10782,11619,11612,10230,10231] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.392,0.278,0.702]
select surf_pocket8, protein and id [6968,6970,6931,6932,6935,6994,6843,7216,6934,7217,7245,7014,6858,6859,7126,7110,6912] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.553,0.361,0.902]
select surf_pocket9, protein and id [3158,3413,3415,3211,3117,3183,2863,3416,3360] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.471,0.278,0.702]
select surf_pocket10, protein and id [11598,11596,741,742,745,956,2524,1163,2731,754,1190,1191,955,1160,1172,756,11597,2674,2686,2687,2713,2669,2712] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.655,0.361,0.902]
select surf_pocket11, protein and id [3141,3142,3126,3350,9929,9940,3127,3128,3072,2854,10799,2855,9903,9898,9892,9900,3351,9905,3380] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.549,0.278,0.702]
select surf_pocket12, protein and id [3558,3559,3560,3582,3598,9912,3372,3572,3574,3581,3588,3573,9888,9653,9655,9635,9901,9911,3604,3606,3608,3600,3592,3596,3607,9661,9651,9657] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.757,0.361,0.902]
select surf_pocket13, protein and id [55,56,57,1964,1965,1966,1972,238,1955,221,222,1956,41,23,24,25,22,28,1786,26,1790,1792,1793] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.627,0.278,0.702]
select surf_pocket14, protein and id [12580,5951,12586,12588,12475,5922,5953,5927,5930,5931,5932,11391,12598,12599,12594,5925,12457,11378,11388,11389,12478] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.859,0.361,0.902]
select surf_pocket15, protein and id [7007,8288,8071,8289,6788,7006,7008,6791,7022,8268,6814,6799,6797,6800] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.690]
select surf_pocket16, protein and id [3429,4590,4592,4595,3667,3595,4515,4526,4527,4533,4530,3627,3651,3656,3662,3648,3660,3634,3619,3670] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.839]
select surf_pocket17, protein and id [9475,9975,9474,9950,9951,9952,9476,10753,10871,10870,10789,10841,10840,10747,10869,9206,9473] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.612]
select surf_pocket18, protein and id [6445,6448,6431,6626,6627,6428,8780,6594,8761,8762,8764,8747,8749,8750,8751,8930,8767,8779,8778,8774] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.733]
select surf_pocket19, protein and id [275,277,300,547,373,375,130,618,278,619,515,516,517,571,546] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.533]
select surf_pocket20, protein and id [6653,6654,3929,4241,3930,6876,6877,6878,6879,7142,7146,7357,4246,4247,4248,7141,7160,6897,6899,7356] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.631]
select surf_pocket21, protein and id [5942,12574,12575,5891,5869,6106,6141,6142,6098,12744,6087,6100,6107,6112,12774,12732,12733,12546,12550,12553,12547,12549] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.451]
select surf_pocket22, protein and id [2676,11620,11623,11625,2512,11653,2509,11586,11585,2662,2678,2679,10800,10803,10796,2659,2496,11619] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.529]
select surf_pocket23, protein and id [3981,4110,4111,4100,4495,3983,4002,4494,3668,3670,4109,4510,4500,4198,3651,3655,3656,3648,3654,4592,3667] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.373]
select surf_pocket24, protein and id [3379,3381,9451,9692,9681,9682,3615,3612,3613,3397,9665,9667,9937,9938,9939,9941,3167,3398,3399,3643,3149,3377,3374,3375,3376] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.427]
select surf_pocket25, protein and id [4533,4530,4531,4532,4534,4535,4536,3429,3430,3595,3596,3550,3599,3551,3598] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.294]
select surf_pocket26, protein and id [10511,10764,10278,10279,10299,11521,11523,10763,10496,10297,10424,10494,10495,10510,11474,11475,10461,10421,10426,10432] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.392,0.361]
select surf_pocket27, protein and id [8590,8698,8711,8714,8589,8708,8709,8705,8424,8425,8628,8429,8446,8447,8433,8442] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.345,0.278]
select surf_pocket28, protein and id [7075,7077,7312,7096,8798,8809,8808,7341,7136,7137,8958,8953,8792,7331] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.498,0.361]
select surf_pocket29, protein and id [724,11663,11696,11697,11698,11664,722,2532,270,493,251,253,704,705,269] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.427,0.278]
select surf_pocket30, protein and id [12580,12581,5948,5951,12583,5956,5957,5136,12478,5125,12582,12584,12585,5962,5963] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.600,0.361]
select surf_pocket31, protein and id [9411,9380,9412,9356,9355,9361,9382,9383,9362,9360,9631,9633,9634,9635,9875] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.506,0.278]
select surf_pocket32, protein and id [8711,8714,8718,8721,7046,8708,8709,8450,8705,8433,8442,8447,8429] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.702,0.361]
select surf_pocket33, protein and id [4001,4100,4002,4109,4175,4199,4176,4106,4104,4171,4170,4172,4178] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.584,0.278]
select surf_pocket34, protein and id [5960,5965,6006,6007,6008,6009,6010,5967,12566,12557] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.804,0.361]
select surf_pocket35, protein and id [11557,2883,10819,10821,3164,10786,11522,11530,3148,3150,3167,3149] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.663,0.278]
select surf_pocket36, protein and id [13352,13355,13357,13535,13534,13536,13537,13686,13563] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.894,0.902,0.361]
select surf_pocket37, protein and id [4762,4867,4765,4844,5373,5356,4846] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.655,0.702,0.278]
select surf_pocket38, protein and id [6896,6893,6687,6688,6677,6679,7170,7171,7169,7166,4268,4269,4264] 
set surface_color,  pcol38, surf_pocket38 
   
        
        deselect
        
        orient
        