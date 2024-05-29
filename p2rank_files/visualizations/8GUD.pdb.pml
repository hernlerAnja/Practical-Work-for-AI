
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
        
        load "data/8GUD.pdb", protein
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
 
        load "data/8GUD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5284,5287,5367,4599,4632,4633,5366,5368,4609,4610,4611,523,512,521,522,1050,1048,1047,3873,4955,5364,5267,5272,5274,5275,5283,5263,5123,5124,5125,1158,1156,1160,1162,5382,1033,4915,4913,1157,1163,1164,1166,1167,1169,1171,5400,4924,4922,5372,4950,4910,4909,4912,4911,4920,5391,1198,1199,1240,1242,3588,3870,3904,3907,3909,3586,3589,3590,3871,3872,5290,3906,3908,3905,3910,3956,5066,5068,5086,5088,5092,5093,5096,5291,3564,5087,5121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5770,5771,5772,5776,5753,5779,5741,5751,5754,6723,6729,6722,6756,6754,6755,5781,6699,6701,6733,5728,6054,6048,6051,6053,6766,6085,6761,6764,6060,6062,6034,5755,6217,6218,6735,5742,5958,5957,5829,5830,5831,5936,5774] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5280,5382,5281,5947,5965,5962,5963,5966,5884,5858,5972,5974,5431,4752,4740,4783,4974,4975,4976,5359,4751,4737,4738,5357,5358,5363,5370,5379,4722,4803,4805,5374,5376,5425,5883,5405,5419,4996,5060,5973,4994,4995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4616,4581,4582,1041,486,498,500,488,489,1371,452,1368,1375,4167,4168,1365,1358,1363,4563,4206,4207,4208,4642,4170,4171,4174,4176,4178,3862,3863,4155,480,391,1387,1390,4162,4166,1380] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3734,2431,2434,2437,2438,3721,233,2196,4058,4060,4027,2271,2273,2245,2285,2286,2182,2195,2197,2231,2429,2426,2163,2428,2430,2161,2166,2167,2169,3723,4061,3709,2314,3733,218,224,225,230,2206,215,216,217,4048,4049,4052] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [5267,5272,5275,5263,5270,5123,5125,5122,537,539,1158,1189,1188,1160,538,5120,5150,5151,5152,5149,5157,5154,5190,5187,581,5186,551,5159,5160,1198,1199,1242,5245,1194,1195,1218,1219,607,1220,5900,5381,1157,5400,3599] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2407,2342,2338,2396,2327,6444,6447,6448,6437,3385,3693,2414,2415,2400,6439,2406,2410,2412,2413,6431,6432,6438,6440,3691,3386,2411,6486,4028,4029,2140,2313,4014,4013,2322,2323,3679,2421,4030,3682,3680,4036,3684] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3385,3693,2415,2400,2410,2412,3691,3688,3384,3411,3410,2040,2041,1729,2027,2042,3386,6505,6507,3394,2411,6497,2409,1730,1728,1731,1733,6486,6493,3679,2417,3707,3710,2423,2429,3713] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4306,4307,4278,3970,3971,106,121,122,127,128,3993,4250,5325,3968,5310,5316,5319,3997,3998,4001] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5133,5134,5167,6337,3309,3323,3324,3325,6359,3573,3598,3574,545,5160,5156,5199,6339] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3706,3702,3705,3703,3750,3751,2018,2020,2021,3426,3724,2647,3755,2201,3719,3722,2223,3744,3738,2222,2224,3423,3425] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5040,5025,3978,5305,5306,5318,5041,3987,3988,4005,4006,4012,4014,4013,5022,5023,3627,3953,5038,5039,3979,3659,5301,5033,5024,6444,6448,6450,5028,5065,5067] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5280,5281,5962,5963,5968,5972,5359,5357,5358,5057,5292,4996,5060,5973,4994] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3393,3106,3392,3403,3105,3107,6505,6507,3394,3356,2851,2841,6508,2840,2865,2845] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5167,6337,3309,3323,3324,3325,6359,6324,6338,6339] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [992,977,1313,1312,436,438,440,435,1347,1081,1077] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3307,3309,6353,6357,6333,6359,6337,3331,3334,6349,6332,6340,6345,6352,6324,6331,6334] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        