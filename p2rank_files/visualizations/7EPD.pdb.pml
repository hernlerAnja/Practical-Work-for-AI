
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
        
        load "data/7EPD.pdb", protein
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
 
        load "data/7EPD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5219,4271,5238,5240,4270,4251,4252,4255,4236,5087,5069,5070,5071,5088,5091,5235,5236,5253,5051,5255,5256,5049,5050,5052,5275,4286,4287,4393,4269,4428,4429,4436,4438,4460,4427,4408,4412,4409,4439,4896,4440,4459,4450,4451,4453,4454,4457,4477,4237,5053,5056,5036,5034,5037,4390,4392,4407] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1936,1942,1944,1840,1842,1865,1841,1346,1678,1746,1750,1760,1758,1650,1655,1924] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [6691,6693,6694,6488,7287,6326,6327,7284,7285,7455,7990,6474,8017,7454,8016,6692,7989,7282,7283,7448,7288,6514,6515,6473,6478,8507,7075,6318,6465,6471,6313] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [7943,7944,7945,7947,7746,7932,7933,7911,7913,7747,7720,7577,7734,5567,5599,5600,7554,5570,7705,7679,7681,7576,7717,7719,7706,7735] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [3410,3411,3416,1209,1207,1180,3237,3213,3214,3206,3211,3212,1183,1185,3196,1147,3204,3163,3164,3166,1186] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [10,198,1,5,7,13,14,15,16,2328,2330,557,558,17,18,2364,2362,2363,506,141,142,143,204,202,208,518] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [480,482,6022,6001,6018,481,24,23,25,39,38,40,748,606,641,632,633,634,6005,6000,6013,727,737,734,743,607] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [5258,4238,4239,4242,5260,4112,5255,5256,5268,5269,5270,5271,5272,5275,5273,5274,5276,5290,5016,5033,4255,4236,4450,4451,4453,4454,4457,4477,4218,4237,4219,5034,5037,4452,4428,4427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [10402,10422,10400,10403,9580,10417,10631,9767,9783,9770,9784,9785,9788,10304,9787,9803,10437,10288,10289,10421,10419,9766,9768,9769,10629,10632,10416,10415,10418,9773,10285,10286] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [4359,4362,4364,4668,4670,4361,4830,4858,4669,4851,4377,4379,4378,4857,4876,4850,4662,4663,4665,4645,4647,4706,4357,4695,4678,4826,4355,4354] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [1080,848,878,6228,856,858,6226,857,6224,1021,6414,1020,1065,849,1067,6382,6227] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [6474,8015,8017,7460,7461,8006,8405,8494,8496,8492,8404,8409,8480,8488,6457,8419,8476,8040,8417] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [10472,10255,9629,9611,9613,9734,10575,10594,10576,10593,10596,10597,9748,9768,9614,10613,10617,10612,9752,10269,9747,9749,9750,9753,10577] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [10437,10436,10289,10421,10435,10419,9766,9768,9769,10614,10617,10612,10632,9752,9773,10268,10286,9767,9770,10457] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [6154,6155,6140,6141,6144,6148,6149,5852,5448,6139,5479,5480,5851,5578,5559] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [1000,1001,2621,2620,1146,995,1163,1164,1968,1970,1787,1788,1966,1786,1967,1194,986,987,988,800] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [7144,7257,7255,6984,6652] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [8350,8351,8087,8088,8090,8092,8365,8361,8362,8347,8353,8355,8341,8352,8124,8125] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [4913,4916,4440,4436,4438,4460,5053,5055,5056,4931,4459,4910,4909,5071] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [5056,4929,4930,4931,4932,4933,5036,5035,4484,4457,4953,5039,4951,5037,5038,5019,5021,5022] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [2132,3217,3221,3222,3119,3223,3208,3116,2646,2131,3131,3134,3136,2636,2637,2670,3117,3118] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [8863,6625,8968,8969,6825,6823,6826,7019,7022,7025,7028,8848,8850,8858,7014,7015,7007,7012] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [898,900,907,6181,6182,910,6177,6178,6153,933,909,6183,1056,1088,901,903,6173,6175,6204] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [4422,4449,4228,4231,4452,4229,4230,4423,4211,4213,4214,4584,4585,4471,4560,4562,4563,4566,4608] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [8139,8140,8141,8138,5758,5759,5760,5764,5767,8147,8136,8142,8143,8112,8114,8137,8174,8203] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [1174,1175,1209,1208,1184,1172,3185,3187,1034,1457,1430,3188] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4111,4128,4131,5275,5274,5295,5292,4112,4110,4178,4180,4219] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [8388,8385,8387,7494,7505,5659,8063,8031,5691] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [5888,5833,5830,7665,7668,5519,5464,5525,5466,5465,7663,5829,5889,5920,5334] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [1472,1504,1505,1326,1439,1440,1441,1224] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        