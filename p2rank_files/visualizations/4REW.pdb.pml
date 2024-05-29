
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
        
        load "data/4REW.pdb", protein
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
 
        load "data/4REW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5012,5011,4335,5014,5015,4997,5001,5002,5003,5004,5005,4995,4994,4996,4990,4983,2419,2422,5752,5756,2446,5156,2408,2410,2411,5751,5754,6189,6190,5736,5737,6202,6203,5765,5613,5614,6192,6194,2439,2440,2447,2412,5158,6167,6182,6183,6185,6191,6193,2393,2407,5718,5719,5984,5949,5950,5951,5952,5987,5710,5983,6018,6021,5994,6002,6006,4841,4844,5010,4847,4839,4476,4482,5747,5742,5744,4481,4483,5595,5746,2445,4449,4466,4468,4491,4821,4823,4490,4467,4517,4518,4770,4772,4781,4773,4805,5557,5592,5594,5568,5764,5943,4443,4446,4450,4744,4828,4833,4834,4820,4829,4742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1114,1115,717,699,713,714,678,254,692,156,98,99,100,102,103,1187,1188,1190,1191,1194,1099,543,1189,673,674,724,1087,1197,155,116,115] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [5613,5614,5615,5609,6194,4988,5603,6203,6328,6326,6327,6314,6315,6362,6329,5437,6300,5408,5410,5431,5619,5618,6335,6336,6337,5407,5409,6299,6301,4948,4956,4981,4982,4983,4985,5005,5006,5148,4954,5593,5594,5596,5602,5606,5607,5448,5444,5447] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [6090,6120,6394,6088,5378,5397,5399,5382,6118,6119,6374,6341,6344,6375,5214,5215,5218,6397,6366,6367,5316,5318,5325,5326,5313,5221,4009,4011] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3120,3186,3188,3184,5073,5076,3830,3904,3195,5089,5104,5055,5077,3829,3833,3835,3836,3696,3183,3133,3126,3129,3841,3842,5069,5071,3849,3848,3853,3855,3859,3838,3839,3132,3136] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [3595,3596,3597,5138,5139,5154,4319,4327,2421,4332,4333,5015,3609,5111,5113,5115,5120,4342,5121,5124,4321,4325,5167] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1977,3656,1972,1976,1935,1940,1959,1960,3649,3653,3654,3479,1459,1460,3481,1466,1469,3664,1250,1985,982,1970,1973,980,981,3475,3473,3505,1945,3476,3636,3546] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [2556,2561,2562,2563,2565,3735,3736,3742,2534,2539,3747,2541,3732,3285,3286,3287,3790,3791,3792,3309,2579,3283,3314,3317,3752,3754,3308,2555,2533,3731] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1276,2823,2825,2826,3108,2984,3003,1303,1304,1432,1433,3439,3440,3441,2794,2795,2796,1285,1268,1301,1302,1279,1278,1282,1280,1281] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2527,3740,3799,4315,3943,3944,3945,4314,2526,3738,3739,2498,2511,3764,3768,3771,3757,3744,3759,4305,4307,4282,4306,4274,3926] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1556,1758,1871,1773,1776,1785,1782,1585,1578,1848,1850,1842,1811,1812,1807] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [740,742,744,778,772,771,1589,774,1563,1082] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3601,4157,4310,4311,4316,2513,2514,3541,3553,3554,3525,3561,3625,2463,2465,2429,2428,2426,4317,3565,3560,4304,2452,2484,2512] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [2564,2579,2573,2638,3309,3079,3310,3312,2637,2664,2562,2563,2565,3285,3286,2580,3308,3283,3077,3078] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [2243,2248,2250,2249,5237,5235,5239,5241,5231,2292,5201,5196,2245,5227,5203,2280,2282,4103,2294,4102,4106] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2273,2274,2279,2281,5167,5191,5190,2265,2268,2269,5192,5194,3590,6176,3594,3595,3597,5165,6177,5153,5160,5152,5154] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5079,5081,5043,5046,5057,5060,3155,4431,3165,3166,4423,3173,4840,4853,4427] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1198,1202,1187,1188,1191,462,659,673,674,268,270] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [4277,4279,4239,4263,4660,4500,5841] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        