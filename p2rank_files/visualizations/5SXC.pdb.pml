
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
        
        load "data/5SXC.pdb", protein
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
 
        load "data/5SXC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5371,5372,5373,5374,5375,5376,5377,5057,5065,6119,6128,6129,6621,6588,6620,6647,6648,6649,5094,5422,6591,6592,6823,5423,6590,6614,6808,6811,6814,6815,6612,6798,6791,5059,5061,5054,5055,5087,5083,5340,6130] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [7544,6948,6972,6973,6257,6258,6259,6302,6303,6271,6272,6584,7549,7551,7541,7543,7545,6519,6520,6883,6881,6500,6882,6887,6898,6325,6900,7461,6929,6931,7462,6903,6799,6904,6906,7526,6802,6804,6800,6805] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [5459,5458,5464,5465,5468,5470,6840,6843,6847,6850,5444,173,177,178,5773,5804,5805,6851,6863,6527,156,5713,5717,5747,5749,5748,5774,5412,6834,898,899,1134,5439,5440,1136,5435,5460,749] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3572,3574,3710,3709,9264,9265,3581,3582,3579,3590,3591,3594,3595,3596,9332,3718,3722,3725,3750,5480,5497,5488,5490,9273,9297,9331,9305,9296,9258,9262,9271,9268,9272,9235,9232,9234] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [3566,3572,8161,8204,8199,3590,3591,3594,3595,3596,3579,3581,3582,5480,5495,5496,5497,8145,8151,8153,8156,8157,8160,9235,3399,3396,3676,3659,3658,3679,3683,3684,3670,3673,5160] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [6101,6136,6102,6135,6159,6162,6137,5673,5674,5675,5332,5333,5643,5645,1492,5637,5633,1495,1494,1504,1506,2564,2571,2234,2551,2552,2555] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [6682,6683,6684,6722,6723,6714,6676,6766,6674,6675,6793,6646,1545,2355,2351,2353,2380,1615,2381,2382,2350,2378,2387,2388,2391,2392,2379,2413,2411,2412] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [3426,3422,3544,3420,3692,1239,1240,3429,5183,5188,5190,3457,3450,3453,5176,1224,1223,3531,5518,5519,3694,3697,3702,3689,5201] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [9204,9193,7637,7638,7639,9205,9164,10103,10105,9165,9130,9132,3600,3610,3624,10081,10082,3608,7640,7641,3627,10137] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [2356,2357,2362,2364,2391,2392,6130,2242,2243,6131,2226,6153,6438,6439,6449,1529,6129,6152] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9263,9265,9986,3557,3564,3576,3580,3581,3582,3756,3757,10023,3577,3378,9985,3748,3750,3738,2812,2814,2830,3556,3387,3379] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [8228,8226,7640,7641,7631,8622,8623,3610,8649,8650,8648,8624,8237,8236,8210,8224,8225,8200,7638,8229] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [6491,6475,6479,6474,6891,6469,6476,6108,6120,6128,6150,6152,6890,6888,6889,6896,6449,6450,6445,6446,6447,6153] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [759,779,780,767,776,1106,1107,1146,1149,782,781,1077,1056,1059,1078,1081,1082,1072,1080,1152,1159,1163,1192,1164,1156,1073,1074,1076] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [4649,4673,4420,4024,4650,4652,4023,4106,4105,4107,4110,4640,4624,4118,4119,8940,8945,8946,8947,4593,4594,4595,4391,4392,4596] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5688,5724,5725,5727,847,1084,1085,844,845,846,819,5689,5691,1093,5726,882,840,843,1118,878,879,1096,822] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [225,9349,221,9894,9918,9888,9889,9892,9405,9921,9852,216,218,9346,9895,9348] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [8228,8226,7632,7631,8622,8623,8290,8587,8621,8624,8596,8600,8224,8225,8289,8236,7627,7629,7630,7633,7634,7662] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [5065,6681,6684,6723,5043,5066,5033,5034,5064,1544,2355,1546,1551,1552,1556] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [6582,6583,6584,7550,7551,7552,6538,6539,7564,7565,6544,7567] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5454,5446,6846,6548,6563,6564,6565,5472,5473,8163,5478,5479,5481,8160,8161] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4672,3994,3999,3998,4148,4160,3996,4152,4457,4458,4460,4462,4025,4106,4112,4429,4449,4450,4128,4122,4127,4027,4021] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2520,2521,2497,2486,2493,2175,2480,1746,1747,1748,1742,1745,2476,6396,1749,2492] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [6846,6849,6856,6548,6565,6545,5471,5473,6850,8163,9305,153] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [4573,4860,4307,4822,4847,8219,4308] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [3887,3253,4658,4629,3931,4692] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        