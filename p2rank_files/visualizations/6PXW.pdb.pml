
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
        
        load "data/6PXW.pdb", protein
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
 
        load "data/6PXW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3623,8255,3378,3364,3366,3367,3377,3578,3563,3574,3575,3558,3559,3094,3585,3327,3075,3362,3596,3599,3344,8455,8452,8454,8440,3073,8435,8436,8490,8491,8492,3375,9376,3067,3093,3136,3577,3600,3604,3605,4499,3608,3613,3614,3615,8462,7971,7952,7970,8204,8239,8241,8243,8244,8254,8252,8451,8221,8500,8485,8473,8476,8477,8481,8482,7944,7950,8013] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9395,10023,8796,8829,8828,9628,9630,8797,8799,10017,10015,9665,9987,9369,9368,9382,9385,8789,8790,9401,9426,9387,9391,9392,9393,9412,9425] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3951,3952,4515,4516,4518,4508,4492,4491,4505,4510,4514,4546,4548,10392,3919,3920,3922,3913,3915,4751,4753,4788,10400,10394,10364] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [9413,9414,9415,8299,8301,9409,9416,9419,9399,9402,9321,9327,9345,8553,8554,8555,8514,8480,8504,8512,8533,9323,8293,8295,8308,8546,8544,8303,8304,8307,8543,8549,8550,8563,8548] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [3627,3635,3416,3431,3669,3418,3422,3424,3426,3427,3430,3656,3603,3637,3671,4535,3667,3672,3673,3676,3677,3678,3686,4536,4538] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [5988,5989,6430,6441,5785,5786,5788,6547,6549,6440,5991,6396,6393,6380,6452,6424,6397,6453,6437,6439,6398] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [1112,1111,1503,1520,1521,1575,1576,1553,1547,1114,911,1672,1516,1519,908,909,1670,1562,1563,1564,1560] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [711,701,703,250,252,253,482,491,493,270,722,9709,269,9953,2527] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5599,7404,5588,5129,5130,5147,5368,5370,5578,5580,5127,5359,5146,10330,4832,10328] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [56,57,41,45,1823,1828,23,1812,220,26,222,1983,1999,1809,1811,1822,1985,1975] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [4900,4903,6689,6686,6688,4918,6860,6876,6700,6705,6699,4922,4934,4933,6852,6862,5097,5099] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [8807,8809,8810,8816,8817,9804,9812,9807,8803,8812,8815,999,1000,9657,9619,9079,1214] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [4780,5876,5877,3939,3940,10181,10189,10184,3938,4202,4742,6091,3926,3930,3932,3933,3935] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [3144,3145,3141,3159,3162,2871,8491,8492,8493,9358,9360,9543,2872,9352,9356,9357,9598,2876,9565,9566,9568,9577,2674,2873,9599] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [4666,8039,8036,3616,7748,8018,8021,8022,7749,7750,4475,7551,7753,4689,4691,4700,4688,4722,4721,3614,3615,4481,4483,4480,4479] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [9777,9782,9821,9088,9100,8788,8781,8768,8806,9797,8804,9819] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [10818,10819,10821,10653,8717,8719,10624,10622,9152,9156,9157,9158,8619,8620,8621,8622,8624,8625,8716,10643] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [7602,7603,7604,5824,5825,6024,5827,5618,5619,7585,6049,5833] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [2708,2725,2726,1147,1172,956,950,742,741,948,947,2727] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [10557,10558,10560,9208,8684,9207,10535,8674,9214,9215,10517,8677,10521] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [10905,10906,10908,10904,3797,3800,10865,4330,4331,4337,4338,3807,10869,10883] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [29,1808,1810,1850,1756,1757,1832,1834,27,4] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [6633,6634,4904,4906,6687,4881,6727,6685,6711,6709] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [4111,4113,3663,4443,4009,4108,4429,4430] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [8886,9320,8990,8988,8985,9307,9306,8540] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        