
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
        
        load "data/4XS2.pdb", protein
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
 
        load "data/4XS2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5324,5354,5356,5319,5630,5638,5318,7542,5621,5628,5631,7519,7520,7521,7530,7537,7541,7518,7525,5345,5347,5348,5381,5382,8581,855,849,857,8580,7563,7565,5323,6374,5343,7600,7572,7573,6366,3084,5307,3076,5302,5640,5642,5245,7536,7856,7858,7859,7860,5203,5204,5626,7512,5301,5303,7839,7849,7848,7422,5294,5296,7421,6365] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3435,3437,7843,3102,3113,3114,3115,3118,3433,7842,7844,7835,7407,7880,7881,7867,7228,7229,7406,7012,4146,4147,7013,7395,3119,3149,3151,7267,7264,7220,7221,3138,7007,7008,7011,4152,4153,4155,7386,7387,7385,3096,3097,3098,3091,7866,3107,4126,4140,4133,4154,5287,3040,2998,7235] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4696,4740,4741,4742,5235,5209,5213,5238,4710,4711,4713,5185,4692,5178,5180,4828,5193,5199,5205,5206,5576,5600,5584,5676,5677,4844,5685,5683,4842,5161,5678,5679,5599,5166,5187,5601,5155,5157,5159,5068,5069,5070,4689,4690,4686,4687,4688,4694,4644,4645,4646] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5614,5618,5168,5173,5189,5622,5169,4809,7505,7507,891,1940,1942,875,888,922,923,924,892,5078,914,5617,869,870,871,862,868,5648,5649,5663,5075,5077,5043,1197,1198,1206,1208,1210,950,5040,5031,5032,771,864,813,5046,5196,5177,4813,4814,4815,1933,1934,5194,5195,5625] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7400,7398,7403,7396,6904,6906,6907,6908,6909,6912,6915,6901,6902,6878,6903,7894,7817,7818,7819,7895,7794,7802,7404,7373,7384,7374,7375,7377,7379,7026,7897,7042,7900,7903,6940,7038,7039,7040,6922,6939,7896,7259,7431,7432,7456,7411,7423,7424] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [777,781,1144,1168,1152,1244,1245,744,750,753,754,774,775,1167,1169,755,608,246,225,226,227,228,232,233,234,236,218,229,230,231,746,748,773,815,782,803,806,853,845,280,726,728,281,379,724,729,607,609,727,1246,1247,1253,245,1251,1250,367,734,723] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2485,2486,3395,3371,3379,3396,3471,3472,2973,2975,2977,2980,3004,3008,3030,3033,3072,2988,3000,3001,3002,3042,3080,2488,2490,2484,2487,2491,2539,2540,2952,2954,2640,2956,3473,2504,2505,2507,3474,3477,3478,3480,2626,2950,2835] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7278,7281,7284,7280,6730,6731,6710,4452,6696,6705,6709,7279,6983,6992,3140,3142,3173,3174,3198,4453,4454,6686,3135,3138,7005,7007,7006,7283,3143,7268,3167,4450,4455,3168,4443,4186,4187,4444,4151,3126,3128,4167] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [6614,6616,6590,6591,1194,5453,5446,5483,5484,763,1190,1191,762,741,354,6650,5037,5038,5423,5424,5426,5425,5047,736,349,337,343,348] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4477,2237,2239,2240,2242,2231,5079,5095,908,910,911,913,915,916,940,941,5089,4473,5090,5091,1938,4807,4808,899,901,1954,1955,1973,1974,5094,5092,4480,4461,946,971,4793,4786,4822,4785] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8831,7664,7702,8806,2989,2990,2991,2968,3420,7700,7701,7236,3417,3419,7644,7227,7641,7642,3421,7671,7673] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [8271,8278,8564,8565,8286,1916,7479,1918,1899,8563,827,829,1631,1646,1624,1639,8546,830,8293,7477,7480] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [8515,8523,8526,8528,1680,1683,1679,1665,1666,8285,8286,8339,8313,8338,8271,8565,8555,8556,8521,8293] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [7926,7042,7901,7902,7903,7041,6922,6923,7114,7118,7121,7057,7059,7091,7056,7065,7916,7767] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3057,3844,4131,6348,4129,4130,5261,3054,3056,6056,6062,6063,6071,5262,6331,6349,6350,5259] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [761,771,864,5406,5426,5046,5054,5055,5047,5045,1210,871,862,5644,5648,5635,5377,5649,5379,5380,5382] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [6063,6065,6070,6071,6078,6123,6124,3893,3894,3896,6311,6313,3892,3877,3879,3878,6098,6300] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6098,6111,6112,6097,6113,3879,3851,3904,3905,4081,4092,4094,6115,6117,3852,3844,3859,6078] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [8312,8327,8330,1918,8311,8313,1631,1646,1624,1666,1692,1639,1638,1909,8292,8293] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        