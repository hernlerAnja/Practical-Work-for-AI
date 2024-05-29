
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
        
        load "data/3IEC.pdb", protein
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
 
        load "data/3IEC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6144,6145,5732,5753,5754,5756,5745,5746,5748,5570,5569,6116,5172,5174,5301,5725,5176,5705,5499,5706,5178,5200,5201,5314,5315,5317,5465,6235,6237,6129,6217,6220,6221,6222,6225,5199] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [487,621,628,622,624,670,1033,1061,1062,673,1134,1137,480,485,486,381,415,232,608,233,234,1138,1152,1154,1139,1142,1046,1143,1144,640,646,649,662,663,665,117,116,118,89,218,91,93,439] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [8105,7720,8241,8246,7850,7736,7707,8264,8267,8272,8260,7851,7852,8000,8104,8664,8752,8754,8755,8679,8680,8757,8760,8761,8762,8651,8291,8281,8283,8288,8279,8280,7836,7708,7711,7735,7713,7734] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [3210,3197,3221,2636,2630,2664,2666,2665,3190,2624,2626,2628,3218,3610,3581,3594,3609,3035,3684,3685,3690,2766,3170,3171,2782,2780,2781,3194,3176,3188] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [10032,8114,8115,10140,10088,10120,8113,8047,8054,8063,8065,8066,9787,8038,10116,9818,9820,9822,9804,9807,9867,10110,10033,9797,9798,9801] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [2249,2492,2413,2414,2415,2470,2502,2200,2202,2204,2189,2169,2186,448,2179,2180,2183,2496,2163,447,445,446,514,2499,494,496,497,420,2498] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [2994,2995,2996,2984,2993,4962,2968,4738,4728,4734,4731,4732,4750,4961,4963,3043,3044,4711,5046,4797,5050,5044,5047,5040,5049,5018,4985,4748,4737,3062,3049] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7269,7283,7285,7263,7266,5579,5580,5531,5528,5529,5530,7251,7252,7257,7250,7585,7579,7581,7332,7603,7605,7272,7575,7497,7553,5584,7520,5503,7496,7498,5512,5519] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1970,1951,1956,1957,1961,1955,1458,1949,1221,1223,1436,1220,1222,1433,1434,928,936,929,931,1425,906,961] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [7039,6304,6305,6306,7038,7044,6541,7032,7034,7040,6511,6512,6515,6303,6496,6518,5989,6010,6012,6018,6011,7045,6014,6045,6508,6509,7053,5986] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [8840,8839,8841,8545,8546,8579,8521,8524,8553,8554,9572,9573,9574,9046,9047,9556,9076,9567,9568,9569,9575,9053,9050,9583,9043,9044,8547,8549] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [5541,5968,5540,5555,5947,5944,7225,5547,7196,5935,5932,5967,7201,7206,7189,7184,7220] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [4503,4513,4517,4520,4502,4504,4499,3977,3980,3984,4505,3477,3479,3973,3974,3976,3769,3771,3770,3451,3454,3475,3476,3483] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [423,424,425,388,355,390,389,357,359,361,10024,394,391,531,547,548,549,588,10042,589,362,10039,2419] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2643,2650,3693,10346,3691,3692,2929,3706,3708,2887,2893,2782,2781,2798,2797,2898,2863,2896,2897,2899] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [8831,8816,8825,8830,8575,8576,8577,8578,8579,961,963,957,959,1198,1210,1212,1190,947,1191] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3221,2636,3594,3571,3572,10343,3693,10344,10345,10346,3691,3610,3581,3582,3583,3690,3692,3609,3685,2782,3586,10323] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3396,3409,3006,3432,3433,4690,4685,4671,3397,4666,3012,4692,3005,3020] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [7348,4291,10282,4283,4286,4287,4072,4070,4123,4307,7347,7350,4110,10274,4115] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5433,5434,5428,5431,5464,5465,5373,5398,5185,5316,5317,6241,6242,6243,10466,6227,5332] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [9741,9755,9758,8470,8502,8503,9736,8465,8466,8474,8475,8082,8090,9760,9762,8479] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [7968,7999,7851,7852,7868,8776,8777,8778,10586,8762,7959,7957,8788,10600,10584,10585,8786] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [8251,8255,10151,10150,8080,8742,8696,8709,8725,8693,8694] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        