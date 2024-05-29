
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
        
        load "data/7QHL.pdb", protein
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
 
        load "data/7QHL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [505,506,508,34,36,576,217,7367,167,7789,7814,521,523,35,1,22,25,496,497,499,7366,7821,203,7812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5559,5560,4551,5454,4529,4520,4526,5466,5562,5033,5043,5482,4652,5050,5055,4550,4524,4521,4523,4895,5034,5554,5555,5060,5063,5483,5091,5094,4788,4667,4669] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [583,584,586,1114,238,239,240,112,113,114,87,643,83,84,85,223,582,1021,1115,1117,89,1037,1038,628,629,636,640,1009,1110,1111,1109,475,609,612,585] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3368,3370,4925,4926,4928,4941,4943,4473,3345,4459,4462,4455,4472,4438,4916,4596,4632,5027,2928,2929,2919,2930,4633,4917,4919,4920,3335] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [6242,6600,6601,6602,6237,5840,6586,5837,5823,5836,5824,6263,6261,6266,6243,6244,6592,6228,6593,6270,6271,6272] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1416,1197,1391,1392,1412,2151,2153,2156,1170,1176,1196,1417,1418,1423,2362,2341,2361,2372,2373,2342,2146,2145,2147,1429,2170,1425,1191,1188] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [7901,7902,8076,8078,8046,7968,8043,7904,7935,7936,7937,7966,5647,7233,5651,7232,5648,5649,7218,7227,8751,8053,5634,5639,5632,5635,5619] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [3457,3458,3647,3491,3493,3524,3522,3617,3460,1174,1187,3492,1194,1189,1190,3591,3619,3624,3649,3614,2786,2789,4325,4327,4313,2787,2790,2782,1202,1203,1204,2780,2794,2795,3091] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [3743,3744,3753,3754,3773,3745,3817,3450,3696,3433,3795,3796,3438,3444,2467,2495,2496,2817,2845,2848,3704,2492,2509,2510,2851,2879,3760,2844,2842,3694,3700,2638] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [1198,3460,3464,1174,1187,3492,3467,3465,3466,3458,3493,1202,1203,1204,2780,2794,2795,2796,2798,3081,3090,3089,3091,1159,1160,1161,1224,1226,1164,1165,1173,933,934] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [8123,8129,8189,8125,8127,8172,8173,8246,6947,7280,7282,7283,7317,7255,8133,6930,6933,6934,6938,6948,7286,7289,8224,8225,8202,7894,6905,7877] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [3333,3335,3337,524,528,530,532,533,549,275,3360,311,302,3401,3403,3362,3363,3366,3326,3329,3358,3323,3327,3367,3320,3289,3288,3290,3294,3295,3299] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [5862,6780,6798,6811,6800,5868,6779,6601,5642,5641,5621,5623,5628,5630,5636,6591,5857,5861,5870,5874,6592,5835,5847,5845,5846,5837,5836] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7872,7904,7909,7910,7911,7936,7937,7234,7902,7233,7236,7528,5651,7232,7529,5648,5649,7865,7866,7519,5632,5610,5618,5619,5605,5604,5606] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [5047,5541,2582,5496,5499,5514,5540,5524,2584,2563,2583,5052,5065,5076,4867,4870,4869,6752,5044,2935,5049,4902] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [1378,1826,1798,1799,1825,1792,1797,2157,1391,1827,1781,1783,1786,2141,2148] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [447,450,1096,449,1095,1054,1079,2307,1069,1070,484,593,596,614,1051,601,625] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [23,24,25,13,16,7775,4975,521,523,35,522,1,508,7814,7779,7781,4948,4962,4963,4968,7813] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [7771,7733,4976,7734,4723,7736,4706,4732,4704,4724,4701,4702,4959,4971] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [3532,3999,4002,3530,3542,3543,3529,3541,2374,2334,2335,2336,2368,2370] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [5450,5739,5741,5742,5744,5755,5756,5110,5111,5109,5968,5723,5441,5459] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [6806,6808,7939,7942,7941,7974,7976,7985,7986,7987,8393,7984,8431] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [657,658,659,660,1013,1278,1299,1310,1572,1297,1523,1568,1004,1005,695] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [6699,6465,6456,5227,5201,5202,5204,5199,5205,5228,6446,5983] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        