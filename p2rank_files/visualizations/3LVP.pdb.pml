
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
        
        load "data/3LVP.pdb", protein
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
 
        load "data/3LVP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8796,8798,4038,4041,4042,4045,3766,4052,8980,8807,8809,8960,8937,8938,8814,8984,3116,9023,3110,8978,3093,3109,3143,3144,3108,8940,4030,4031,4037,8979,3145,8936,3462,3463,3464,3783,3782,3460,3994,4097,4098,4099,8770,3767,4090,4092,8825,8803,8806,3741,3747,3753,3757,3760,8789,3733,3734,3736,8797] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [197,709,348,349,350,351,710,711,463,465,495,177,486,487,489,490,484,491,458,729,334,715,196,153,160,198,163,167,168,142,144,145,732,756,759,1185,763,1156,764,1267,1183,1184,1260,592,1265,1281,1266,1268,733,734,765] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3459,3468,3090,3487,3488,3469,3562,3564,3563,2676,2678,3038,2670,2674,2675,3570,3568,3091,3092,3116,9023,2480,8999,8996,2487,2523,2524,2525,2474,2490,2495,3082,3083,3086,3067,2467,2468,2473,3115,2469,2471,3042,3061,2660,2661,3059] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [7242,7727,8096,7186,7240,7241,7729,7188,7720,7723,7189,7212,7393,7394,7395,8207,7219,7190,7193,7197,7204,7207,7213,7674,7675,7672,7556,7679,7698,8123,8124,8125,8198,8201,8205,8202,7378,7691,7696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [5813,4849,5924,5446,5444,5437,5440,4848,4878,4879,4825,5029,5030,5031,4822,4826,5421,5822,5841,5842,5823,5824,5840,5273,5436,5438,5922,5032,5917,5396,5015,5410,5413,5391,4828,4841,4844,4850] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3251,3227,3228,3248,3249,3250,2177,2178,2179,1210,1222,1214,2164,2168,2176,2180,948,568,569,1231,2216,1219,1218,970,973,999,579,2186,2217] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3659,3660,3661,6443,6445,3662,3663,6391,6390,3711,3694,3693,3664,3849,3665,6433,6436,6438,6446,3744,6427,6420,3712,3592,3593,3594,3427,3745,3865,3867,3728,3730,3732,3733,3726,3717,3718,3714,3586] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [925,945,946,947,948,2167,4539,4535,4547,4548,4549,4551,3517,924,3514,3513,3251,938,3534,2896,3273,3530,3276,3302,2895,4588,4552,3522,3520,3521,3529] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [8670,8699,8700,8701,8684,6487,8751,8760,8726,8728,8729,8753,8730,8764,6463,6431,6430,4100,4104,4107,6460,6458,6459,6494,6495,6496,6498,6499,6500,6483,6491,6523,8733,4097,4098,8766,8768,8770,4090,4092,8826,8765,8769,8806,4096,8752,8761] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [3473,3568,3569,3437,3571,3436,3462,3463,3464,2504,2506,3570,3584,2816,3586,2505,3585,2494,2495,3592,3593,3713,2778,3733,3726,3717,2781,3714,3712,3711,3694,3710,3695] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [3126,3283,3282,3542,3221,3246,3284,3247,3217,3220,3522,3524,3521,3207,3127,3273,3525,1210,3513,3251,3248,3249,3250,3526,1211,1214] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [5481,5879,5880,5570,5571,5574,5575,5576,5637,5638,5480,5877,5878,5600,5636,5875,5876,5627,5601,5602,5603,5604] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [2895,3551,3044,3045,3046,3047,2893,3051,3500,3516,3517,889,3510,3514,3515,899] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [6360,6382,6419,6577,6580,6381,6329,6553,6552,6560,6567,6573,6411,6414,4139,4131,6415,4138,4106,4107,4108,4105,4141,4168,4169,6416] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [945,946,947,948,3517,3514,1223,1224,1225,1220,1222,897,981,998,799,800,833,918,904,909,914,917,944,943,1221,1219,1218] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [7531,7532,7533,7543,9204,9164,9165,9166,9173,9155,9168,9167,8154,8171,7939,7913] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5817,5827,3686,3687,5791,4849,5924,6082,5946,5170,4858,5171,5923,5925,5938,5939,5940,5941] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [7844,8163,8165,7921,7763,7764,7920,7858,7883,7910,7884,7885,7886,7887,7888,8158,8159,8160,8162,8164] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1197,717,718,719,1248,566,568,1231,1213,311,724,315,3192,3199,1212,1214,3208] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [6776,6777,6778,6789,5722,5691,5694,6794,6795,5693,5724,5727,6782,6785,6226,6227,5719] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [6897,6895,6885,6894,6903,5250,6898,6934,6896,6933,5867,5627,5628,5630,5656,5888,5871] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6340,5462,5463,6372,5816,6377,6384,6398,6112,6129,6128,3672,3674,3675,3841,3849,5464,6391,6387,6388] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [3983,4014,4034,4035,4036,4232,4233,4234,8876,8877,8878,8879,4072,4073,8835,4224] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [8490,8309,8297,8306,8307,8507,9004,9005,9012,9013,8470,8471,8426,8427,8430] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [8950,3165,3182,3184,3183,3139,3140,3141,3148,3149,3168,9019,8977,8979,8946,8948,8976,3145,8949,3142,3144] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        