
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
        
        load "data/4GB9.pdb", protein
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
 
        load "data/4GB9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4964,3681,3682,4961,4962,4963,4990,3399,3411,3412,472,473,1091,1129,1130,1132,1133,1164,973,1087,1125,1128,1086,1102,1104,3440,4902,4939,3398,3410,4938,4960,3401,3378,992,3402,3375,4927,4929,5100,5107,5102,5103,5084,5095,1163,4492,3713,5131,4475,4478,3715,3717,4477,4491,4493,3759,3761,3714,3716,5123,5117,5120,4903,4992,4993,5026,5028,5027,5024,5025,1124,553,1115,1116,1117,1119,1090,487,501,3379,4989,4991,4985,4986,4987,4988,5054,1152,1154,1156,5065,545,543] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5746,5277,5275,5276,4648,4610,4614,4615,4649,4607,4611,4603,4601,4602,4605,4609,4854,5885,5886,5756,5858,5859,5861,4630,4631,4620,5772,5249,5773,5254,5853,5240,5745,5749,5216,5195,5194,5206,5210,5211,5213,4812,4668,4670,5854,4831,4832,5199,4830,4811,4853,5109,5850,5852] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [982,4519,1001,1003,4457,4028,4455,4456,4003,4029,4497,452,453,3668,3669,3671,3995,434,1253,1282,3673] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1623,3217,3218,3220,6309,6310,6341,6342,3206,6285,3212,3219,3229,3231,2898,6396,6432,6398,2256,2632,2641,2642,2633,2634,2648,2654,2651,2635,2636,6276,2627,2659,2660,2897,2866,2628,3178,3179,3181,2862,2860,2861] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3812,3831,3832,3843,2030,2028,2232,2250,2251,2246,6346,6356,6357,6338,2274,2287,4862,4879,6353,6362,6363,6369,6366,6373,3494,3822,3823,2286,3819,3841] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3140,3144,3146,3138,502,503,3385,3386,3387,3131,3129,3127,5003,6236,6238,6259,6260,4994,4995,4997,4998,4999,5034,5035,3422,3423,3409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3870,3543,198,241,3873,2319,240,235,208,209,2315,216,2143,217,3875,188,2322,3542,233,2061,2317,2087,2080,3838] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5265,5268,5267,5749,6764,5299,5301,5303,5748,5733,5362,5302,4623,6790,4227,4228,4229,6766,5339,5360,5747] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [6334,6333,6383,6421,6423,6382,6302,6304,6449,6420,6446,4922,5684,5690,5699,6361,6326,5865,4889,6360,6359,6358,5692,5879,5880,6447] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2475,3011,2473,1901,1907,3244,1878,2953,2979,3012,2978,2980,3009,2981,2951,3254,3261,1913,2077,2115,2117,2468,1911,2076,1895,2078,2467,2469] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1964,1965,2292,2262,2295,2296,1600,2304,1948,2291,1601,1946,1947,1624,1619] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [972,973,5203,5204,5100,4492,4480,4477,4490,4491,4493,4511,5202,4482] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1021,1019,1020,416,406,408,443,791,928,1008,926,914,817,794,795,1023,1032] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [943,945,4725,4726,4727,1234,982,1003,1250,1253,1249,1238] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5080,5564,5565,5572,5062,5598,5558,5599,1153,1155,5066,1151,5063,5602,5560,5601,5603,577,5557] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4736,4737,4738,4739,4731,4745,670,672,4753,4748,668,669,1218] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        