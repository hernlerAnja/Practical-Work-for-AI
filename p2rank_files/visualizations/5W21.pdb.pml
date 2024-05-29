
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
        
        load "data/5W21.pdb", protein
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
 
        load "data/5W21.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3681,170,173,172,3678,3691,3706,3675,3065,3066,5559,5573,6376,3055,3095,3096,3593,3595,3591,5572,3705,3730,3659,5582,3625,3621,3622,3623,3587,3588,6393,6406,6388,6389,6390,6398,6400,158,6816,160,161,176,6817,141,178,179,6855,6410,6412,134,6526,6527,6528,3729,3719,3718,5545,5546,5548,5552,5571,6492,6493,6494,6495,6480,6481,6482,6488,6489,6490,6491,6403,6190,6892,6465,3131,3673,3628,3629,3132] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5159,7028,7029,7030,6160,5160,5178,5179,7087,3879,3880,3881,5503,5502,5504,5517,5196,6156,6158,5156,5152,5157,4780,7113,7114,7102,7103,7115,7116,7085,7088,7084,6440,6456,6168,6154,6695,6455] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5210,5232,8945,5216,5228,5230,5231,5698,6310,5220,5956,5957,5184,5729,5732,5222,5227,5954,8932,6306,6308,6309,8933,8935,8937,8939,5189,5191,8925,8927] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [7660,8636,8649,7625,7624,8693,8695,8665,8668,7631,7189,7646,7647,7661,7186,7187,7173,7167] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [8604,8605,7667,7668,8606,8360,8342,8358,9987,9988,7611,7612,7614,10003,9990,9992,9993,10000,9984,7653,7941,7942,7943,8281,8296,9764] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [3366,3340,3342,315,3332,1129,3328,2570,2916,2917,3274,3277,2571,3418,1115,2568,2561,2566,2612,3356] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [4311,4288,7197,7199,4280,4281,10277,7176,7177,7071,7072,7073,7201,3895,3896,7175,7178,4289,4257,4258,4291,3891,7048,7056,7082,4290] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [1668,2337,2345,2366,2639,2641,2158,2672,2640,2647,2648,2652,1554,1555,1667,1695,1697] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [10003,10286,10000,9978,9984,10011,9969,7653,7936,7940,7941,9959,10282,10010,10283,7608,7611,7612,7604,7668,7600,7644,7643,7651,10292,7601,7602] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [6523,6556,6548,6558,6560,5680,5652,5648,5651,5653,5654,6589,6591,5655,5623,5624,5548,5529,5625,6526,6527,6528] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [7720,7723,9151,9155,9178,8577,8580,7710,8331,8333,8332,9140,9133,9134,7709,7719,7722,9099,9102,7711,9109,9071,9095,9097,9154,9145] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [4809,5173,5205,5208,5212,5213,5202,4881,4885,4887,4900,4903,5221,5244,4772,4773,5169,4757,4812,5175] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [7933,8019,8020,8021,7934,7935,7936,7949,10253,10268,10285,10265,10255,7178,7181,8027,8032,10258] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7060,6719,7061,7063,7146,7092,7095,7100,6735,6763,7148,6736,6738,6740,7155,8701,8709,8702,8705] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [7509,7502,7503,7507,7508,7510,7511,4690,4380,4710,4711,4691,4692,4368,4369,4370,4367,4379,7479,7482,7483,3802,3810,3800,3801,3803,3805] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [3378,3379,3381,3473,3474,3475,3521,3477,3476,3478,3383,555,554,547,551,531,528,553,3376,3377,3407,3487,3489] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [8515,8518,8520,8539,8540,8304,8581,8526,8528,8529,8534,8535,8538,8502,8514,8498,8305,8496,8499,8503,8494,8433] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [426,1614,1628,1629,417,1120,1121,1617,1532,1536,1537,1105,1568,1534,1579] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [738,739,640,321,578,643,756,974,331,931,284,288,973] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [4226,10233,4228,4271,4272,4250,4253,10327,10344,10345,10346,10297,10300,10302,10303] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [3958,4183,4186,4187,10406,10413,4170,4171,4172,4179,3955,3956,10207,10068,4163,4164,4166,10067,10208,10442] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2828,2839,2840,2177,14,2298,2288,2149,2147,2148] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [4814,4803,4820,4788,4434,4435,4783,4454] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [9474,9332,9567,9473,9167] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        