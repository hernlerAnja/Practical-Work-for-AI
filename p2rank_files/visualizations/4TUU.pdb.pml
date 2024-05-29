
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
        
        load "data/4TUU.pdb", protein
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
 
        load "data/4TUU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6075,6108,6109,6110,6112,6114,5985,6006,6010,6013,6014,6015,6576,6587,6601,6045,6046,6067,6049,6048,6159,6551,6578,6579,6577,6138,6140,6141,6554,6558,6136,6160,6135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3615,3619,3621,3623,3614,3616,3617,3618,3647,3653,3977,3978,3643,3927,3928,3929,3930,3931,3932,4657,4658,3894,3895,3896,4647,5304,4651,5298,5301,5288,5281,5297,4659,5093,5115,5121,5122,5125,5117,5116,5096,5313,5311] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5920,5923,5915,5432,5833,5834,4783,4847,5415,5087,5295,5088,5916,5917,5291,5293,5372,5912,5290,5292,5294,5914,5008,5009,5377,5388,5390,5394,5396,5393,5089,5373,4794,5027,5028,5029,5065,4825] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3707,2335,2336,2337,2338,2346,2348,2325,2339,2342,2324,2082,2243,6327,6329,6321,6322,6371,3720,2289,2268,2271,2272,6336,6337,2256,4007,5073,5074,4033,4034,4036,4035,4028,4027,3999,5332,5072,4001,2249,4047,4048,4049,3711,4010,3709] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4071,202,185,186,187,4080,3744,3761,3743,2146,2148,4076,4067,4072,4046,4040,2363,2364,2352,2355,2356,2357,2358,2105,2108,2109,2112,2102,2360,2221,2103,3736,2347,2348,2133,2136,2140,2139,2132] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [5519,5654,5656,5841,5652,5518,6060,6061,5434,5436,5439,5440,5840,5553,5462,5625,5626,5650,5628,5629] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4484,4521,4729,4732,4717,4856,4312,4833,4834,4463,4495,4483,4485,4486,4488,4489,4726,4755,4756] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [4320,4261,4263,4287,4288,4291,4294,5330,5333,5324,4019,4023,4025,3967,5328,4283,5353,4319,4015,3990,3994,3995,100] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1492,1901,2181,2460,1496,1509,1511,1903,2464,2468,2471,2120,2180,1925,2185,2116,2457] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [3624,3626,5149,5180,5176,5177,5179,508,1138,506,507,1140,3594,3625,1199,5207,5208,1167,1135,1176,5175,5173,5174,1177] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4220,4630,4219,4221,1344,4185,4196,4629,4664,4192,3884,3887,4194,3888,458,467,468,469,1330,1334,1337,1327,1328,1329,455,457,4663,1022,4186] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [6386,6388,2331,3425,1688,1689,1690,2333,2337,6321,6322,6371,3418,6375,6378] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4680,4681,4952,4951,4659,1142,1030,1145,1014,1028,1029,1147] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4906,990,1042,4912,1271,1272,1297,1256,1270,4911,4913,1021] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [421,422,424,1341,1359,1358,1360,447,449,1344,4185,3888,458,1334,1337,419,420,4186] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1199,5207,5208,543,565,544,1167,508] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2102,2209,2103,2208,2105,2108,2207,2213,2133,2136,2132,2183,2186,2187] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        