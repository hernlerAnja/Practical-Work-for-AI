
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
        
        load "data/5SXI.pdb", protein
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
 
        load "data/5SXI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6794,6797,6633,6634,6635,6777,5359,5361,5362,5363,6809,6800,6105,6114,6115,5358,5360,5042,5043,5072,5357,5409,5408,5041,5073,5045,5047,6574,6602,6576,5077,5080,6609,6607,6606,5325,6116,1495,1496,1497,5326] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [6866,6868,6486,6786,6788,6789,6791,7527,7529,7530,7531,7447,7511,6288,6485,6505,6506,6867,6869,6243,6244,6289,6245,6309,6311,7448,6915,6958,7422,6257,6258,6526,7536,7537,7535,7538,6570,6541,6873,6890,6892,6886,6884,6889,6917] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [5483,3662,3665,3669,3656,3655,3659,8175,8181,8183,3385,3565,3576,3581,3645,3644,3580,3601,3603,5133,5481,5482,8129,8135,8137,5146,5148,3558,5132,3577,9278,8186,8187,8188,8141,8145,3567,5466] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [5619,2538,2539,1462,1460,1470,1472,1474,2202,6148,5624,5623,5659,5661,5319,5629,5631,6123,6122,5660,6087,6088,6121,2552,5612,1452,1454,5615,5318,1463,2519,2532,2520,2523,1426,1428,2536,5621,2542,2548,2549] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [1102,5426,867,717,866,5732,5733,5734,5735,141,144,145,146,152,135,5791,1104,6824,5760,6820,6826,6829,6833,6849,6832,5759,6513,5790,5421,5446,5430,5444,5450,5454,5456,5425,5398,5723] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [9316,3567,9305,9307,9315,9311,5461,5466,3577,9277,9278,9348,5472,5474,5476,9374,3711,9339,9340,10049,9308,3696,3543,3558,3560,3568,3565,3576,3581,5483,3736,3743,3695,3708] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [2951,2952,2954,2959,4370,8847,8858,2957,8859,8860,4340,4343,4368,4369,4554,4556,4557,4560,4570,4555,4564,4583,4589,4591,4575,4580,4603,4604,9042,4581,4582,9040,9041,9043,2949,4847,2948,2950,8844] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [10168,7625,7626,10200,9175,9208,3586,3589,9236,7623,3593,7627,7600,8160,8161,7594,3587,3588,3590,7633,9246,9247,9248,9206,9207,7563,7598,3613] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [5187,1207,3405,3683,3687,3688,3680,3407,3530,3528,3436,3439,3443,3406,3517,3522,3518,3519,1190,1191,1192,3413,3415,3408,3674,3675,3677,3679,5162,5169,5174,5180,5176,3412,3411,5504,3686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [4089,9035,9036,4090,4093,4096,4010,4659,4105,4626,4627,4629,4097,4102,4104,4581,4582,4377,9030,4580,4635,4638,4404,4406,4609,4610,4086] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [6661,6662,6700,6752,6753,6707,6708,6669,6709,6697,6632,6670,2321,1511,1513,2350,2346,2347,1583,2355,2356,2360,2380,2379,2323,1512] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [2359,2360,6129,6138,6139,6435,6424,2324,6116,1497,2211,2210,2325,2330,2194,6117] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [2900,2901,2902,2934,2991,3626,3628,3630,3634,3638,3651,3652,2933,2988,2989,2960,2962,8836,2959,8714,3621,3618,3619] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [1120,1127,1131,1132,1114,1117,727,1027,1039,1041,1044,1045,1024,1074,1040,748,750,735,744,752,1046,1048,1049,1050,755,781,1075,1160] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [3603,3621,8194,8213,8195,8183,8193,8687,8688,8682,8685,8686,8650,3619,3620,8841,8849,8850,8851,8653,3660,3651,3652,3657] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [4774,4775,4776,4777,4778,5063,5028,8033,8035,8036,4761,4762,5029,8054,8057,8031,6643,6644,6678,6639,6641,6667,6670,6672,6676,5052] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [1086,5712,5672,5673,5678,5683,5684,5713,6038,6044,6045,6048,850,6040,6039,6043,1084,5674,5675,5677,1053,790,812,813,814,808,807,802,803,805] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [6707,6668,6669,6709,5052,5051,6667,6670,2323,1519,1512,1513,5029,5028] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [5175,5177,3240,3241,3468,4879,4880,4876,4878,3238,5166,4863,5155,5159,5163,5158,4901,4903,5156,5197,5200,5168,5191,3446] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [7884,8460,7712,7758,7759,7836,7837,8458,8475,8457,7732,7731,8476,8477] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [7637,7613,7646,8273,8274,7616,7617,7618,7614,7615,8626,8661,8662,8235,8209,8660,8632,8635] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [8212,8213,8661,8662,8663,3596,8184,8194,8215,8214,8209,8208,8219,8221,8687,8689,8660,7624,7626,7617,7627,8220] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [6460,6459,6461,6136,6877,6477,6875,6465,6876,6882,6093,6094,6449,6455,6462,6106,6114,6431,6435,6436,6433,6138] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [6926,6927,7159,6989,6990,6991,7118,7120] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [3373,3364,3365,3543,3550,3562,3563,3566,3742,3743,3736,2792,2790,2791,10084,10085,9308,10086] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [10122,3364,3575,10084,10085,10114,10142,10086] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [186,189,193,184,9984,9958,9391,9957,9946,9948,897,9447,9448,9955,9915,9942,9951,9952] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [3724,2782,2783,3743,3736,3543,10048,10049,9308,2799,9306,10086] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [6861,6476,6478,5751,6319,6491] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [2884,3343,3344,3346,3345,3347,2902,3628,3006] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [4586,4612,4615,4644,4643,4645,3873,3221,2666,3213,3226,3227] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        