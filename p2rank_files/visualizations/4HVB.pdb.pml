
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
        
        load "data/4HVB.pdb", protein
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
 
        load "data/4HVB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5027,959,4901,5011,5013,1115,1116,1118,1114,1090,4813,3401,4848,4849,3371,3373,4850,4868,4871,4872,4873,4874,4875,3398,3336,3372,464,1076,3339,3360,467,1075,3676,3363,3362,3642,3643,3394,3359,3358,3364,3370,468,1072,1088,4386,4389,5028,5031,5034,5044,4388,4401,4402,4398,4403,4404,3722,3721,3720,3675,3677,3678,4908,4898,4896,4897,4937,4938,4939,1141,1111,548,1102,1142,540,538,4906,4965,519,1077,482,1105,496,3340,1103,5014,4995,4976,4987,4975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5765,5766,4765,5770,5771,5772,5761,5763,5764,5683,5684,5151,4579,4581,4764,5021,5023,5105,5110,5117,5124,5104,5106,4723,5122,5127,4807,4809,4743,4514,4515,4559,4742,4543,4544,5020,5022,5024,5025,5668,5656,5658,5660,5165,5187,5188,5794,5796,4535,4533,4519,4525,4526] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1571,1572,1574,3173,3180,3181,6272,2597,2599,6338,3167,6241,6210,6216,6240,6273,2209,2588,2589,6207,6323,6336,6337,6361,6363,6362] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3630,3632,3633,3634,1277,1275,429,989,430,1239,3956,3957,1276,1268,1245,1266,3962,3963,4407,4410,4409,3664,3988,3990,4366,4367,4368,4408,447,3987,966,967,968,969,3662,4000,3629,4001,3955,446,448,987,978,3636,3639] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5247,6697,6699,5210,5239,5240,5246,6678,6692,6715,6716,6693,6694,5254,5272,5273,6695,5199,5201,5206,5232,5233,5207,6677,6689,6650,6690,5270,5179,5657,5658,5660,5176,5178,5639,5645,5649] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3384,3101,3105,3088,3107,3346,3348,497,498,3347,496,3092,3098,3099,3100,4884,4914,6166,6190,6191,4907,4906,4908,6168,4946,3369] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2269,2272,2265,2273,203,204,210,211,212,2093,3503,236,3504,2003,189,194,183,2278,201,3834,2266,228,2011,2009,2005] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3179,3180,3181,2599,6338,3167,2660,2859,3190,3192,2603,2621,2831,2588,2595,2589,3142,3139,2858,2823,2857] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6269,6276,2236,3455,4790,6277,2237,2224,3773,3780,3783,3784,3802,3804,3777,6293,6294,6297,6298] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [958,1162,1089,1159,1161,1163,4664,1167,4663,4665,944,956,957,4423,949,950,948,1164] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [6185,6162,6177,6181,6182,6184,3143,3142,6166,6189,6161,6153,3099,3100,3109,3112,3113,3116,3117,2801,2796,2798] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3206,3223,2971,2973,2917,1854,1851,2939,2941,2940,2912,2425,2427,1857,1845,1863,2067,1861] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4422,4692,4423,4625,4701,4683,4657,4669,4624,949,950,948,958,4664,4670,959,944,956,4684] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3773,3780,3802,2182,3804,3805,2236,2237,2223,2234,2243,2189,2190,2196,2201,6297] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1573,2241,2242,2245,2246,2254,1550,1551,1913,1914,1898,1915] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [812,900,438,1233,909,914,912,994,1004,1006,1007,784,789,790,786,1009,1018] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1869,1880,1881,1882,2254,3459,2251,3480,2253,1563,1562,1566,3198,3185,3171] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        