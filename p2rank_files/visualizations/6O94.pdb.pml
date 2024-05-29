
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
        
        load "data/6O94.pdb", protein
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
 
        load "data/6O94.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [264,252,254,256,257,263,245,297,298,834,838,839,1202,1201,1210,1226,1225,1301,1302,244,250,251,830,831,810,665,818,203,246,248,249,201,803,805,400,401,784,299,786,781,782,1309,1310,1303,783,785,385,780,442,267,268,1452,1190,1191,1172,1173,1174,443,281,1444,1446,1443,863,902,824,872,898,921,907,910] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2576,2568,2569,2575,2609,3503,3514,2557,2563,2564,2566,3502,3511,3521,3513,3538,3485,3613,3614,2611,3622,2713,3621,2579,2580,2592,2593,2590,3620,3486,3644,3115,3117,3123,3122,3119,2560,2561,2555,2558,2512,2513,2610,2697,3092,3093,3095,3097,3098,3124,3537,3103,3094,3764,3757,3758,3756,2754,2755,3755,3175,3184,3150,3151,3143,3144,3146,3222,3136,3142,3130,2514] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [7144,7102,7688,7689,7682,7768,7683,7730,7196,7197,7143,7149,7145,7147,7148,7665,7670,8083,8084,7692,7668,7643,7644,7284,7639,7640,7641,7649,8159,7523,7676,7661,7663,7721,7760,7150,7151,7153,7154,7155,7156,7162,8067,8160,8059,7696,7697,8060,7299,7300,8168,7198,8167,7163] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [4918,4916,4917,5421,5425,5426,5418,5450,4868,5013,5392,5394,5397,5404,5417,5405,5411,5447,5459,5893,5894,5378,5817,5818,5399,5369,5373,5367,5368,5370,5372,4863,4869,4865,4866,4867,4820,4864,4819,4821,5497,4939,4874,4875,4876,4882,4883,5794,5793,5028,5900,5901,5801,5902,4870,4871,4873] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [6094,1840,6732,6739,6743,5986,6132,6133,6134,6135,6754,6747,6752,6098,5964,5965,6755,6090,6091,6087,6088,5969,6763,5972,1808,1814,1815,1816,6119,1805,1841,1842,1843,1606,1607,1832,1834,2144,2122,2141,1782,1781,1817,6118,1849,1852,1813,1839,1771,1774,1777] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [8991,3840,3854,8657,8665,8689,8690,8692,8662,8688,8691,8663,8664,8666,8654,8681,8455,8456,4452,3818,3814,4467,4472,4473,4474,4483,3807,3808,3810,3811,3855,4475,3689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [8989,8392,9011,8351,9009,9010,8355,9004,8344,4104,4120,8375,8376,8377,4454,4455,4456,4128,4129,4155,3919,3809] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1728,1730,1729,4015,1703,4255,4257,4014,4244,4250,4252,4294,4000,4264,4283,4284,1743,1744,4076,1747,4216,4067,4068,4042,4088,4013,4022,4007] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [8623,8663,8664,8701,8743,8626,8666,8689,8662,8686,8688,8693,8687,8698,8726,8742,8744,8665,3855,4475,3705,3853,3684,3685,3689,3690,3691,4474,4483,3692] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [1938,4041,4042,4056,4059,1932,1945,1947,4055,1730,1710,4015,1702,1756,1757,1703,1943,1940,1688,1695,1982,1755,1776] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [1981,884,886,4294,4292,4293,1688,1695,1982,887,1710,1703,3198,3199,4007,3196] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [4899,4900,4897,5801,5902,6044,5782,5783,5794,4887,4876,4883,4886,5766,6038,6035,6036] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7167,7177,8048,8049,7163,7166,8301,8030,8031,8032,7179,7180,8190,8168,8068,8067,8292,8293,8295] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [5643,5865,5595,5237,5238,5866,5623,5594,5622,5852,5861,5867,5572] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [6432,6435,6401,6398,1495,1528,1526,1527,6400,6408,6735,6736,6714,6737,1496,1506,2140,2147,2155,1498,1502,2160] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5915,5150,5914,5113,5897,5898,5899,5109,5107,5108,5082,4894,4897,5029,5900,5902,5085,5045,5046] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [7300,7421,8168,8165,8166,7317,8189,7378,7380,7383,7177,7174,7356,8180,7379,8181,8163,8164,8184] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [8982,8983,8984,8985,8950,4465,4466,8993,8718,8683,8952,8958] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1305,1306,1307,1310,563,1322,1323,401,418,278,280,1326,1174] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [7428,7429,7560,7562,7563,7564,7576,7397,7399,7402,7394,7366] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [8131,8113,7863,7509,8127,8132,8133,7859,7860,7861,8118,7501,7508,7909,7888,7889] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [2875,3486,2730,3622,2713,2592,2587,2590,2729,3079] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2865,2890,2891,2892,3449,3662,3666,2899,2866,2889,2921,3665] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        