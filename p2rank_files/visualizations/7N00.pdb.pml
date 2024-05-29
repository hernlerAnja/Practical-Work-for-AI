
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
        
        load "data/7N00.pdb", protein
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
 
        load "data/7N00.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [851,853,859,802,827,828,849,850,2535,2537,824,2519,811,806,809,2551,2536,2538,4572,4607,5614,5612,4599,2516,2497,860,861,862,2496,2688,2690,2695,2696,2697,2495,2491,4582,4583,4589,4586,4590,4593,4595,2552,2553,2554,2543,882,5668,5664,5666,4578,4579,4581,883,892,893,895,5645,5611,4580,5697,801] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [88,90,96,89,2125,2160,91,2152,72,5154,3243,3298,3300,3248,3249,3253,3256,3258,3274,3275,3296,3297,3306,2146,2148,2136,2139,2142,2143,104,105,106,107,5206,5208,5204,3329,3330,5237,2132,2133,2134] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5000,5013,5043,5074,5075,5076,5077,5078,5079,5045,5048,4992,5014,5015,5017,5018,5019,5016,4952,4951,4976,4993,4977,5307,5305,5273,5275,5306,5276] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5435,5455,5413,5414,5415,5441,5401,5402,5738,5537,5538,5539,5736,5767,5503,5766,5535,5536,5507,5508,5533,4820,5452,5453,5460,5475,5476,5477,5478,5479,5735,5765] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [33,24,2304,2299,2303,2220,5138,2210,2212,2216,2234,2222,2221,5134,2192,2193,5124,5132,5135,5136,2073,2302,2313,28,23,2191,2197,22,21] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [4519,5595,4518,4520,5596,5598,5597,4731,4732,4666,4667,4738,4679,4722,4657,4663,4659,4661,2891,2892,4723,4733,4736,4639,4640,4669] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [49,72,5154,69,50,41,48,30,44,248,249,250,3274,3296,3297,3306,3271,3307,3308,3309,243,241,3330,3339,3340,3341,3342,5208,5183,5185,5151] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [553,554,5257,5258,5254,5285,5293,5294,5295,5284,5286,5250,5252,5253,5317,579,581,5259,5260,2105,1316,2108,2109,2106,1313,1297,1309,1312] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5714,5744,5746,3000,3028,3001,3026,5719,5720,4552,5717,5718,3763,3744,5753,5754,5755,5777,4556,4553,4555,3760,3759,3756] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4639,4752,4749,5584,4669,4753,2471,4754,5592,5593,5594,5636,5635,5637,2480,4763,4638,2476,2477,2492,2468,2470,2475,5598,4667,4668,4644,4663] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2370,2371,5076,5078,5048,5018,5016,5118,5081,5084,5116,5087,5130] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2368,2370,2375,2296,2297,2298,5087,5129,5130,2353,5081,5084] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4460,4312,3942,3636,3637,3944,3620,3840,3838,3841,3864] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1189,1190,1173,1417,1495,1497,2013,1391,1394,1393,1865] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4746,4747,4748,5589,5590,4803,4812,4815,4818,5544,5548,5546] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2586,4082,4086,4099,4100,4020,4033,4034,3998,4002] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4014,3907,3910,4364,4368,3466,4371,3456,3461,3463,4124,4111,4119,4120] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        