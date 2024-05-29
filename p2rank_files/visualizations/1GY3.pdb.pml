
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
        
        load "data/1GY3.pdb", protein
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
 
        load "data/1GY3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5103,5105,4724,4725,4726,5491,5626,4569,4572,4709,5101,5102,4554,4607,4606,4608,5624,5531,5625,5627,9019,9022,9023,9024,4556,4559,4568,4562,5634,4896,4968,4969,4970,5619,5620,5106,5104,5526,5111,5155,5162,5519,5188,5123,5125,5131,4549,4550,4551,4553,4555,5547,5128,5548,5147,5148,4832,5642,5649,9036,4587,4865,5640,9028,4743,4583,4585,4577,4578,5641,4831,4833] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1174,429,1167,398,1158,1159,1173,1180,1153,1154,1157,1160,501,1149,1152,1080,1081,1052,1054,1063,1064,1065,636,638,639,640,634,635,637,644,502,661,664,8965,257,258,259,102,140,141,89,101,90,92,127,672,695,82,83,84,86,87,88,721,111,110,8964,8969,105,109,656,242,365,1175,1182,366,274,276,118] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3383,3415,3416,4484,4482,3417,5000,5003,5016,5018,4468,3424,3385,3392,4492,4653,4489,4502,4503,4689,4485,2973,2982,2983,2984,4690,4991,4990,4992,4995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [7969,7971,7973,8005,8124,8037,8035,5684,8006,5697,5699,5704,7977,7978,7979,7970,8152,8151,8121,5716,5713,5714,7300,7609,7610,7611,7980,7314,7315,7316,7317,7302,7306,7307,7309,5734,5674,5683,5736,5670,5675] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [534,524,525,533,7439,222,528,7443,7448,7890,7449,7858,223,35,36,551,628,34,186,25,1,536,535,7879,7881,7882] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [8275,8319,8200,8245,8246,8247,8196,7030,8256,8261,8224,7963,7016,8298,8297,7954,7946,7951,7957,7371,7365,7368,7399,7029,8206,7956,7158,8202] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3826,3831,3832,3497,3827,3488,2550,2557,2564,2555,3809,3795,3730,3732,3734,3780,3853,2521,3485,2899,2902,2896,2933,3740,2563,2692,3736,2546,2905] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [477,478,1138,1139,1097,1122,1112,2343,467,475,7088,7083,7084,1111,645,647,648,649,653,666,667,668,1094,508,7455,7104,7102,510] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [3684,3685,3569,3571,3655,3658,3504,3505,3661,3665,4356,4358,3660,3538,3539,3540,1230,2844,2840,2841,2843,4360,1246,1247,2834,2848] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [5115,5133,5606,5135,5117,5120,5561,5564,5579,5580,2621,2622,4942,4944,4945,2617,5589,6809,4977,5112] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [6308,6659,6301,6306,6290,6292,6649,6650,5887,6335,5849,6334,5900,5901,5904,5910,6295] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [2193,2184,2185,2176,2177,2178,1824,1826,1841,1842,1840,1835,2192,2183,1421,1868,1869,1420,1877,1383,1829,1859,1860,1861,1434,1438] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1267,1269,1246,1247,1249,2834,1208,3145,2848,2850,2851,3507,3511,3512,3538,3539,3540,1230,1216,1217,3504,3505] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [5806,5808,8995,9000,9002,5178,5522,5523,5524,5819,5514,5515,5820,6032,6058,5204,5176,5215,5214,6067,6077,6081,5506,5787,9004] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [3323,309,3380,337,3374,3343,3381,3383,4484,4483,570,573,572,574,294,561,3382,346,3353,3322,3349,3342] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [1459,1460,2387,2388,1239,1214,1215,2424,2426,1467,2413] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [6283,6439,6440,6616,6620,6622,6625,6587,6621,6623,6624,6470,6585,6588,6610,6632,6634] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1057,8941,8943,8948,8945,1354,1039,1056,1353,1335,1337,1340,1342,1041,1321] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [8054,8056,8502,8043,8504,8045,6899,6900,6901,6861,6888,6891] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [709,747,711,8943,8944,1354,1056,1353,1566,740,1342,1615,1340] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [5682,5706,5925,5926,5681,6855,6854,6892,5695,5686,5693,5933,6879] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3086,3066,3225,3227,3070,3256,2752] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [2422,2425,2436,4038,3579,3589,3590,3577] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [4804,7840,4776,7848,5028,5039,7846,7810,7788,7809,7808,4761,4759] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [8989,348,8987,354,358,359,3180,3181,332,334,3122,3125,331,122,366,8988] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        