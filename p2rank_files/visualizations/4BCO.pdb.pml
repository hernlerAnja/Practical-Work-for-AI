
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
        
        load "data/4BCO.pdb", protein
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
 
        load "data/4BCO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [686,687,688,694,248,670,685,92,93,146,89,94,95,727,650,667,147,96,643,664,264,265,263,1159,1163,1070,1164,1166,108,101,642,644,641,508,509,405,1158,645,646,1058,1065,698,1086,1087,701,1059] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [4639,4581,4584,5208,4590,4592,4593,4600,5150,5167,5593,5594,5170,5665,5565,5572,5205,4585,4638,4588,4748,5162,4587,5140,5141,5142,5144,4764,4765,4905,5143,5145,5146,5009,5008,5666,5667,5670,5671,5673,4761] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2998,3007,3008,5031,4728,4533,4534,5134,5057,4692,3417,4523,4496,5039,5042,3449,3438,3440,5030] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [542,7666,7689,192,228,7256,7257,31,530,1,4,6,41,42,242,539,531,533,634,7698,7687] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3528,3529,3530,3563,3564,3565,2859,1251,1252,1253,1236,1243,3594,3596,3680,3683,3659,2875,2877,2873,2874,3169,3170,1209,1273,1275,1213,1214,1222,1223,3536,3537,3538,3539,3532,1210,2869,2865,2866,2861,3710,3711,3685,2868,3690,4381,4383,4374,4395] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [516,481,484,2348,2349,7263,7262,6911,6912,6910,229,651,654,656,659,1115,1116,1100,1103,233,683,684,226,494,1145,1128,1144,6893,6889,6891,6892] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [3407,3440,3442,3405,564,3406,3408,566,567,3410,343,344,346,298,300,320,297,4493,4494,578,585,588,590,3376,4522,4523,3378,3380,4495,4496,4514,3369] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5652,5159,5183,5607,5610,5173,5172,2661,5623,6631,5651,5635,4983,5154,4981,4984] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3857,3856,3516,3878,3522,3757,3765,2899,2896,2897,2571,2930,2588,2589,2923,2924,2927,3804,3805,3834,3505,3510,2546,2921,3755,3759,2958,3820] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2423,2417,2420,2199,2195,2193,1450,1440,2189,2190,2188,1246,1441,1439,1240,1466,1472,1451,1461,1465,1467,1474,2223,2229,2232,2212,1499,1475,1478,2427,2426] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1450,1427,1440,2189,2190,1835,1875,1876,2191,2183,1830,1832,2198,1441,1439,1841,1846,1867,1848,1847] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7932,7960,7929,7812,7843,7845,7108,7114,7115,7778,7959,7117,5760,7814,7110] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [6837,7179,7172,7173,7176,8069,7170,7207,7145,8008,6966,8054,8064,8010,8053,6828,6824,6838,8066,7754,8105,8106,7146,7759,7764,8014,7771,8127,8006,8004,8055,8083] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5720,5721,5729,5730,7813,7814,5759,5760,5780,5782,7779,5743,5717,7126,7788,5716,7124,7125,7785,7786,7787,7122,7123,7418,7419,5715] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2645,2646,2647,2643,5016,5017,5018,4970,4973,4972,2997,2999,2996,2597,2598,2992,4969,4966,4967,4968] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [4892,4894,4865,5787,5788,5790,5792,7432,4870,5688,5690,5691,5692,5695,5808,5810,7454,7394,7423,7455] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6846,6894,6895,6896,6891,6892,6847,7241,7245,466,514,516,464,470,467,469,517,518] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [7656,31,7629,7627,7690,7691,19,7630,5,6,7654,5071,5078,5070,5076,5079] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [573,574,618,619,600,60,274,11,12] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [5972,5973,6480,5979,5753,5968,6672,6675,6676,5752,6470,5985,6469,6471,6475,5747] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7360,7530,7017,7026,7048,7049] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        