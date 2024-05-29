
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
        
        load "data/3TAX.pdb", protein
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
 
        load "data/3TAX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5578,5582,5581,4002,5583,4660,4650,2718,2719,4654,4656,4658,4259,5563,5567,5576,5577,4018,4020,4037,4039,4019,4021,1485,4637,1185,1183,1184,4001,3999,932,4265,948,950,1981,1951,1957,1958,1965,4664,4665,4666,1989,2693,3008,3020,3021,3010,1941,5554,5570,4257,4236,4513,4514,4516,4517,3978,4672,3992,5562,4472,4467,4481,4482,4485,4487,4489,4515,4693,5590,1460,1461,1462,2701,2714,2715,2720,2705,5588,5589,5593,916,1153,1154,1472,1471,5594,914,1469,1456,1470,1486,911,918,923,5609,5610,1443,5616,5618,1436,1440,1129,1130,1131,1426,654,888,889,1919,2699,5613,5614] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [7079,7081,11209,7075,7105,6772,7089,7090,7091,9621,9637,9639,9656,9658,10256,9638,9640,9613,9611,9855,9597,7062,11213,7088,7045,7059,7060,7049,11235,11237,6569,6802,6804,6532,6533,6535,6803,9620,9877,9878,9875,9879,9883,9885,9884,9876,6551,6553,6537,6539,6530,6273,6542,6543,11228,11229,6507,6508,6750,11212,11217,6749,6272,6248,6249,11230,11232,11233,6488,6244,6246,6247,6250,6481,6740,6716,6702,6704,6719,6717,6718,6480,11197,11200,11201,11208,11202,11207,7576,7577,11186,11191,11195,11196,11182,10108,10100,10101,10104,10106,10086,10091,10132,10134,10135,10136,10088,10131,10133,11189,11173,11181,11150,11152,8318,8320,8339,7080,8338,8337,8639,8640,10273,10274,10275,10277,8312,10284,10285,10291,10269,10279,10283,10312,7608,7584] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [8173,11221,11218,8201,8202,7296,8193,7271,7239,8180,11225,11231,11234,7242,7262,7264] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3816,3817,3718,3720,7683,3794,3797,3833,7682,3725,3727,3728,3729,3726,3694,3722,3717,3751,3695,3697,7663,7880,7644,7898,7684,3807,3808,7651,3800,3803,3804,7875,7878,7889] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [8350,8520,7102,7178,10421,7150,7174,7175,7176,7183,7153,8525,10422,10430,10419,10416,7068,7097,7098,8336,8341,10426,8344,8347,8330,8331,8535] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [2581,2582,2583,1677,5606,1645,5615,1620,1652,1623,5599,5600,5601,5602,2551,2554] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [1478,1557,1559,2902,2906,1529,1532,1534,1449,1450,1556,1531,2722,2725,2712,2717,2916,2917,2901,2728,2731,1483,4800,4802,4797,4803,4807] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [2256,2278,2279,2025,2261,2044,2063,2064,2065,9348,9346,9347,2032,9419,9423,9427,9345,9422,9436,2030,9336,9339] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [5613,5614,1098,1099,1100,1085,1083,1097,838,840,629,630,869,870,631,5616,5618,1130,1131,862,653,654,888,889] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1918,1919,2541,2535,2538,5584,2536,2701,2542,5589,1950,1951,1952,1965,5574,5582,5583] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [10199,10728,9560,10698,10699,10695,10696,9551,8847,8819,8829,8830,10760,10737,8837,8817,10730,10733,10736,10729] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [1140,1141,1010,1011,1139,1167,1266,1269,1270,1263,1116,1008,1030,1032,1033,1112,1114,1301,1063,1204,1205,1206,1225,1227,1235,1231,1232,1224,1272] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [4669,4670,4674,3993,4647,4673,4608,4752,3975,4593] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [5076,3941,5077,5080,3210,3198,3218,3228,3923,3924,3929,3930,3931,3932,3209,3204,3211,4580,3939,5109,5141,3200,3202,5079,3187,5118] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7659,8676,8677,8680,8673,8674,8675,10887,10880,10882,10875,10879,8682,3281,3272,3280,3806,3805] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [6627,6628,6629,6630,6758,6786,6651,6649,6731,6733,6920,6735,6888,6890,6889,6891] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [3055,8899,2040,5268,5274,3062,3063,3058,3061,2012,2038,2237,2265,2013,8900,8891,9424,9425,3056,3054,3057] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3771,3792,3060,3063,3064,2233,2237,2234,2235,2194,2196,2195,3767,2006,2007] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3626,3631,3632,10997,3634,10958,7677,3614,7711,7697,7698,10955,10960,10961,10964,10929,10967,10968] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [6609,6399,6497,6604,6472,6474,6375,6398,6638,6372,6396,6585] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [10289,10292,10317,9612,9594,10212] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [990,853,878,855,1019,1020,779,780] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2092,2079,2080,2081,5334,5336,5341,5342,5345,5346,5378,9244,9250,9251,9233,5310,5339,5348,5349] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2573,2498,2771,2736,2516,2763] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [7570,11208,7537,7538,7571,11203,8161,8154,8155] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [9958,9960,9985,9982,6829,6830,9680,9681,9679,9993] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        