
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
        
        load "data/5S7N.pdb", protein
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
 
        load "data/5S7N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [362,1211,1212,1214,1215,1216,1217,1218,254,1210,1118,704,705,740,1106,1107,700,1231,1235,318,1137,238,697,1139,672,631,499,645,669,663,665,131,130,104,122,127,129,125,126,128,253,296,297,298,150,151,99,100,102,101,252,250,152,246,1236,1283,1269,1096,1076,1079,1095,1296,1237] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [2454,2455,2456,2458,2457,2459,2478,2480,2431,3695,3696,3408,2714,3541,3542,3543,2453,3425,2577,2579,2571,2575,3717,3709,3710,3711,3715,3716,3438,3694,3702,3447,3435,3436,2715,3537,3540,2840,3535,3536,2982,2997,2996,3001,3463,3464,2978,3055,3056,3084,2426,2429,2479,3051,3016,3018,2427,2428,2563,3014,3023,3048,3033,3020,2450,4230,3722,2619,3725,2632,2634,2636,3693] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [456,458,910,912,474,467,1184,850,854,852,857,1183,1185,937,939,983,441,981,982,965,929,928,930,931,880,4264,4261,4262,4263,4285,4286,4259,4327,4292,4326,3794,3795,2314,3788,4287,4288,4289,2340,882,3808,3809,3807,4250,4251,4252,4253,4254,4255,4249,3704,3705,3724,2286,3796] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3808,3756,3781,3806,4250,4251,4252,4253,4254,4255,3805,3802,3704,3700,3676,3691,3834,3835,3658,3887,3889,3657,3397,3398,3823,3824,3394,3706,3707,3393,3754,3783,3750,3784,3916] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3732,3733,4237,3734,4155,3715,3716,3423,3438,3439,3440,2456,2458,3425,3431,3745,4028,4154,3432,3436,3437,3071,3073,3075,4224,4225,4230,4238,4235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1065,1068,1069,1064,1287,1288,1281,1286,1368,1370,1341,1371,1507,1337,1411,1469,1471,1422,1410,1423] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1096,1110,1111,1814,1102,720,722,724,1320,1321,1745,1746,1747,1094,1297,1332,1319,1815,1829,1108,1109,1334,1754,1611] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [955,1487,1489,1481,2268,2278,1522,2274,951,953,952,966,1496,1498,1491,1450,2262,2251,1451,1477,2285,2284,2271,2279,2272,2273] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3302,3311,3313,4662,4665,3298,3299,3307,4630,4641,4647,4650,4651,4652,4653,3895,3869,3870,3871,3872,3897,3898,3899,3905,3907,3908,3931] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [194,196,197,198,199,232,521,638,527,57,193,195,32,35,37,192] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2828,2841,2842,3028,3029,3002,3003,3004,3006,2814,3480,2812,2804] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [452,482,1197,462,653,678,1156,655,677,1154,1155,460,652] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4693,3259,3279,3284,2808,2810,3313] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [831,833,1176,1173,1174,1146,752,695,1160,800,751,785,867,865] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        