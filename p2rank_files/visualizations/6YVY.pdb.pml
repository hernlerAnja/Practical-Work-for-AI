
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
        
        load "data/6YVY.pdb", protein
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
 
        load "data/6YVY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [340,448,1240,1241,1242,1243,1128,1142,157,164,205,764,203,761,762,145,1256,475,1157,1139,593,149,753,763,1156,1158,338,339,710,711,204,323,147,592,1235,1234,1236,731,734,171,182,167,174,184] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3362,2831,2832,2468,2469,2333,2467,2286,2332,2334,3262,3271,3272,2838,3291,2452,2855,2850,2274,2275,2276,2278,2882,2883,2884,3290,2885,3292,2874,2605,2601,2603,2604,2296,2300,2305,2311,2313,2309,2316,2293,2319,2572,2575,2577,3397,3398,3382,3363,3366,2303,3368,2632,2633,3376,2834,3273,2713] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5098,5793,6431,6526,6658,6990,6656,6657,5792,5113,5119,5122,6969,6970,6662,6668,6666,6671,6987,6971,5151,5997,6005,5132,6006,6008,6007,6509,5126,5130] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4446,4447,4448,4586,4587,5487,4400,4397,5001,5372,5409,5480,5410,4834,4832,4972,5484,4951,4952,4954,4572,4958,4997,4388,4394,4389,4390,4391,4392,4395,4994,4975,4981,4993,4970] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [7454,7522,6896,7530,7531,7532,7525,6634,7013,7014,7016,6649,6651,7020,7034,7037,7038,7066,7067,7425,6455,6456,6462,6463,6465,6468,6514,6515,6516,7064,7056,7455,6457,6458,6460] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3466,3503,3505,484,485,486,532,495,1069,1070,1288,3469,3524,3526,488,464,462,1284,1270,1274,3495,4044,4045,4032,4035,4022,3470,3472,3460,3465,4026,4028,4029,1291,4038,4036] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3551,3552,6189,3165,3166,3167,3168,3169,3170,6147,4089,5294,5295,5296,5298,3192,3541,3547,3544,3545,3546,3557,3172,5647,5651,5652,5291,5641,5644,5646,5318,5645,5657,6143,6141,6146] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [340,448,1241,1242,1243,164,205,434,443,472,474,475,338,339,697,171,176,180,182,167,174,184] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1433,4678,4706,4885,4667,4668,4646,1401,4244,4247,4248,4250,4884,1409,4259] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5525,5722,5548,6108,6109,5687,5688,5690,5830,5890,6105,6107,5959,5831] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1648,1787,1788,1782,1740,1335,1708,1505,1342,1343,1508,1366,1923,1924,1925,1926,1927] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [7579,7884,7885,7976,8024,8023,7744,8013,7741,7776] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3730,3870,3869,3822,3448,3417,3622,3425,3790,3590,3587,4005,4009,4007] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        