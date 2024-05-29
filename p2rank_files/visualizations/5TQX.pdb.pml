
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
        
        load "data/5TQX.pdb", protein
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
 
        load "data/5TQX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6173,7398,6172,6155,7360,7362,7363,6035,6050,7335,7361,7325,6064,6042,6045,6046,6047,6034,6107,5128,7355,7356,7358,7359,7322,5124,7389,8458,7348,7350,5803,5808,5852,5857,5865,5866,5867,5793,5794,5805,5807,5809,5851,5118,5120,5121,5126,5798,5122,8493,8494,8489,8491,5071,5077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [2777,2778,1229,1230,1231,1287,1289,2744,2747,542,546,548,550,1594,1595,1457,1464,1467,1468,1469,1472,1577,1456,540,543,544,2811,3880,2772,2770,1215,1220,1225,1227,1279,1288,1274,1273,1216,3915,3916,3911,3913,493,499,2820,2780,2784,2785,2781,2782,2783,2757,1529,1486] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6613,6595,6754,6788,6758,6777,6778,6779,6781,6782,6783,6804,6814,6713,6692,6693,6816,6914,7027,7028,7017,6970,6971,7014,6593,6594,6757,6925,6928] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [2180,2201,2203,2204,2393,2179,2392,2336,2210,2199,2205,2176,2035,2238,2017,2114,2115,2135,2226,2016,2449,2450,2236] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [836,838,935,936,937,707,830,791,795,798,765,767,827,797,1170,1147,675,654,677] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [5514,5343,5345,5373,5369,5376,5408,5748,5513,5515,5253,5285,5725,5232,5375,5255,5414,5416,5405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3243,3278,3279,9044,9011,9032,9033,9070,4433,4455,4466,7821,7822,4454,7857,7856,4492] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [6186,6182,5127,5128,6168,6169,6170,6171,6175,6177,6174,7445,7414,7415,7416,7417,7419,7475,6187,5116,5141,5142,5145,5126,5132,5103] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [548,549,550,1590,1591,1592,1593,1596,2867,525,2837,2838,2839,2841,538,554,2836,1599,1604,1597,2897,564,567,563,1608,1609] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [599,602,622,624,631,633,620,621,653,1149,1202,1203,1176,1177,1170,461] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [5180,5177,5198,5199,5209,5211,5727,5754,5755,5231,5780,5748,5781,5200,5202,5039] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [2825,4012,4014,2660,2632,2791,3978,3979,2799,3982,3989] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [7403,8590,8592,7210,7377,8560,7238,8567,7369,8556,8557] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [751,423,429,433,752,426,934,933,707,768,770,940,698,706,708] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [3207,7762,3232,8951,7738,7739,7759,7758,7757,7764,3233,3274,7794,8960,8952,8953,7791] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [4373,4375,4382,7852,3161,3216,7810,7811,3213,4374,3184,7785,3180,3160,3179,3181,3186] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5007,5004,5512,5346,5348,5276,5001,5284,5285,5286,5329,5330,5511,5011,5518] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1919,1836,1891,715,1119,714,1816,1819,1822,1118,713,1084,1087,1093,1086,1789,1871,1892] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6397,6470,5696,6394,6469,6400,6414,5671,5665,6367,6449,5293,5291,5292,5664,6497,5697,5662] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [7115,8739,7114,7116,8716,8717,8718,7111,7112,7121,7057,6644,6639,6641,6634,6632,6633,6638] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [2533,2537,2538,2066,2534,2536,2061,2063,2543,4138,4139,4140,4161,2479,2055,2056,2054,2060] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [4490,4523,3313,3488,4450,4483,4485,4480,3339,3312,3335,3377,3376] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [7891,7890,8066,7955,9068,9101,9028,9063,9058,9061,7913,7917,7954] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [2237,2099,2100,2102,2274,2048,2470,2032,2034,2031] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [6815,6626,7048,6610,6609,6612,6677,6678,6680,6852] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        