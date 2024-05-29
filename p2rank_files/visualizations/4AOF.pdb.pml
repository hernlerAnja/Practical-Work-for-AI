
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
        
        load "data/4AOF.pdb", protein
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
 
        load "data/4AOF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4926,4928,4929,5065,5067,5072,1131,1132,1133,5081,5168,3409,4867,4892,4902,4903,5082,5085,4447,5088,5098,5096,4869,4950,4951,4957,4958,1156,4952,4993,5031,1129,1130,1154,1155,1163,4924,4960,4961,5019,5068,5042,5043,5049,4954,4955,5041,5044,4956,5030,5045,471,473,3651,472,973,3683,3685,4461,3402,3367,3368,3398,4904,3680,3684,4446,3681,3682,3686,3710,3728,3729,3730,3401,3371,1091,3346,3347,3348,1089,1090,1128,1086,3378,3380,3381,3355,4992,501,502,4991,1121,1117,1119] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5825,4602,5823,5824,5826,4600,4601,4819,4616,4617,4572,4573,4570,4639,4558,4637,5815,5817,5818,5799,5737,5738,5181,5205,5839,4818,5219,5242,4583,4584,4823,4860,4861,4862,4863,5075,5074,5078,5079,5159,5160,5182,5164,4779,4781,5178,5176,4834,4817,4780,4797,5184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5653,6246,6271,6279,6248,6249,4885,4887,6278,6304,6305,6306,6303,6313,4851,5830,5841,5843,5845,5848,5850,6368,5663,5664,5665,5649,5657] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3670,3636,3637,3971,980,982,983,3638,3640,3641,3642,1290,435,434,1253,1254,1259,451,452,453,1002,1003,991,979,3648,3647,3643,3644,4423,4426,4489,3997,3998,3963,1282,3961,3962,3964,4470,4471,4466,4467] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [3508,3510,230,235,3509,3511,3512,3839,198,242,236,213,239,240,3840,3843,188,206,208,209,2303,194,200,216,215,217,2041,2043,2047,2049,2304,232,234,233,3499,2062,2131,2075,2081,3877] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [6254,6255,6285,6343,2607,6286,6287,1611,2597,6341,6342,6376,6377,3175,3181,3188,3187,3189] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [5000,4992,501,502,3391,3392,3378,3380,3355,4962,3113,3323,3354,3100,3356,500,3332,3115,4960,4961] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2831,3148,3150,3199,2866,2867,3198,3200,2863,2667,1621,2668,2865,2629,2839,3175,3188,3185,3186,3187,3189,1603,1618,2611,2628,2627,2596,2841,2597,2607] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [731,733,807,806,732,838,810,661,935,936,647,663,841,839,1225] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [1447,1458,1463,1465,1466,1993,1995,2005,2224,1994,1715,1717,1719,1720,1467,1468,1718,1979,1483,1482,1515,1485] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [6183,3107,3109,5000,3391,3392,3355,4962,6205,3113,3354,3115,4968,4960,6182] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [4480,4750,4759,4682,4726,4727,4741,4728,4720,4724,4745,958,962,4716,972,963,964,4683,4715,4479,4481] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2273,2274,2275,4827,4825,4826,3788,3791,6291,3463,2272,4843,4844,4855,6298,6301,6302] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [3488,1907,1917,3193,3202,3205,3206,3467,2288,2289,2291,1588,1919,3179,1601,1600] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [5835,5597,5599,5625,5626,5621,5622,4919,4920] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [841,843,852,854,855,844,842,877,837,875,876,881,1223,680,681,682,1226] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [1144,627,1146,1147,1118,517,518,592,594,588,593,619,1058,1056,1059,550,581] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [3774,3777,127,3747,129,4071,4074,5120,5113,5116,4097,4098,4099,4065,3776] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [795,1018,1020,817,897,790,797,1247,905,911,408,443,926,928,913,914] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [3115,3322,3300,3386,3425,3426] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [5029,5030,5045,5028,5567,5565,5528,5044,5537,5031,1163,1151,541,5530,5533,5534,5523,5525] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [5880,5923,5581,5594,5789,5579] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [1012,935,1211,647,1053,1112] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3851,3511,3844,3848,3839,2305,3807] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        