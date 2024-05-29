
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
        
        load "data/3ML8.pdb", protein
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
 
        load "data/3ML8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4941,5078,5081,1087,5094,4471,3468,4938,4940,4942,4916,467,3709,3710,468,3743,3745,4470,928,947,1059,1057,3426,3427,3430,3429,3741,4882,5101,5111,5095,5098,4453,4456,4455,4465,3740,3742,3744,4478,3788,3789,4965,4964,4967,4968,5042,5005,1083,1084,1085,1119,1109,1110,1111,1118,1071,1080,4935,4937,4975,3439,3440,496,1045,3406,3407,482,495,1044,1046,1041,1072,1074,3403,3437,3438,5004,5006,519,520,540,538,548,494,5062,5043,5074,5038] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5856,5833,5836,5837,5839,4790,4648,4831,4609,4610,4611,4824,4809,4810,4832,4581,4582,4646,5172,4789,5171,5177,5189,4876,4847,5173,5832,5088,5090,5750,5828,5830,5831,5751,5191,5194,5218,5708,5734,5864,5861,5863,5735,5724,5727,5232,5254,4593,4600,4602,4598,4586,4592,4589,4579,6810,6812] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3240,3246,6359,1593,3248,3234,3245,3247,1584,1590,1591,1592,3244,6328,6360,2242,2228,2235,2237,2238,2660,2670,2655,2676,2682,2686,2727,2666,2656,6303,2688,2898,2925,2926,3257,3259,2889,2924,3206,3209,2890,2900,2901,6422,6423,6425,6450,6410,6417,6421] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6765,6809,5277,5716,5243,5246,5245,6766,5712,5724,5725,5726,5727,5706,5720,6782,6784,5314,5321,5273,5306,6776,6777,6818,6819,5307,5312,5313,5340,5268,5339,5322,5266] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3435,3449,3451,3436,3437,497,498,3413,3414,3415,496,3382,3159,3168,3172,3174,3175,4946,4950,4951,4981,4974,4975,6276,6278,6277,6272,3155,3161,6253,6255,4973,5013,3165,3166] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2470,1352,1355,1356,1368,1841,1843,1347,1312,1313,1314,1391,1393,1379,1365,1357,1369,1371,2103,2454,2455,2122,2123,2453,1399,1401,2416,2419] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4031,3697,4030,429,1245,1246,3699,3700,3701,1208,4022,4029,4021,4023,4024,1237,1214,1235,4479,937,938,4435,4474,4475,4433,4054,4055,4056,4434,3695,3696,3729,3731,4476,4477,446,445,447,448,3706,3703,3707] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2297,2290,2294,2298,201,203,204,194,212,210,211,236,3901,2022,2112,195,183,189,2291,3571,228,2292,2028,2030,2024] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3036,3038,3040,1340,2482,2492,2493,1870,1873,3008,1880,3273,1876,3006,3007,1856,1864,1337,2984,2983,1341,3274,3279,3281,3283,3290,1881,2086,2087,2483,3034,3010,3013] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2262,2261,2260,3840,3869,3871,3847,3850,3851,3857,3858,2201,6363,6368,2248,2249,6362,3521,6364,2254,2255,4856,3822,4857,6370,3522,2220,6371,6384,6385,4840] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5928,5933,6642,6643,6606,5920,5922,6465,6466,6467,6468,6470,6499,6500,6495,6498,5670,5662,5668,5649,5651,5880,6441] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4731,4737,925,927,928,913,917,4489,4768,4490,4759,4692,4691,4750,4724,4755,4751] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2868,6268,6269,6271,3166,3167,2861,2863,6240,6248,6253,3175,3179,3210,3180,3183,3184,3186,6276,6272] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5953,5802,5996,5823,5606,5616,5640,5617] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1058,1055,908,913,1132,4730,4732,1136] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        