
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
        
        load "data/5KX8.pdb", protein
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
 
        load "data/5KX8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [886,893,910,941,905,906,909,887,888,889,1226,1228,940,942,1224,880,882,789,831,5709,5215,5236,5077,5710,5095,5096,5093,5094,5695,5696,5661,5662,5664,5064,5050,1216,968,7591,7597,1952,4819,1958,1960,1957,5670,5669,7599,1951,5672,1931,1938,1945,5243,5220,5235,5224,4823,5242] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [7692,7940,7629,7630,7633,7634,7664,7665,7666,7610,7617,5668,5675,7611,7612,7613,7628,7513,7948,7950,7952,5673,5366,5367,5370,5371,3091,5354,5401,5365,5403,5685,5687,5689,5347,5349,7931,5250,7938,7941,7933,7514,5350,5392,5394,5395,5427,5429,5677,8659,8672,873,875,8652,8673,7655,7657,7658,6412,7690,6418,6419,6420,6421,6406,6413,3089] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5282,5256,5260,5261,5285,4699,4697,4698,4704,4705,4751,4752,5623,5647,5648,5088,5723,5724,5725,5204,5207,5206,5208,4852,5624,4710,4708,4709,4716,4717,4853,4720,4724,4738,4735,5631,5731,4854,5732,5324,5332,5232,5229,4700,4701,4702,5225,5202,5203,4838,5247,5294,5240,5246,5252,5253,4655,4656,5086,5087,5205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2477,2518,2519,2520,2521,2522,2523,2524,2572,2573,2525,3403,2659,3378,3402,2841,2842,2843,3478,3479,2473,2474,2674,2957,2958,2959,2960,2961,2962,2963,2675,3049,3007,3008,3011,3015,3037,3016,3079,3040,3087,3379,3386,2531,2538,3485,3487,2594,2980,2982,2987,2989,2968,2995,2476] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3158,7972,7973,7340,7478,7498,7499,7480,7483,7092,7487,7089,7093,7924,7925,7927,7937,7958,7959,7505,7928,7932,7506,3148,7358,7359,7356,7479,7088,3104,3102,3103,3105,3109,5334,5336,7935,4156,4157,4150,3122,3157,3126,3156,3125,3145,4163,4164,4165,4162,7692,4143,3005,3440,3442,3444,7327,7328,7691,7313,3432,3182,3096,3098] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [752,768,772,773,1187,1186,626,244,246,247,248,251,254,257,1162,1170,1262,1263,245,250,863,824,799,800,779,792,771,791,795,201,871,385,298,299,742,744,746,400,266,268,1271,741,833] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7351,7986,7988,7911,7910,7987,7019,7020,7021,6966,6968,6973,6974,7894,7995,6979,6976,7519,7523,7524,7886,7887,7548,6967,7476,7492,7107,7488,6969,6970,6971,7350,7349,7497,7495,7503,7515,7516,7467,7470,7122,7469,7471,7545,7557,7587,7595] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3205,4464,4465,4460,4462,4463,7072,7073,7087,4161,3144,3174,3180,3142,3145,6756,6742,6743,6752,7372,6759,6761,6778,6733,3149,3147,7376,7370,7373,7375,7086,7088,7064,3133,3135,4197,4177,4454,4196,3175] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [780,5470,781,5065,5055,5056,1209,1210,5500,5502,1212,763,754,759,333,6697,367,371,372,765,5471,5473,779,361,366,5453,5063,5064,5073,5072,5696,789,5469,5493,6663,5530,5531,6637,6638] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [7756,8897,8898,3427,3428,7792,7793,7794,2996,2997,2998,2975,8957,8921,8923,8922,2646,7318,7319,7733,7732,3424,7761,7734,7736,7326,7328,3426,7763,7765,2629] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [929,931,933,926,2255,2257,928,2258,2260,917,919,2249,958,989,2259,964,5113,5110,4487,4488,4490,5109,1991,4817,4818,4819,4793,4795,1956,4794,4805,4801,1972,1992,5112,4832,4796,4489,4491,4509] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4708,4709,4716,4717,4853,4720,4724,4738,4735,5624,5613,5612,5631,5596,5731,4854,5732,4730,5623,4752,5860,5861,4732,4734,4721] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1649,1664,1657,1642,8363,8378,8655,8656,8657,8654,845,847,848,1917,1936,8638,8370,8385,7571,7572,1934] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8363,8615,8607,8613,8647,8648,8378,8657,1698,1701,1683,1684,1697,8618,8620,8377,8439,8370,8385,8405,8430,8431,8432,8429] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [8405,1926,1927,1886,1892,1894,1906,8404,8418,8419,8422,8424,1649,1664,1657,1642,1936,1656,1709,1710,1897,1899,1684,1708] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3854,3862,4139,4140,4141,5308,6103,6110,6118,6378,6395,6396,6397,5300,5306,3061,3064,3063] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6117,6171,6170,6145,3889,6179,6118,6353,6355,6358,6347,3903,3904,3906,3888,6360] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2692,3500,2698,2544,2542,3484,3482,3483,3499,3503,2549,2552,3508,2739] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        