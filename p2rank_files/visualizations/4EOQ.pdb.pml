
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
        
        load "data/4EOQ.pdb", protein
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
 
        load "data/4EOQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [150,267,628,629,630,631,632,633,634,252,112,151,99,104,111,497,638,1074,1075,655,97,658,689,93,94,95,666,715,652,96,1054,1151,1058,1152,1154,1046,1053,496,1146,1147,1148,121,1153,1155,268,269,385,113,415] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4767,5661,5666,5665,5572,5668,5010,5660,5567,5200,5203,5560,5588,5589,5147,4648,4647,4595,4591,4592,4603,4597,5169,5172,4763,4765,5142,5143,5144,5146,5148,4766,4750,4649,5152] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1,2,7717,45,7296,46,196,7297,232,527,529,528,530,518,519,521,7749,7746,7736,7737,7743,7744] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [3520,3556,3585,3674,3701,3702,3582,3554,3555,1226,3553,1224,1239,1231,3650,4386,2865,3160,1240,1241,1243,2850,2864,3161,3523,3527,2866,2868,3521,1201,1202,1211,1197,1210,1263,1198,2852,2856,2859,4374,4365,4360] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [505,506,1132,1133,639,642,7303,644,647,504,233,522,2355,1116,1091,1103,1104,1088,6950,6951,6952,672,1097,7302,237,6933,6929,6931,469,472,471,482] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [944,1469,1471,1459,1463,1464,1470,1473,1476,1388,2417,2426,2429,2235,1497,2218,2229,2234,2194,2418,2238,1233,1234,1448,1449,1213,1220,1208,2468,1228,1437,1439,1438,2195,2196,2205,2201,1222,1225,2443,2407,2412,2413] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [3513,3869,2573,3796,3825,3748,2887,2891,3756,2921,2915,2918,2914,2566,2579,2580,2570,2708,2949,3745,3746,3811,3795,3797,3805,2537,3847,3842,3848,3496,3507,3501] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [6712,6716,6739,6740,6741,6705,6711,5739,6503,5980,6493,6498,6500,6537,6492,6494,5974,5975,5967,5968,6727,5722,5723,5742,5747,5748,6724,6766,5736] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4543,4544,4694,4491,4496,5044,4494,4487,5032,5041,5042,4730,5033,5036,5136,4497,2989,2998,2999,3408] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [7148,5753,5754,5755,7829,8010,8011,8681,8683,8671,8672,5738,7863,7865,5740,7896,7894,7980,7982,7983,7984,7990,8669,7150,7154,7830,7162] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [7189,8178,8065,7822,8057,8059,8104,8105,8106,8055,7805,8156,7185,7810,7815,7816,6833,6835,8157,8134,6878,7219,6877,8120,7212,7213,7216,7210,7247,7006,6864,6868,8117] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [4767,4618,5666,5667,5665,5572,5668,4872,4873,4906,5681,4875,5532,5689,4613,4616,4610,4649,4764,4766,4603,4784,4879,4782,4627] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [5156,5646,5647,4983,4986,2631,2634,2635,5605,5620,5630,6654,5175,5018,5020,2653,3005,2654,2633,2652,5153,5161] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7148,5753,5754,5755,7829,7832,5725,5738,7864,7865,5724,5775,5777,7836,7837,7162,7163,7164,7165,7830,7459,5757,5715,5716] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [1439,1438,1425,1880,1882,1854,1881,1876,2195,2196,2197,2205,2189,1836,1838,1847,1852,1388,1448] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [372,340,345,374,1273,1303,1169,1171,1173,1176,1172,1181,3174,1271,3165,1268,334,350,352,132,3140,3196,318,3197,317] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3369,3371,4522,4523,4525,4531,4533,4532,4521,3399,3433,564,566,4507,563,3367,3396,3397] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3560,3604,3603,3605,3606,4054,4052,4051,3593,3595,3592,2440,2438] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [4894,7434,4868,4862,4867,4874,5683,7495,5785,7463,7472,5783,5787,4896,5687,5685,5686,5691] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [8216,8454,8218,8225,8245,8750,8754,8761,8762,8763,8764,8487,8753,8747,8766,8483,8484,8485,8452,8462] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2564,2533,3469,433,3483,3485,3486,430,3473,3468,3471] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [7914,7915,7904,7869,7900,7901,7902,7913,6750,8360,8363,6748,6747,6736,6738,6740,5733] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [10,33,35,7742,34,23,26,7670,7672,7708,5080,7706,7705] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        