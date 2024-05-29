
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
        
        load "data/6GUC.pdb", protein
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
 
        load "data/6GUC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4542,4548,4554,5123,4600,4717,4718,4580,4581,5103,4962,5093,5094,5098,5095,5097,5099,5096,4543,4544,4599,4546,4701,5115,5117,5611,5612,5616,5539,5540,5511,5523,5619,5151,5154,5617,4858,4961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5017,7863,7869,7836,7864,7865,7866,7868,1,2,3,4,19,21,22,5033,5019,5020,7898,7899,7900,7465,7466,7870,7873,7907,41,42,192,7875,31,24,28,228,487,488,496,497,499,591,5014,5028,5029,5031,5032] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3379,4995,2969,2970,4681,4493,4495,4645,4481,4484,4477,4455,4457,4494,4454,4468,3400,3401,3402,3403,3404,537,3370,3372,518,521,4983,4992,4984,2960,5087,4682,4987] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1044,642,643,644,1015,89,651,658,264,265,127,128,146,147,95,98,101,93,621,90,91,466,607,1043,1115,627,601,602,603,600,465,597,598,248,1116,1120,1027,1123] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3486,3488,3492,3672,3557,2827,2830,3491,3670,3671,2828,3487,1193,1196,3525,3526,1195,3641,3644,3646,3647,3651,3500,2835,2836,2837,2838,2839,2831,3499,1170,1171,3498,1179,1180,3122,1167,1200,4343,4345,3620,4331,4357,3131,1210,1211,1212,3132,2821,1208,1166,2823] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3778,3782,3795,3716,3765,3766,3767,3839,3715,3718,3818,3817,2550,2551,2508,2533,2858,2883,2862,3726,2679,3722,3465,3470,3476,2892,2886,2889,2885,2920,3481,3483] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7104,7100,610,611,1102,609,1072,1060,7121,7119,7120,7472,7471,229,441,440,451,7105,1101,474,1085,2306,1057,640,616,7098] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7388,7381,7382,7385,7354,7046,7416,7379,8278,7175,8218,7037,7047,7977,8262,8335,8216,8222,8211,7358,7979,8214,8263,8212,7961,8313,8314,7971,7966,7969,7972,8291] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1383,1384,1792,1831,1832,2154,2155,2352,2360,2361,2146,2147,2156,1397,2140,2148,1789,1401,1398,1394,1385,1803,1804,1798,1805,1346,1347,1407] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5689,8021,8022,8051,8053,8166,8135,8142,8143,8147,8827,8839,8140,8137,7317,7323,7987,8168,7326,8841,5704,5705,5706,7331,7319,7327] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5101,5104,5105,5106,5107,5109,2604,2602,2608,2623,5571,5112,5125,4971,4970,2975,2976,2624,2625,4679,4682,4686,4937,4936,5597,5598,5556,5581,6802,5568,5555,5553,2609,4934] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6651,6652,6294,6299,6301,6300,6328,5879,5881,5893,6856,6644,6285,6288,6643,5880,6642,5890,5897,6857] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6908,8026,8070,8071,8072,6907,6861,8061,8059,6862,6865,6909,6910,8518,8514,8515,8516,8517] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6613,6614,6615,6616,6617,6433,6603,6618,6227,6223,6625,6432,6275,6276,6431,6580,6461] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3530,3563,3565,2409,2410,2412,2411,2413,2414,3528,3531,3532,4019,3576,4018,4022,2420,2423,3574,3575,3987] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3343,537,4472,3336,3338,3367,3368,3369,3370,3371,3372,533,4484,4477,4455,4456,4457,4454,4468,3402] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5691,5692,8022,8051,8053,8166,8140,8137,8168] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7862,7931,4805,5060,5061,4753,7866,7867,7868] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        