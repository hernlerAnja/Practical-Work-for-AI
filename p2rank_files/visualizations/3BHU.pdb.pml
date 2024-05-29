
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
        
        load "data/3BHU.pdb", protein
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
 
        load "data/3BHU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3510,3512,4573,565,568,576,579,581,4577,4578,583,587,582,586,4569,4570,4571,5142,3503,3502,3515,3504,3508,3520,3473,3475,3471,3472,3474,3470,4576,5143,4612,4613,4614,4603,3446,4602,4591,4594,3068,3482,4772,3441,5125,5126,5127,5128,5132,5137,5141,5144,5150,5116,3067,5220,5117,3058,4808,4822,3,4,5,563,8] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [4844,4845,4680,4681,4672,4673,4679,4717,4718,4719,5226,5227,5229,5231,4828,5095,5236,5745,5746,5749,5750,5752,5651,5656,5672,5744,4667,4668,4670,4661,4664,5313,5248,5253,5256,5272,5280,5673,5644,5284,5287,5645,5232,4665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [266,657,671,674,677,103,156,98,99,100,734,155,157,101,105,108,684,692,685,693,701,1167,515,1165,1166,516,1077,1170,1173,111,1094,1066,1072,1065,708,1093,138,283,407,651,652,653,648,650] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1259,1260,1262,2919,3596,3661,2936,3597,3633,3634,3635,3666,2933,1230,1229,1243,1250,1245,3632,3675,3727,3750,3752,3753,3754,3725,3728,3729,2935,2934,3229,3230,3608,3607,3609,1216,1217,1215,3781,2925,2926,2928,4458,4460,4446,4451,3600,3756,3778,3779,3780,3760,4472,2921] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [1110,1122,1123,7050,1116,690,1107,691,661,247,658,7051,663,666,251,670,7031,7022,7029,7030,7052,7402,7403,244,248,7418,252,254,480,488,491,492,2372,7034,7035,490,1152,501,1151,1135,523,525,662] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [5838,5839,5841,7248,7257,8103,8781,8783,8773,8774,5809,7958,7959,7919,7921,7920,7924,8105,5799,5800,5808,5861,5859,7988,7990,8084,8769,8771,5822,5824,7957,8080,8077,8078,8074,7250,7258,7254,7264,7265,7262,7931,7932,7930,7263,7558,7559] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1,546,547,548,549,537,641,7844,7396,7397,538,540,541,246,260,7387,9,10,52,210,7812] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [2433,2437,2221,2222,1847,2214,1434,1436,1889,2206,2207,1454,2452,1438,1442,2212,2443,2451,1397,1396,2213,1460,1450,1447,1861,1862,1863,1882,1856] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [5100,5237,5239,5240,2706,2702,2722,2723,2707,5069,5070,5730,5731,2721,5704,5245,5686,5689,5714,6727,5102,5120,4813,3074,4809] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [3683,3684,3685,3672,3674,2460,2509,2511,4131,2507,2514,2517,2518,2501,2470,2472,2503,2505,3671,4128,4124,4127,4096] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [3590,3592,3921,3926,3927,3827,3018,3890,3824,3825,3585,3835,2631,2648,2649,2990,2984,2987,2960,2956,2983,3574,3579,2632,2606,3904,3887,3874,3875,3885,3948] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [6841,6792,6838,6840,7994,7995,7996,7998,8007,8008,8009,6797,8006,8455,6839,7963,6850,6848,6847,8420,8421,8448,8451,8452] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [6977,8214,8198,8199,8208,8209,7347,8171,6961,6978,7319,7313,7316,7312,7310,7106,8155,7285,6935,6968,6964,8211,7898,8250,8251,8228,8272,7903,7909,7914,7916,7289,7906,7908,8159,8200,8148,8149,8151,6933,6936] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [6221,6355,6358,6366,6387,6388,6531,6501,6220,6408,6415,6381,6385] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [4951,4978,4980,5779,4952,4958,5767,5770,5769,5774,4940,4946,4943,4957,7563,7595,7572,7534,5867,5871,5869,5866,5904,5771] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [394,362,366,367,374,3205,1200,1188,1195,396,1292,3234,1288,3243,1290,1313,359,360,373,351,3210,3207,3209,338,3265,339,3266,3263,356] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [348,354,3433,3465,574,3471,3472,3470,318,345,3435,325,326,327,346,316,585,587,598,3434,3443,3446] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [2150,2152,2023,1994,1995,2151,1785,1993,2172,2173,2195,2184,2179,1835,1838,2186,2187,2174] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [40,41,24,7776,7773,7806,7807,7835,7800,5166,5162,5164,7837,5157,7801,7803] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5101,5102,5103,5104,5052,5053,5055,5056,3052,2657,2658,5100,5241,2706,2703,2707,5058,5066,5072,5059,5731] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [450,2563,946,948,950,980,981,982,970,971,2555,2556,2559,468,2593,2594,2554] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [7803,4929,4938,4878,4880,4896,5164,4894,7800,7764,7762,7763,7776,7773] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [3860,4304,4306,3871,4274,4278,4333,4340,2784,3849,3850,3851,4339,4341] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [7536,7594,7599,7595,7592,7538,4918,4924,7604,4951,4940,4946,4943] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [4569,4570,7837,5146,5147,5155,5156,5150,5152,5148,6,7,8,7833,1,2,3,4,5] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [5559,5560,5561,5525,5527,5529,6922,6923,6890,6892,5034,5048,5051,5052] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [4339,4337,3821,4350] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [2622,2633,3546,3547,3549,3561,3563,3564,2602,455,452,3550,3551,3552,442,440,441,447,2623] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [471,473,475,525,7035,7036,7381,7385,7387,7032,7388,6986,6987] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        