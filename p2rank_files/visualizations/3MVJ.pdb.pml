
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
        
        load "data/3MVJ.pdb", protein
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
 
        load "data/3MVJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1305,1401,1402,1403,1404,1411,1410,1436,1265,1434,891,347,348,454,879,874,875,8490,299,301,302,306,307,310,1282,8496,8516,8511,293,297,295,296,298,346,320,323,604,329,470,331,570,1437,593,1426,1424,471,629,1293,927,1322,897,900,1321,290,2577] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [6857,6859,6849,6850,6851,6856,6769,5770,5769,5771,5772,5773,5774,5746,5780,5796,5779,5794,5795,5902,6327,5754,5755,6713,6883,6885,6884,8347,8332,8338,6742,6753,6375,6741,6770,5744,5745,5747,5748,5749,5750,5738,8025,8027,8352,8354,8358,6729,6730,5741,5768,6052,5917,5918,5919,6077,6078,6323,6113,6322,6015,6018,6872,6874] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4191,8670,8674,4216,4217,3410,4184,4185,4188,4189,4190,3251,3655,4212,4214,3091,3094,3095,3090,3104,3106,3105,3384,3103,3267,3265,8688,8689,8690,8691,8692,4213,4215,3374,3348,3349,3350,3373,4204,3371,3379,3380,3372,3409,8663,2503,2504,8669,4061,4062,4074,4073,4085,8654] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [988,989,999,1000,8668,8666,2501,2502,2503,956,990,954,957,959,961,2558,2567,2500,2474,2476,2477,2466,2484,1022,1024,1055,1057,1095,2478,2496,1008,1027,2562,2564,8683,8691,8692,8686,8700,8701,8693,1032,3329,1031,8681,8679,8673,8676] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [990,4666,950,2558,2567,988,989,8668,8662,8666,2562,2564,2572,951,2586,2585,8665,4667,8625,8626,4647,4659,4660,8652,8655] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [8064,4751,4613,4764,4767,4768,4769,8063,4637,4599,8558,4558,4606,4611,4636,4638,8580,8583,8061,8062,8065,8557,4770,8068,4631,4720,4721,4722,4640,4618,4628,4612] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [8400,1848,1851,1860,1863,1940,1941,1942,1984,1987,1988,1990,1831,1832,1833,1971,1992,8291,8399,1855,1856,1857,1858,1819,1826,1853,8422,8423,8425,1869,1871,8282,8318,8288,8421,1870,8451,8454] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2286,1164,1165,1166,1139,2368,2369,706,1135,2380,2385,2387,5,6,7,2405,2406,2407,2408,2409,2410,2411,2381,2386,4,44,1162,1163,1171,43,704,30,31,32,33,35] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6152,6154,6619,5481,5483,7854,7855,7856,7858,7868,5479,5480,5482,5455,5478,6615,6611,6613,5491,6583,6586,6587,7853,7816,7817,7828,7829,7833,7834,7734,7818] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1011,1012,4416,4417,2010,2026,2028,4405,8391,8392,4406,4407,1820,1821,2011,8401,8405,8408,1805,8406,8407,8394,8398,8399,2007] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [7124,7125,6639,6642,6637,6638,6645,6611,6609,6646,6614,6665,7659,7657,7692,7664,7156,7699,7700] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [4183,3249,3250,3251,3655,3127,3073,3234,3233,3517,3659,3653,3128,3126,3071,3707,4102,3680,3518,3677,3681,3683] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5186,5187,5188,5190,3945,5066,2787,3919,2824,3484,2815,2816,2810,2813,2811,2812,2814,3947,3915,5150,5167,5148,5149,5165] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [8035,8033,8034,1879,1880,6393,6423,6424,6396,6399,6391,6398,1871,1868,8330] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3977,3978,3941,3981,4488,4456,4989,4458,3971,3974,3939,4996,4991,4998,5001,5024,5027,4491,5031,5032,3943,4459] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [3797,3833,3807,3835,3837,5246,3788,3778,3779,3802,3780,3741,3742,5256,3875,3876,5254,5255] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [7900,6529,7848,7895,6524,6527,6528,7917,7795,7800,6517,6518,6491,6493,6494] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4035,4227,4210,3365,4299,4303,8697,4298,4213,3376,3378] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5232,5236,5129,5127,5138,3850,3825,5227,5228,5180,3856,3859,3860,3861] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [2452,2400,2447,1069,1070,1045,1076,1079,2349,2347,2352,2362,2448,2357,2358,1044,1046] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        