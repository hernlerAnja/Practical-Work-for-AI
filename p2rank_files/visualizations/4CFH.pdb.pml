
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
        
        load "data/4CFH.pdb", protein
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
 
        load "data/4CFH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5689,6141,6155,4962,6142,6144,5565,5564,4960,4961,4963,5546,5547,5548,5549,5550,6150,5671,6136,6137,6153,5969,5958,5970,5973,5966,4972,4973,4296,4430,4955,4959,4971,4781,4782,4783,4952,5114,2457,2460,2471,5115,5116,6124,4297,6119,5112,5097,6143,4948,4941,6120,5096,5694,5696,5698,4443,4444,4445,4480,4479,4729,4731,5703,5716,5717,5688,5904,5699,5938,5926,5936,5939,5942,5900,5902,4295,4435,4436,4428,4429,4431,4452,4411,4451,2458,2459,5706,2496,2487,2488,2489,5670,5667] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3422,3415,3396,3400,3401,3402,3403,3409,5075,4110,4114,4126,5079,5082,3387,3391,5114,6127,2454,2455,2469,2470,2471,5115,4972,4973,4971,6129,2287,2289,5123,5125,5118,5148,5149,5150,5151,6128,5152,5073,5096,5078,5110,5111,5112,5113,5117,5095,5097,6126,2282,2284,5069,5071,2279,2280,3408,4281,4283,4288,4289,4300,4303,4293,4294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1198,117,106,109,113,115,116,1189,1187,1100,1188,1191,1192,1195,1196,1190,545,255,691,156,102,103,104,100,270,271,431,1197,269,674,675,157,1115,1116,715,700,1088,1095,724,726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3463,3467,3470,1465,1466,1251,3472,1984,1981,1983,1464,1975,1498,1016,983,982,1988,1989,1991,985,3456,3459,3460,3462,3478,1964,1947,1455,3285,3287,1940,1471,1472,1951,1950,3311] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6151,6290,6291,6255,6268,5360,5361,5362,6269,6282,6283,5106,4943,4939,4940,4941,4942,5558,5560,5561,5567,6256,5570,5555,5559,5546,6154,5566,4963,4964,6152,6153,5400,5395,5394,5396,5399] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2255,4064,2233,2234,2236,2237,2240,5198,4062,4066,4067,4065,4028,4059,4055,4057,4068,2235,2219,4030,2239,2257,2260,2254,2256,2309,2310,4097,4098,2275,3677,3690,3691,2296,2297,2298,2299,2300,2301,2302,3680,3678] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3642,3647,3192,3645,3654,5034,3189,3190,3191,5027,5028,3659,5013,5035,5047,5030,3502,3503,3638,3794,3176,3185,3802,3636,3637] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1568,1593,743,745,1594,1596,1083,770,772,779,771,741,1597,1607,1602,1609,1608] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1290,1292,1435,1293,2886,1302,1304,1283,1269,1271,1285,1275,1276,1279,1281,1282,3166,1277,3168,2887,1438,3041,3063,3246,3040,3042,3043,2885,3148,3512] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [5168,5169,5171,5206,3971,3972,5277,5278,5279,3970,5251,6051,5221,5222,5216,5219,5237,5172,5173,5142,6071,6072,5178,6079,5203] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3407,4273,4279,2476,4278,2504,2479,2480,3366,4119,3359,3358,3360,2500,2501,4259,4266,2512,2515,2509,2475,2508] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [5004,5005,5037,3770,3776,5009,4794,4811,4393,4796,4384,4386,4389,4390,4798,3777,3778,3779] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2571,2592,3545,4269,3567,3605,3750,3565,3589,3577,4243,4244,4268,4212,3550,3543,4276] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [6321,6340,5330,5334,5351,5267,5268,5265,5266,6347,6348,6320,6041,6329] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4408,4412,4413,4954,4782,4783,4952,4778,4779,4787,4430,4955,4961,4405,4797,4948,4941,4951,4411,4428,4429,4452,4443,4444] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2445,2444,2424,2514,2545,2522,2548,5932,5927,5928,5930,5929,5931,5933,2543,2406] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        