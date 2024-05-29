
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
        
        load "data/4TV3.pdb", protein
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
 
        load "data/4TV3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5922,5923,5915,5916,5917,5920,5921,5912,5914,5833,5432,5029,5027,5009,4845,5834,4847,5413,5393,5008,4783,4794,4765,5456,5457,5089,5087,5088,5293,5295,5371,5290,5292,5294,5896,5053,5065,5372,5373,5377,5396,5388,5390] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3977,3978,3926,3927,3928,3929,3930,3931,3932,3892,3894,3895,3613,3616,3617,3896,3901,4658,3647,3653,3615,3621,5127,5129,3618,3619,5122,5281,5096,5125,5126,5093,5304,4647,4657,4659,5313,5311,4651,5117,5298,5301,5288,5297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5074,6321,6336,6337,2271,2272,2256,6371,4033,4034,4036,4027,4028,4035,4008,4009,5072,5073,4001,3999,4007,6320,6326,2336,3720,6327,6329,6322,2335,2339,2338,2082,2342,2325,2243,3706,2337,2324,6324,4048,4049,2348,2249,3711,4010,3707,3709,5332,5056] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6006,5985,6015,6579,6010,6013,6014,6601,6114,6135,6576,6577,6587,6159,6549,6551,6140,6138,6141,6578,6554,6556,6558,6160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4079,4080,4076,4072,2352,3759,3761,4069,4071,3736,202,2146,2140,3744,3754,4046,2347,2348,2358,2360,2364,187,185,186,2148,2363,3706,3727,2349,2355,2112,2105,2357,2209,2102,2103,2108,2133,2136,4067] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1509,1511,1660,2120,1925,2119,2185,2460,2457,1492,1493,1496,2180,2181,1901,1903,2495,1489,2467,2464] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3967,5324,5330,3990,3994,4263,4019,4025,4023,94,4015,3995,100,102,5328,5353,4319,4320,4283,4294,4291,4295,5333,5337] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5519,6060,6061,5517,5518,5553,5654,5841,5650,5652] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5283,5284,5175,5208,5210,5174,1199,1176,1177,5177,5180,5207,507,506,508,1135,1167,1139,1140,1138] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [457,467,468,469,1328,1344,1329,458,3887,3888,455,4194,4629,4630,4192,4219,4220,4221,1022,4689,1020,4185] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4659,4680,4681,4962,1176,1177,1206,1149,1183,4951,1141,1142,1145,1147,997,998,492,1028,1029,1030,1014,1134,1135,4658,4960,4948] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2333,2337,1690,2324,2331,2332,3418,6324,6386,6388,3425,1687,3416,1688,1689,6320,6326,6322,2313,2289,6375,6371,6321] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6112,6015,6013,6014,6049,6067,6046] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1334,1331,1338,1344,421,423,424,1341,369,458,3888,447,449,356,359,360,1357,1360,4185] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2105,2357,2208,2209,2102,2103,2108,2186,2133,2136,2170,2183,2187,2200,2190,2207,2355,2112,2139,2140] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6301,2900,3388,3412,2899,2904,2907,6385,6387,3426,6382,6383] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [990,1021,4906,4912,1042,1272,1296,1297,989,1256,1271,1269,4904,4905,4913] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2845,2844,3052,3046,3076] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        