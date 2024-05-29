
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
        
        load "data/7CGA.pdb", protein
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
 
        load "data/7CGA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3990,4007,4254,4128,4123,3170,3171,3172,3335,4125,4126,4127,3032,3036,3027,3028,3059,6043,3630,3449,4115,4119,4114,4116,4018,4025,4118,3675,3069,3070,3155,3071,3020,3021,3026,3022,3024,3614,3370,3369,3653,4039,3657,3661,3662,3663,3664,3450,3649,3654,3644,3634,3645,3646,3647,3648,4164,4150,4226,4246,4249,3044,3294,3050,3051,3052,3053,3054,3039,3043,6068,6070,6072,4248,4247,6060,8226,4245,4260,4301,4262,4263,4591,4592,6044,6057,6058,6061,6037,3042,3323,3324,5379,3292,4162,4193,4194,3293,4223,7026,4227,4230,7018,7019,7022,4232,7016,4233,7017,6086,8211,7031,7032,7029,4219,4220,7100,7411,8212,6992,6993,6997,4610,4612,7002,4596,4599,6994,6998,5851,5852,5853,6093,6948,6963,6091,6092,6083,6084,6122,6123,6085,3269,3271,3273,7044,7025,7047,5842,5841,3262,7061,7391,7395,7398,3261,4217,4218,7409,4195,4198,4199,4200,4203,4201,3257,3258,3259,3285,3286,3287,7401,5411,5412,5413] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [9723,9724,9725,9616,9623,9716,9717,9261,9637,9247,8649,8651,9748,8770,9225,9228,9713,9232,9605,9273,9270,9260,9266,8625,8766,8619,8622,8624,8620,8668,8669,8753,9244,9242,8630,8633,8634,8635,8657,8769,8642,8646,8637,9227,9294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1317,1321,1322,1325,1326,1327,1226,1328,356,831,835,1320,271,225,845,847,222,223,227,897,849,1219,1319,858,861,863,864,865,875,850,1240,372,270,272,260,232,373,236,237,240,233,252] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6445,6447,5869,5870,5954,6433,6917,6918,6438,6443,6448,6428,6429,6495,5820,5825,5823,6473,6456,6461,6462,6463,6467,6452,6838,5967,5828,6817,6824,6920,5831,5970,6923,6924,6926] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2904,3180,3181,5684,5692,5702,5703,3179,2885,2903,5979,2892,2893,5980,6380,3209,3210,3207,5863,5859,5975,5984,3574,3575,3584,5687,5693,2918,2919,2888,3185,3060,3064,6006,6008,6009,2921,3203,3191,3196,3198,3202,5995,5997,6001,6002,5990,3573,5857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5830,5831,5834,5835,3238,5842,5838,5970,5971,6924,6926,5843,5847,5850,6925,3271,6789,7053,7045,7046,7048,7025,7041,7047,5852,5853,6946,6949,3234,3244,3245,6824,6805,6806,5825,5870,5828] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [579,580,3425,3426,3427,2770,2748,2749,2750,5278,5274,5275,551,3878,2740,2741,3843,5256,2738,3815,515,2734,2712,5271,2597,2598,2760,2736,2766,2767,3852,4086,2762,3817,4082,3423,5295,5299,3877,5267,5269,3422,3435,3850] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [9172,9173,9174,9182,8528,8529,8530,9181,8507,8779,9115,9152,5782,9106,9107,9156,9153,9122,8451,5790,5791,9125] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3817,2765,3814,3816,4067,4076,736,740,2726,2727,2729,2731,4077,3785,3786,723,4058,4065,4066,742,2700,2701,743,2702,3773,3774,3779,3780,3775,2699,2725,2733,3812,3813,730,733] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [1326,1327,1226,1328,1207,1208,1191,1455,1344,1348,1351,237,240,233,1342,252,254,244,1447] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [9588,9723,9724,9725,9623,8641,8649,8651,9745,9748,8770,9604,9605,9840,9844,8634,8635,8637] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7532,7533,7536,7575,7576,7574,4796,7166,7537,7913,7917,7923,7167,7904,7112,7122,7145,7899,7900,7901,7906,7912] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [2798,2788,2789,4071,4069,4070,723,2764,2729,2731,32,34,701,721,722,715,148,149,691,17,21,2756] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4644,4347,4783,4824,4614,4617,4619,4341,4343,4344,4785,4787,4772,7173,7174,7182,7183,4335,4607,7001,4801] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [5745,5746,5754,5618,5619,5621,5617,8395,5761,8404,8405,8436,8437,8438,8440,8441,8442,8439,8460,8463,8401] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7582,7600,7134,4375,4374,4202,7412,7413,7418,7406,4200,4384,4383,7601,7623,7443,7584,7586,7146] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [4290,4291,4555,4255,4273,4275,4276,4278,4015,4013,4014,4512,4513] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3894,3896,3897,3926,4416,5160,5167,5168,5156,5159,3928,4412,4423,5161] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [3210,5677,5685,5686,5814,5827,5867,5863,5717,5720,5679] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [7597,4368,7590,7595,4777,4380,4381,4366,7618,5124,5127,5118,5112,5114,5111,4390,4407,4393] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [551,552,553,2562,2560,2569,2570,2566,5277,5278,5290,5292,5294,5293,579,577,587,589,548] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4860,4857,4713,4886,4878,4882,4861,4651,4676,4905,4677] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [1764,1765,2179,2180,2257,2148,2150,1895,2170] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        