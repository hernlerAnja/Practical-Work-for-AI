
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
        
        load "data/6PYU.pdb", protein
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
 
        load "data/6PYU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5881,4243,5733,4244,5734,5736,5874,5732,5270,4523,4524,1828,1261,1829,5708,5678,5675,5677,5697,5698,5704,5699,5894,5897,5898,5891,5890,5280,4237,4251,4253,4210,4214,4215,4216,4252,5711,4553,4555,4556,4557,4599,4600,5281] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5886,5888,6540,5669,5671,6542,6548,6549,6541,5975,6522,5988,5994,5992,5982,5991,5587,5970,5640,5643,5670,5971,5607,5468,5469,5470,5401,5400,5402,5399,5668,6456,6457,6523,6026,6034,6429,6017,6019] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2966,2971,2972,7802,7803,3112,3127,7835,8512,8513,3154,8511,8549,8548,8550,2201,2207,2962,4664,4665,4666,4667,2964,3111,3124,7834,7806,7833,7808,4671,4672,2947,2755,2761,3158,7774,4658,7773,7809,7811] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [4357,4358,2632,4366,4087,4090,4395,4400,4404,4405,4398,4089,4373,4375,2622,2835,4389,4100,4091,2621,2859,4101,4352,4110,4111,4063,4081,4034,4359,4030,4320,4072,4074,4341,4342,4343,4351,4038,4318] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [6533,6328,6703,6346,6449,6532,6402,6382,6404,6403,6326,6636,6301,6654,6651,6657,6672,6701] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4015,4018,3771,4042,7027,7054,7029,7145,7017,7208,7169,3505,3506,3507,4051,4059,4070,4053,4069,7077,7079,7016] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2921,2931,957,960,945,943,944,930,4692,3103,3094,3099,928,3084,3086,3093,3096,4363,2795,2884,2885,2886,2912,2913,2915,2828,2832,2838,2840,2831,4372,4374] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1838,5547,1860,1861,5546,1840,5536,1867,1907,1703,1704,1702,5566,5527,5530,5531,5548,1687,1836,5537,5538,5532,1823,1830,1831,1256,1828,1724,1891,1890,1900,1902] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3066,3070,3071,3072,3068,2773,3055,3054,4658,2969,2985,7774,2770,3080,4671,4672,2961,2956,2959,3074,3078,2962,4666,4667,2964,2971,2972] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4882,4883,4884,4907,4911,4617,4912,834,4614,4616,842,856,5920,5918,5923,5949,5951,5926,5929,5950,4589,4905,4901,4902,4903,4934,4935] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [2012,4846,2037,4513,4807,1185,1186,4810,2010,2013,2011,1233,1715,1716,5251,5253] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5980,1704,5279,5282,5301,5302,5565,5566,5530,5531,5548,5977,5978,5979,5571,5984,5568] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [896,897,898,893,895,7926,3116,7894,866,867,4684,7868,7869,7870,3117,3118,7867,7905,7892,931,4689] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5798,1273,1274,1825,1826,1827,1824,1856,1857,1828,5876,5877,1860,1861,1883,5853,1882,5856,5859,6504,5797,5836,1855] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4634,5650,4659,5652,5651,4623,4650,4651,4652,5925,5932,5934,5634,5935,5939,5941] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1166,1167,1168,1752,1165,1158,1627,1542,1644,1658,1750,1520,1521,1758,1759,1761,1512,1514,1518,1747] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1111,1113,1214,1215,4512,4807,4809,4794,4795,4813,4791,4796,4801,1088,1087] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5794,5795,5833,5836,1855,1296,1299,1297,1298,1874,1798,1799,1800,1273,1270,1287] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [4928,5220,4898,5579,5243,5498,5214,5216,5217,4906,5962,5266] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        