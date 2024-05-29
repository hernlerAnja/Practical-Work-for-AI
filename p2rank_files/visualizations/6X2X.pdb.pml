
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
        
        load "data/6X2X.pdb", protein
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
 
        load "data/6X2X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [782,784,785,818,819,750,787,817,4466,4470,4462,4464,847,821,816,4048,4049,4050,4500,4501,4502,4019,790,791,4094,4096,825,1072,1079,1085,1084,1086,4805,4806,4807,4493,1043,1045,1081,751,752,4533,4534,4531,4081,4082,4083,4084,4085,1075,1076,4836,4835,4837] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [802,803,804,3699,542,543,544,3294,3677,3269,3268,486,488,487,489,532,530,531,533,482,485,794,4123,4124,4059,758,3727,3728,3730,3325,3729,3291,3300,4125,4058,3755,466,773,774,571,527,528,537,800,837,541,824,471,77,770,771] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [85,75,76,78,79,80,82,710,77,770,771,477,471,773,9953,9978,9980,9982,737,738,739,758,473,481,485,488,487,86,925,84,242,244,9539,478,480,9974,9540,9541,9542,9957,9958,9959,9965,9962,479,702,703,9555,9987,9988,662,665,676,678,681,684,685,9551,9538] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [3978,3979,3714,3848,3850,3878,3948,3514,3521,3510,3493,3490,3492,3901,3902,3512,3845,3872,3876,3823] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [236,250,229,239,240,241,243,86,925,84,119,924,106,264,468,259,262,263,102,107,112,111,114,94,95,98,83] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [7113,7115,6763,6764,7116,7117,7135,7138,6789,6790,7140,7144,6762,7172,7173,6795,6023,6797,6440,6793,6794,6771,6012,6021,6024,6015,6443,6410,6408,6409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [7517,7976,8019,8020,7545,7547,7420,7982,7986,7753,7756,7757,7779,7746,7747,7748,7752,7758,7416,7750,7977,7980,7508,7445,7478,7506,7481,7482,7507] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [1111,1110,5623,5624,5180,5233,5183,1132,1134,1232,1233,1234,5610,1262,1258,1260,1261,1294,1296,1265,1267,1340,5196,1291,1330,1336,1337,1339,1307,1306] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [923,118,119,120,207,220,924,1171,206,1167,1163,86,925,84,242,236,211,239,240,94,95,922,939,940,948] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [873,5210,1307,1303,1305,1306,5208,5195,864,869,870,859,1272,1302,875,5239,5267,1090,1097,1098,1103,1104,1110] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [1143,1006,6031,6030,5643,5631,5672,1121,1125,1115,1136,1140,1141,1195,1196,1205] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [10405,10404,10394,9879,9900,9901,9902,9909,9910,9940,10365,10366,10367,10375,9915,9913,9880] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1832,2105,2512,2384,2382,2603] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [9825,9826,9417,9418,9420,9422,9784,9397,9400,9753,9754,9755,9815,9748,9752,9771,9778,9779,9782,9773,9401] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [4156,4159,4160,4161,10762,10763,4162,4163,4181,4182,4184,4186,3750,3777,3802,3368,3369,3759,3803,10717,10738,10741] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [852,850,851,3634,4408,3962,3635,3636,4470,4432,4468,4438,3995,4019] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [3582,3529,3533,3535,3527,3156,3232,3503,3164,3168,3502,3624,3580,3581] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1870,1890,2487,2473,2482,1502,2470,1886,1529,1530,1532,1500,2469,2468,2471,2472] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1185,1973,1975,1824,1825,1974,1953,1168,1166,156,1612,1952,1182,1173,1176,1175,1635,1637,1634,1650,1169] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1185,1973,1972,1974,1953,1969,154,187,1966,185,153,1214,1216,1215,2145,2148,2149,2138,2140,151] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [6546,6866,6585,6868,6547,10813,10810,10835,6896,6895,6898,6927,10809,10812] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3933,4418,3906,3954,4345,4338,4372,4380,4350,4375,3910,3911,3912,3913,4343,4313] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9829,9665,9787,9834,10081] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [267,268,269,270,274,275,2995,2999,2993,3024,493,3025,3062,3023,514,515,500,273] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [5165,5166,5247,5249,5222,5223,5092,5094,5100,5101,5129,5102,5256,5258] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        