
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
        
        load "data/3TL5.pdb", protein
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
 
        load "data/3TL5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4983,4982,3448,4984,4985,4986,4987,5013,3450,4523,4524,973,1102,1128,1129,1131,1132,1133,4522,4925,3478,4961,4962,3755,472,3753,473,3720,3436,3437,3439,3440,3751,3754,4506,4508,4509,5140,5143,3752,4923,4926,4927,5146,3798,3799,5154,3750,5015,5016,5020,5008,5010,5011,5012,3449,5009,5047,5048,5049,5050,5051,1090,1153,553,1117,1119,1125,1086,1116,1152,1115,5077,543,545,3416,1089,1091,5123,5126,5125,5014,5083,5090,5107,1155,1156,5087,5088] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4633,4634,4646,5884,5876,5768,5277,5795,5796,5263,4877,4853,4854,4855,5218,4671,4834,4835,4693,4691,5132,5873,5875,5242,5133,5135,5217,5222,5236,5234,5239,5878,5881,5882] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [6328,6329,6360,2676,3250,6361,3244,3256,3257,6304,1617,3258,3255,3254,1627,3267,3269,2672,2909,2698,2664,2670,2665,2666,3220,2899,2900,2935,2936,2904,6415,6416] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [5325,5322,6773,6775,5756,5755,5291,5384,5385,5288,5292,5311,5313,5318,6738,5368,5369,5373,5361,5366,5367,5348,5312,5393,5347,6766,6747,6750,5383,5370,6781,6783,6784,5362,5349,5351,5770,5771,5772] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [4487,980,981,982,983,4032,4065,4066,4067,434,3711,435,1253,1254,1290,4031,4030,4033,1282,3706,3707,3709,4041,4034,4035,4039,4488,4527,4528,4532,4533,4552,4529,4057,1001,1003,450,452,453,979,3713] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [4945,6321,5722,5707,6323,6353,6442,6380,5908,5909,5899,6378,5888,5713,6465,6466,5715] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [235,240,198,216,207,209,208,217,3911,2309,2313,2317,188,194,200,2310,2311,2049,2055,2053,233,2074,3581,3580] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [3532,3860,4902,6365,2267,2281,2280,3861,2278,2023,2024,2287,3852,3855,3881,3879,3882,3850,2239,6382,6388,6392,6396,4885,6387,2226,6375,6376,6381] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3167,3178,3182,3184,3423,3424,3425,501,502,500,3176,3165,4996,5026,3461,5021,5017,5018,5019,5020,3185,6279,5058,6255,6257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [3716,3718,471,473,991,3720,992,979,989,990,1093,1096,449,450,451,452,453,4523,973,1102,4527,4528,4532,4533,4529,4530] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [3050,3283,3017,1901,1905,3046,3048,3300,2111,2494,2484,2495,1895,1872,1889,2485,2990,2991,3016,3018,2987,2994,3020,3023,3291,2072,2478,1907,2109] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [4524,973,4522,4521,4542,4543,4814,4508,4513,4800,5231,4804,5225,5226,5227,5224,5123,4816,4819] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [4477,4721,4572,4573,4403,4445,4121,4125,4126,4159,4150,4405] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [5118,5119,5241,5811,5226,5242,5107,1156,1162,1164,5595,5839,5594,5827,1133,1161,1163] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4524,972,973,4770,4782,970,958,4542,4543,4813,4815,4783,4795,4736,4737,4769,962,964,4766,4800,4804,4796,4803] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [1176,1177,4770,4774,4777,4778,1181,972,1103,1104,1132,970,971,958,4769,4543,962,964,4766] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [1594,2298,1595,1959,2289,1942,2285,1613,1616,1617,1618,2250,2254,2256] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [5788,5868,5787,5847,6001,5955,5948,5666,5958,5639] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5086,5089,5103,1151,5595,5621,5588,5591,5592,5622,5624,5626,5583,5585,577] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [581,584,585,636,592,593,588,1179,586,1172,634,1194,1147,630,628,633] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [668,686,687,689,671,1216,1218,4761,4776,4759,4760,4762,4764] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [5894,5895,4977,5658,5723,5684,5656] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        