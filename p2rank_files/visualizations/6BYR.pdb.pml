
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
        
        load "data/6BYR.pdb", protein
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
 
        load "data/6BYR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6516,6521,7550,8805,8807,6572,6573,7100,6515,6517,6518,7634,7637,7632,7631,7633,7152,7522,7551,7104,7122,7128,6679,7116,7118,6964,7125,7494,6540,9055,7534,7638,7639,7640,9062,6535,6522,6523,6526,6527,6531,6532,6533,6546,6545,6695,6696,6556,6796,7655,7653,6548,6550,6855,6711,6829,6712,6792,9046,7523,7524,9036,9039,9040,9045,9054,7511] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1874,883,1886,1989,1990,1991,1992,878,1504,873,874,875,1048,1983,1984,923,924,925,1452,1031,1456,3397,3398,3406,3407,1875,3386,3387,879,3388,3392,1863,3410,1862,1501,1903,1902,3159,1480,1474,893,898,887,885,884,897,1147,2016,900,902,1144,1170,1106,1047,1063,1207,2005,2006,2007,1181,892] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4291,4292,4278,4283,4288,4220,4205,4206,4226,4230,4217,2476,4222,4225,4267,4269,3974,4266,4273,4227,2461,4165,4166,4195,4198,4082,4081,4083,4297,4102,4285,3933,4311] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [552,2986,2987,2988,2989,2990,2991,581,554,582,583,584,553,2962,2965,2967,1746,2867,1,2,2951,1720,2949,2950,8,2841,1742,1744,1745,1747,1782,1783,1281,1749,1752,1754,608,610,612,618,620,621,1283] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [10930,10958,10928,10943,10842,10844,10935,10940,10944,10661,10932,10662,10828,10838,10841,10799,10863,10869,10848,10849,10852,10861,10865,10866,10868,10856,10857,10925,10939,10914,10913] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [9938,9941,9945,9730,9731,9958,9853,9865,9854,9839,9846,9814,9812,9581,9931,9933,9878,9926,9936,9944,9813,9873,8108,9940,8124,9870,9871,9914,9917,9921,9868,9874] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [8635,8637,8639,8640,6231,6232,8616,8599,5652,5650,6255,6258,6259,6260,6261,6263,6288,6266,6229,8515,7390,7392,7393,7394,7395,7397,7365,7368,6929,6931,7430,7431,6268,6916,6927,7400,7402,7404] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [5193,5190,5200,5201,4915,5262,5265,5266,5151,5180,5209,5211,5204,5208,5218,5217,5221,5310,5296,5196,5013,5014,4875,5295,5272,5277,5287,5291,5292,5282,5284,4913,5261,5150] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [7446,7704,7706,7908,7907,10349,10364,7904,7905,7906,7418,7419,7420,8442,8445,8438,11111,11122,7422,7937,7427,7719,10192,7708,7709,7712,7713,7716,10355,10382,10387,10348,10381,10383,10385,7896,7899,8446,10411,10413,10388,10392,10393,10412] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [9394,7874,7875,9379,7871,9380,7879,9398,10441,10442,10422,10182,10183,10221,7829,7831,7857,7859,7870,10150,10153,10155,10152,10179,10189,7832,10404,7720] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4700,4735,4744,2061,2062,2063,2257,4701,4707,2060,2258,2260,2249,2251,2797,2798,4764,4740,4745,5465,2794,5463,2796] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [11007,10989,10631,11006,4181,4179,10634,4174,4176,4180,3631,11008,11009,3609,3634,3654,10991,10990,4032,4034,4037,4026,3633] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [4535,4533,4534,4574,2225,4774,4507,4531,4504,4541,4542,4571,4573,4543,4759,4756,4765,4793] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2790,1774,2289,1772,2825,2794,1742,1778,2258,1771,1770,2256,2251,2797] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [10440,10441,9401,10182,10183,10221,10222,10625,10623,9398,10180,10181,9416,10635] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3597,3599,3598,3626,3629,9295,9246,9247,9274,9277,3647,9269,3621] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [3753,3769,5361,4792,3750,3751,4985,4986,4987,5357,5359,4984,5365,4793,4535,4532,4533,4977,4563,4574,4975] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [5827,5829,5830,5867,5905,5907,5836,5837,6043,6042,6011,6012,6062,6065,6067,5802,6076,6077] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [7325,7185,8703,8704,8705,8706,7557,7559,7182,7251,7183] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [8676,8681,8581,8587,8576,8578,8629,8627,8584,8586,7308,8697,7274,7310,7300] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [4765,2746,2748,2184,4761,2072,2222,2231,2739,2729,2741,2734,2223,2181] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3669,3820,3668,3639,3642,3843,3842] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        