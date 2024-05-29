
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
        
        load "data/5SXB.pdb", protein
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
 
        load "data/5SXB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5574,8263,8266,8267,8308,8309,8269,8303,5575,5579,5581,3818,5572,5573,3674,9446,9447,3687,8310,9509,9476,3815,9543,3699,3697,5583,9482,9483,9484,9485,9517,9508,3492,3672,3688,3752,3751,3710,8305,3665,3675,3803,3802,3843,3667,3776,3777,5589,5590,8251,8257,8259,3811,5240,3769,3772,3763,3766,3764,5253] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6350,6351,6395,6592,6396,6352,7637,7555,7554,7065,7041,6976,6612,6974,6613,6677,6898,7639,7638,7634,7636,6418,6593,6987,6991,6993,7024,6996,7022,6980,6893,6895,6897,7618,6975,7529,6364,6365,7642,7643,7644,7645] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [2409,2408,5432,5465,5466,5467,5468,5469,5470,5433,6212,6221,6223,6222,6224,5148,5149,5152,5150,5158,2410,6713,6714,6705,6742,6739,6740,6741,6709,5515,5516,5187,6907,6681,6901,6884,6904,5154,5180,5156] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [5867,5866,232,6620,6939,6956,6621,5898,5806,5810,5840,5841,5842,5838,5839,6931,239,952,953,954,1173,1174,951,5553,5557,5561,1191,5528,5537,5563,6933,6936,802,804,5531,5532,5533,5811,1167,1189,5505,6927,228,233,5897,206,6940] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [5766,5768,5426,1549,1550,1561,1547,1557,1559,5767,6252,6255,2289,5722,5726,1560,2607,2610,2619,2606,2625,2626,2623,5738,6229,6230,5730,6194,6195,6228] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [7725,8395,8396,7722,7724,7757,7758,7759,3703,7731,7732,7733,8337,8342,8306,7730,7720,7726,7727,7704,7706,8330,8331,8336,8316,8332,8334,8335,8752,8715,8714,8716,8750,8751,8753,8779,8725,8749,8729] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [8707,8430,8431,4416,8708,8709,8420,8426,8428,8429,8846,8851,8834,8835,8841,4395,4383,4384,8876,8878,8967,8966,8849,4385,4386,4421,4468,8950,4441,8909,8887,8910] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [3849,3480,3472,3657,3669,3670,3471,10282,3850,2899,3843,10209,10246,9475,9477,10281,10244,10245,2902,3673,10274,10302,10208] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [8962,8973,9039,8918,9119,8957,9047,9073,9075] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [3692,3693,3701,9407,10305,3703,7731,7732,7733,7734,10360,9342,10326,10327,10328,7729,9405,9416,9417,9344,9376,9377,3716,3717,3718,3720,10334] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [2446,2447,6223,6236,6224,6245,6246,6542,1584,6531,6532,2415,2417,2419,2281,2298,2412] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [1294,5294,5611,1277,1278,1279,5276,5269,3785,3790,3782,3787,3546,3522,3550,5281,5287,5292,5612] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [5564,5566,6941,6942,6943,6638,6639,6640,6641,6658,6949,5574,8266,8267,8269,5571,5572,5565,6656,6657,5547] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [6584,6567,6984,6538,6539,6540,6542,6543,6537,6556,6569,6562,6221,6243,6245,6246,6983,6572,6989,6982,6985,6213,6215] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [1600,2406,2407,2408,6805,6806,6807,1670,2436,2437,6859,6860,2466,2467,2447,6775,6777,6776,6815,6767,6768,6766,6769] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [5785,5790,5791,5818,5820,5819,6145,6146,6147,6150,900,901,902,1140,877,899,892,895,1151,1139,5781,1172,1173,1174,1170,934] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [9560,10102,10103,10111,10112,10115,10116,10117,10118,10144,10075,9561,276,271,273,280,984,9616,9617,9558,9549] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3759,3725,3726,3728,3758,3767,3727,8315,8316,8334,8335,3710,8779,8776,8777,8778,8775] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [1162,1163,1164,1168,1204,803,837,785,835,834,1165,1189,802,804,796,801,953,954,1171,784,950,1135,1133,1137] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [4733,4736,4107,4137,4138,4211,4212,4203,4742,4513,4717,4745,4766,4116,4117,4115,4516] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [3058,3059,3060,4477,4663,4667,4476,8929,8940,8942,3064,4677,4682,4696,4671,4475,4450,4689,4687,4688,4685,4686] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [3575,4986,4983,4996,5317,3553,5265,5307,5298,5270,4987,4970,5282,3348,5284,3345,3347,5266] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [5136,6816,1606,6775,6777,1599,6776,5155,5123,5127,5159,5157,5158,2410,5126] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [4524,4492,4494,4280,4191,4193,4218,4207,4333,4216,4533,4534,4232,4233,4307,4523,4306] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [6968,5858,6585,6186,6448,6187,6262] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [7033,7034,7098,7227,7266,7097,7225,7096,7579] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [7954,8580,8599,7957,7958,7959,8582,7880,7853,7854,7947,8579,8006,7881] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        