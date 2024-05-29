
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
        
        load "data/6AAK.pdb", protein
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
 
        load "data/6AAK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5657,4856,5633,5709,5711,5712,5715,5716,7499,7500,5717,5653,5647,5652,5636,5639,5640,5641,4827,4828,5744,8650,8652,8618,8619,8621,8626,8627,5672,5656,5671,5700,7120,5677,7109,7119,7100,7101,7117,7102,7498,7497,7522,7523,7526,7527,7528,7530,7515,7516,7518,7519,7521,7550,7551,4817,4787,4818,5736,5742,5743,5745,7520,7712] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4732,5074,5075,4594,4595,4596,5079,5514,5515,4718,4547,4549,4550,5097,5100,5091,5093,5086,4865,5599,5592,5595,5597,5591,5590,4546,5119,5122,5126,4545,4551,4552,4553,4555,5596,5598,5498,5484] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3279,2342,2481,2621,3371,3372,3373,3376,3377,3378,3379,3380,2864,2654,2725,2859,2860,2340,2285,2286,2288,2289,2291,2341,2467,2876,3386,2653,2904,2907,2911,3296,2885,2871,2878,2880,2882,2912,3295,2726,3265,3274,2483] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [651,652,434,1165,158,160,1166,1171,1072,1169,1170,1172,299,1164,1088,703,1058,1067,1069,1089,704,656,116,118,119,159,114,115,120,121,285,696,699,663,674,668,670,672,677,685,695] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [4580,4561,4573,4576,4578,5596,5598,5462,5487,5488,5498,4582,4583,4553,4555,4557,4558,4560,5621,5619,5620,5760,5766,5774,5452,5744,4864,5613,5595,5597,5611,5612,4734,5635,4823,4825,4826,4828,4829,4833,4835,4733,4751,4596,5716,5634,4796,4797,5743,5745] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [3402,2482,2483,3394,2500,2578,2582,2583,2322,2319,2549,2550,2546,2548,2581,2324,3543,3547,2303,2304,2307,2315,2331,2332,2328,2330,2326,2327,2342,3378,3379,3243,2292,2291,3400,3392,3393,3552,3401] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [7289,7668,7667,7637,7743,6719,7282,7263,6759,7751,7748,7749,6757,6714,6715,6716,6718,6758,7237,7238,7242,6879,7260,7256,7744,7646,7745] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3437,3438,3454,864,889,895,898,510,511,513,523,524,1133,1134,1135,521,522,3505,3495,3496,3499,3500,3493,918,919,920,3461,3434,3440] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [6748,6759,7751,7749,6894,6895,6744,6745,6746,6747,6743,6909,6742,6723,6729,6730,6733,6738,7750,7765,7766,7029,7764,6987,6959,6991,7615,7773,7772,7774,7651] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [160,1171,1170,1172,300,301,126,130,131,144,145,146,147,148,318,143,134,122,124,125,121,1193,1185,433,1186,1187,1195,395,361,391,363,1036] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [8636,4872,4882,8608,4907,5008,5009,5022,5024,5026,5040,4437,4436,5041,8575,8578,4848,8558,8574] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [964,1485,1486,2086,2088,1480,1481,1482,1484,1518,2569,965,966,2103,2104,2095,937,2568,2600,1497] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7913,7915,7928,7929,7639,7640,7899,7898,8188,8137,8216,8224,8140,7345,8180,8181,8182,8183,8184,7305,7304,7638,8217,8230,8229,8198,8225] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3591,3806,3262,3266,3846,2926,2927,2928,2929,3849,3559,3268,3269,3270,3267,3558,3897,3576,3592,3881,3884,3885,3860,3863,3864,3847,3848] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2628,2768,2596,2638,2769,2786,2597,2599,2601,2825,2784,2826,2076,2079,2109,2661,2663] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [8582,8585,7508,8587,8591,8594,8596,7514,8603,4815,4816,7516,8040,8041,8026,8028,8029,8030,7543,7544,7545,7546,7547] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [6103,6108,6095,6096,6109,6060,6062,5142,5144,6020,6063,5487,5489,5773,5485,5486,5805,5806] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [719,1596,1671,1672,1679,1684,1685,721,1061,1349,1381,1382,1644,1638,1636,1639,1640,1593] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [3737,3740,4252,4253,3923,4108,3572,4070,4069] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [7934,8071,8072,8255,8074,8344,8515,8516,8376,8341] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6133,6134,6291,6292,6286,5786,6424,5951,6423,5954,6421] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [1530,1387,1527,1837,1362,1710,2018,2020] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5656,5671,7476,7479,7500,5653,5659,7470] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        