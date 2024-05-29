
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
        
        load "data/5K7G.pdb", protein
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
 
        load "data/5K7G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7805,7813,7794,7795,8030,6875,6876,6878,6881,7415,7434,7829,7830,7442,7443,7414,7435,7405,7407,6870,6871,6872,6868,6869,6874,7467,6942,6825,7411,7422,6944,7409,7906,7814,7385,7386,7387,7388,7389,7390,7912,7914,7025,7913,6922,7009,6923,7023,6873,6921,6899,6902,6904,6905,6891,6892,6895,6909,6880,6887,6888,6897,6906,7395,7384,7905,7907,7911,7166,7908,7778,7926,7910,7930,7936,8021,8022,8023,8024,7268,7269,7270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5189,5552,5551,5559,5658,5659,5660,4655,4669,4770,5540,5541,5560,5776,5524,4648,4650,4633,4634,4637,4641,4645,4652,5212,5252,4620,4621,4627,4626,5181,5182,5184,5188,5213,4668,4614,4615,4616,4617,4667,5222,5249,5210,5211,5168,5180,5151,5157,5160,4755,4618,5153,5155,4619,5260,5575,5576,5131,5652,5132,5134,5136,5016,5130] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1126,1235,1115,1116,1134,1228,1099,244,245,247,249,250,256,257,260,239,241,242,237,238,290,1150,291,1151,292,1227,1226,728,730,732,735,736,716,737,378,705,706,707,708,709,710,711,391,392,393,487,394,1233,1229,271,273,278,266,275,755,756,763,788,743] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2439,2440,2487,2442,2473,2587,3365,3457,3458,2589,3465,3466,2730,2444,2445,2451,2452,2470,3330,3366,2995,3019,2994,3358,3346,3347,3357,2959,2961,2966,2434,2435,2436,2437,2573,2485,2486,2963,2936,2939,2947,3381,3382,2834,2508,2431,2432,2433,2937,2938,2940,2941,2942,2974,2986,2987,2990] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [7396,7397,7398,7399,6990,6994,6995,6996,7403,3162,3163,7271,7275,7276,7277,7278,7847,7425,7402,7851,7424,7855,7406,7417,7843,7844,7846,7856,7890,7891,7892,7877,7878,7240,3421,7259,7231,7232,7239,3411,7224,3409,7247,3101,3104,3105,4074,4075,4076,4073,3124,3125,3137,3131,3134,3135,3136,3133,3161,3082,3083,3084,3081,3088,5262,5264,4061,4066,4067,4068,3422,3416,3417,3419,3423,3075,3026,3077] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4736,4740,5148,5143,5149,5602,5593,5589,5590,5591,5597,5606,5170,5171,7518,7516,1895,1896,1897,873,870,1890,1903,1905,1876,1883,4737,5152,4741,4742,5600,5592,5624,4989,1191,1192,906,5024,5638,1189,4986,896,5023,5022,930,5623,852,851,853,1190,850,857,795,844,874,903,904,905,868,893,900,902,1180,1185,1186,1178,4993,753,932,5021,5163,5164,5637,4977,4978,5005] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [7548,5613,5615,5331,7529,7536,7547,5596,5605,5606,7530,7531,7532,7552,7553,7575,7577,7582,7583,7432,7433,7850,7867,7869,7871,5601,7525,7584,7611,7859,7857,7860,7853,7854,7855,7422,5321,5323,5356,5357,8576,839,831,853,8575,8581,8582,8584,5294,5298,5299,5318,5329,5276,3070,5282,5277,5278,5293,5617,5178,6327,6328,6330,6321,6322] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3112,3120,3121,3124,3125,3126,6989,6964,4088,3105,4076,4072,6988,4365,4371,4372,4373,4374,4376,4107,6975,4108,7397,7292,7294,7295,3128,6990,6965,6966,7003,6654,6658,7291,6659,6661,6660,6662,6663,6678,6680,6635] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4721,4734,4735,1901,881,1917,4736,4749,5040,5038,4712,4426,4405,4407,1936,1937,883,4711,4710,4718,2202,2203,2205,2194,2200,890,893,923,895,897,5041,5037,4404] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2463,3330,3366,2464,3327,2694,2465,3487,2451,2452,2455,2459,2470,2587,3365,2589,3463,3464,3465,3466,3462,2731,2487,2473,3346,3347,2467,3488] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [4984,5397,5421,5458,5428,6570,6572,6547,359,5459,4983,5000,5398,5399,5401,1174,1176,745,4991,4992,4993,744,1172,1173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2949,3406,3407,7712,7713,3403,3404,3405,7237,7238,7682,7680,2975,2976,7246,7254,7655,8826,7675,8801,8824,7653,7652,2543,2560,2954] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [5356,5357,5623,5624,853,4991,4993,5605,5606,5352,5001,5380,5381,5000,5401,5610,5619,5625,5353] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [8560,8266,8273,8279,8280,8281,8288,8333,8334,8308,1629,1642,8541,8543,8547,8548,8557,811] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [6304,6305,6306,3042,4051,5234,5236,5237,4050,3773,3765,4052,6019,6027] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1602,1878,1879,1880,1881,7490,8559,8560,8273,8281,1594,8558,811] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [4689,4690,4701,4703,4704,4705,4702,4700,6823,6841,6842,4699,4594,4590,4688] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5983,6398,6242,6015,6265,6148,5982,6184] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6306,6012,6287,6026,6027,6019,6034,3814,6079,6080,6054,3799,3800,3816] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [3773,3780,3758,3772,4033,4052,3800,3826,6067,6068,6071,6053,6054] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [1602,1587,1881,8322,8307,8308,8321,1609,1629,1655,1654,1594] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6856,6954,6955,6956,6957,6958,6959,6943,6944,4588,4569,4589,4590] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [496,433,642,643,461,469,495,19,629,630,631] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        