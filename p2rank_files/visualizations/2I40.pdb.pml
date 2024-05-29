
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
        
        load "data/2I40.pdb", protein
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
 
        load "data/2I40.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [234,591,601,132,613,83,85,615,617,80,81,82,79,390,595,597,594,596,361,1120,1123,1124,1125,1126,593,592,464,1037,1118,1021,1009,1036,645,652,618,1038,621,628,637,638,629,1133,1115,1119,133,114,110,112,249,250,251] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4530,4531,4532,4633,4474,4475,4477,4478,4480,4481,4483,4513,5021,5022,4790,5024,5025,5026,4646,4649,4650,4511,4512,5544,5545,5443,5455,5548,5549,5550,5551,5472,5074,5075,5082,5086,5089,4893,5471,5543,5450,5045,5048,5051,5047] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2921,4915,4916,4924,4925,4927,3355,3356,2922,4577,3331,4416,3322,3354,4426,4427,5015,4413,3324,4392,4407,2912,4613,4919] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7318,7760,7751,7752,7753,498,495,496,4946,7719,7720,7721,7319,7728,178,18,19,20,21,585,31,32,7717,7718,13,1,9,486,490,487,7309,214,215] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1178,1174,1197,1198,2391,2323,2327,2363,2365,2326,2366,1188,1193,1194,1187,3518,3519,1185,3488,3479,1176,1180,1395,2349,1374,1387,1384,1389,1394,1175] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5624,7875,7876,7871,7994,7177,7179,8700,8701,7170,8685,7184,7840,7841,7172,7176,7180,5615,5616,5617,7902,7905,8021,7907,7990,8019,7996,8698,7993,8000] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5839,5842,5829,5619,5622,5625,5624,7876,7884,5618,5623,7885,5603,5605,5599,5600,5601,5385,5610,5613,6762,6763,6753,5844,5849,5850,6788,5843] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3597,3599,3603,3510,3591,3592,3508,3593,3598,2782,3622,3624,4280,4289,4291,4292,1190,1191,3444,3478,3479,1199] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7816,8166,8167,7821,7827,7207,7234,8075,8144,8188,7833,8067,7210,7232,8071,8069,8115,8116,6899,6900,7238,7241,7235,7269,6882,6857,6886,6889,8127,8131,7826] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3668,3670,3770,3791,3430,3436,3672,3678,3747,2835,2872,3674,2841,2843,2837,2838,2485,2489,2492,2503,2502,2460,3769,3419,3424] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2576,2577,2928,5036,5530,5069,5488,5485,5037,5040,5032,4614,5503,4868,5529,5513,6716] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1763,1770,1768,1769,2120,2121,1350,1345,1348,1797,1798,1311,1796,1387,1362,1388,2112,1754,1757] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [605,1104,1105,610,623,6973,473,474,1054,1088,437,439,440] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5842,5817,5814,5805,5766,5767,5803,6206,6246,6247,6241,6245,6254,6219,6569,6570,5843,6560,6554,6561,6562,6203] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5572,5550,5551,5567,4755,4756,4757,5564,5565,5566,4507,4508,4509,4667,4650,4789] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1126,1147,1148,998,1013,980,981,1227,1238,112] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [7716,4729,7711,7678,7679,7685,4701,4728,4696,7718,4963,4952,4685,4737] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1139,1125,1126,1147,1148,1140,1141,1149,981,326,327,328,251,110] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        