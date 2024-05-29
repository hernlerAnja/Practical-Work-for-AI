
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
        
        load "data/3LZB.pdb", protein
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
 
        load "data/3LZB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [334,135,184,185,186,333,331,335,137,690,695,692,318,1119,1120,560,562,1200,495,565,566,574,575,578,580,656,1219,696,697,699,672,674,164,1105,1209,1203,1202,1208,145,150,149,172,153,158,162,169,497,1232,658,143,133,140,727,722,726,1091,1118,1121,719,709,710,718,1092,1094,1093,4066,4068,146,134,751,748,750,4067] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4564,4565,5287,5317,5316,5396,4758,4918,5314,4922,4851,4852,4870,4869,4756,4888,4892,4874,5405,5428,5398,5399,5404,5415,4394,5292,5288,5265,5290,5291,5301,4854,4693,4694,4691,4379,4402,4371,4373,4376,4370,4415,4416,4363,4364,4365,4367,4891,4557,4561,4563,4886,4548,4923,4946,4906,4914,4915,4387,4388,4392,4380,4381,4383,4399,8235,8234] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [2305,2307,2452,2454,2455,2306,2816,2258,2439,2261,2260,2256,3242,2456,3321,3329,2777,2779,2683,2686,2687,2696,2820,3241,2795,2813,2817,2818,2819,2701,3212,2843,2847,2848,2871,2255,2830,2831,2839,2840,3239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [7488,6501,6502,6503,6644,7412,6966,6450,6854,6984,6452,6454,6987,6635,6982,6990,6991,6965,6988,6947,7018,7413,6457,7014,7410,6451,7001,7002,7010,7011,7019,7042,6652,7496,6651,6648,7490,6948,6950,7383,7397] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [3834,7985,8154,8158,8159,7965,7967,7964,3832,3833,3835,3838,3839,3671,7953,3650,3846,3857,3858,3809,8147,8151,8152,8113,8114,8109,8089,8085,8110,8118,8117,8108,3695,3689,3690,3700,3703,3813,3616,3675,3670,3774,3719] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [5881,5882,5883,5884,1590,1588,3955,3957,3958,1585,5871,1584,1586,4019,4020,4021,3946,3947,3985,3986,3943,3950,3918,5792,5794,5843,5846,5848,3921,3922,5821] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [5893,1712,6055,6062,6066,6067,6043,1715,6074,6060,6096,1719,5873,5861,5872,1718,6021,6022,6061,1574,1714,1687,1692,5875,1568,1579,1596,1598,1713,1709] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [8235,8234,4387,4383,5468,5751,5753,4939,5466,5446,5449,5481,5480,5701,5445,5292,5432,5290,5291,5762] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [2583,2588,2560,2562,2558,2561,2618,2619,2722,2780,2779,2470,2472,2761,2762,2763,2511,3349,2477,2486,2490,2493] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [437,440,365,369,640,641,642,439,441,498,1224,1226,1227,1231,1232,658,351,356,659,383,405] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4875,4877,4878,8507,4879,8488,5332,5333,5365,5381,5382,4730,4733,4759,4763,4765,4724,4749] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [3323,2456,3321,3329,2777,2779,2686,2687,2695,2696,2795,2699,2701,3324,3352,2618,2619,2452,2454,2616,2681,3340,3341] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [6668,6951,6933,6789,6790,6732,7514,7519,7520,6698,7515,6682,6694,6696,6731,6733,6686,6689] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [1558,1557,743,1285,1566,1284,1092,1094,1095,1096,1270,1563,1253,1555] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [25,8481,82,224,225,666,42,676,8460,670,671,588,312,313] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3809,8187,8153,5786,5800,5799,3843,3824,3836,3840,3913,3830,3912,3808,3813,3945] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [4408,4409,4426,4427,4574,4572,4573,7265,7267,4360,6812,4569,7291,7292,7290,7302,7295] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [7322,7329,7325,7501,7509,7510,7512,7504,6780,6782,6790,6788,6757] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4658,5420,4659,4635,4637,4631,4581,4855,4636,4838,4797,4633,4693,4694,5427,5428,4837] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [2630,3132,3133,3131,2629,2628,3098,104,194,196,197,105,102,107,109,110,100,101,124,130,116] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [2146,2351,2345,2346,2787,2433] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [1849,1435,1661,1469,1577,1851,1695,1706,1853] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        