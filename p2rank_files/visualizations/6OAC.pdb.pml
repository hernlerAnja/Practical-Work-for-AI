
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
        
        load "data/6OAC.pdb", protein
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
 
        load "data/6OAC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5835,5867,5869,6342,5831,6331,6337,6353,6356,5752,5765,5769,5770,5821,5822,5865,5768,5800,5801,5803,5804,5830,5793,5740,5761,5914,5915,5895,5888,5890,5891,5893,5896,6334,6306,6309,6333,6332,6313] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4559,5670,5187,5588,5211,5212,5589,4784,4547,4548,4600,4544,4546,4530,5168,4602,4763,4764,5127,5132,5145,5151,5139,5143,5149,5170,4820,4782,4842,4843,4844,5671,5672,5675,5677,5128,5048,5049,5050,5667,5669,5047,5651,5046,5045] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3419,3447,3731,3732,3733,3734,3417,3420,3421,487,1123,3455,3456,3450,3730,3781,3782,5068,4847,4848,4872,5056,5060,5043,5053,4871,5036,4849,4851,5059,3425,3457,4870,4876,4877,4880,4412,4424,3699,3735,3736,4431] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2067,3554,2092,187,201,202,203,3563,3564,185,186,199,3558,3565,3547,3540,2319,3875,2177,2313,2316,2320,3850,2308,2311,2335,2336,2206,3871,3873,3874] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [1475,1476,1492,1472,1861,1862,1863,2137,2451,2452,2423,2420,2424,1479,2075,1885,2136,2141,2076,2413,2416] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [504,1118,1119,1159,1160,1122,1123,502,503,1121,3398,3399,500,501,505,509,511,1156,1181,1182,1150,1152,4905,4928,4929,4930,5038,5039,4904,4931,4932,4934,4935,4971,3407,4962,4963,4967,4968,4960,539,540,3428,3429,3430] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [5382,5308,5282,5284,5384,5361,5363,5407,5596,5302,5595,5300,5272,5273,5278,5274,5813,5815,5816,5785,5387,5409,5411,5787,5789,5380,5381,5622,5383] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3840,6084,2298,3851,3852,3853,2212,2038,2280,2292,2293,2294,2035,2281,2295,2227,2228] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4707,4715,4717,4706,488,1124,1012,1013,1014,1125,1128,1130,1132,997,4424,4446,4445,1159,1160] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [4124,4091,4092,4098,5085,5088,4065,4067,100,3798,3799,101,102,3794,3819,5079,3771,4087,4123] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3535,3553,3555,3578,3569,3575,2099,2091,2098,2121,3262,3259,3263,1899,1900,1901,1902,3246,3261] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2067,3554,2089,2092,2093,2095,202,186,199,2102,2104,2165,2061,2064,2065,2059,2164,2139,2142,2143,2163] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3998,3691,3996,4023,4024,4025,454,3692,1311,1326,1327,4394,4395,3987,3990,3989,1002,463,465,453,464,1320,1312,451,1005] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3837,3515,3814,3840,6091,3803,3811,3831,3832,6092,6094,4827,4829,5087] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [6140,6142,6144,6056,3216,3229,3230,2704,6023,3189,3192,2951,2710,2702,2703,2707,2708,2711] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2285,2289,2290,2293,1639,1923,1643,2287,1645,1640,1641,1642,6143,3222,3221,3229,3220] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [465,1025,1255,1312,1288,1003,1004,1005,1239,1253,1254,973,1238,4667] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [1601,1602,1603,1834,1507,1932,1493,1491,1494] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1524,1775,1957,1566] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4866,5512,5513,5510,5709,5710,5708] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [5120,4755,4632,4631,4090] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [5687,5523,5486,5477,5480,5481,4900] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [1944,2390,2178] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        