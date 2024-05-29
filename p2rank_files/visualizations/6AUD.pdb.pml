
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
        
        load "data/6AUD.pdb", protein
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
 
        load "data/6AUD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3674,472,473,3707,3705,3708,3709,4467,4469,4470,4491,992,1129,1130,1093,1102,1104,971,973,4484,4483,4485,4493,4494,4928,3394,3704,3706,3752,3753,4952,3390,3391,3432,1088,1089,1090,1091,5018,3402,3404,4949,3370,3371,1125,1128,1086,1092,1115,1116,1117,487,5014,5016,5017,5015,553,501,5090,1156,4979,4980,4981,5074,1154,1155,1132,1163,1164,4953,4954,4917,4978,4977,5113,5107,5110,4892,5055,5044,545,4975,4976,1152,543] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5185,5848,5850,5184,4822,5196,4660,4802,5876,4638,4801,4591,4592,4593,4820,5840,5842,5844,5746,5102,5843,5762,5763,5203,5230,5206,5739,5245,5267,5735,5737,5738,5266,4600,4601,4604,4605,4595,5099,5100,5189] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [979,980,981,983,4449,452,453,1001,1003,434,1253,1254,3667,3660,450,451,3659,3661,3663,3995,1290,3665,3670,982,4488,4489,4493,4494,4490,4491,3693,3695,3671,3993,1282,3987,4020,4447,4448,4021,4511] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3204,1612,1620,3209,3210,3211,3212,1627,1630,3198,2854,2889,2890,3221,3223,2652,2690,2691,2620,3171,3173,6281,3170,6339,6425,6390,6391,6392,6393,2619,2626,2630,6307,6308,6427,2625,2634,2640] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2026,2027,2242,2281,2282,2283,2284,3836,2216,3833,3835,2229,3823,3824,4850,4852,4869,3804,3808,5147,6350,6351,6343,6344,6354,6355,2270,2271,6363,3815,3814,3811,3486,2248,2243,2247,6360,6361] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2314,2312,3534,3535,3867,3874,2058,3830,3866,188,198,240,197,235,2319,3864,3865,194,200,208,217,216,2316,207,209,3875,3501] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3130,6233,6235,4985,4989,5024,5025,3119,3413,3415,4993,6257,6258,3132,3136,3138,3401,4984,4986,4987,502,3378,3123,3346,3121,3379] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5736,5739,5267,5292,5737,5738,5264,5293,6786,6787,5723,5258,5730,5257,5722,6761,5324,6759,6785,5329,5351] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1904,1908,2074,1892,2075,2112,2465,2464,2466,2470,2461,1898,1901,1867,1875,1874,1910,2114,3002,2970,2971,2972,3000,2945,2941,2472,2474,2948,3004,3237] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4912,6359,5689,5880,5855,6332,6357,6416,6417,6419,6300,5674,6302,6444,6415,6441,5680,5682,6442,6331,4910] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [6787,6788,6789,5721,5747,5736,5739,6749,6751,5718,5850,5874,5876,5746] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1018,914,926,817,904,905,418,443,1017,406,408,416,1246,1247,1020,1021,1022,1023,1032,791,794,795] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5198,5217,4771,4786,4783,4767,5193,5191,4781,973,4485,4503,4504,5216] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1961,1962,2253,2259,2292,2289,2293,1596,1597,1598,1614,1636,1945,1618,1619,1621,2301,2288,1616,1617] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5056,1151,5053,577,5547,5548,5552,5588,5589,5591,5592,5593,5550,5070,5555,5559,5562,5558,5554] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4721,4726,4727,4728,4735,4729,4731,688,4743,668,669,673,671,1218] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        