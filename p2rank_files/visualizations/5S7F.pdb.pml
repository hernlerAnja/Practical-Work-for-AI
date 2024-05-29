
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
        
        load "data/5S7F.pdb", protein
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
 
        load "data/5S7F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2454,2455,2457,2458,2459,2480,2478,2479,2426,2429,2431,2427,3696,3697,3540,3543,2593,2711,2712,3536,3537,3541,3542,2591,2585,2973,2589,2969,3436,3438,3408,3711,3712,3425,3447,3716,3727,3717,3435,3046,3463,3464,3047,3075,3014,3039,3042,2428,3024,3535,2831,2988,2987,2992,2577,3005,3007,3009,3011,2747,2746,2633,2449,2453,3694,3695,2642,2643,3723,3726,3703,3710,3718] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1085,743,1098,130,131,255,1207,1272,1273,1274,298,299,128,122,125,126,297,1084,1095,1096,707,708,1201,1204,1068,1107,151,1124,1126,1128,703,675,700,102,99,100,101,104,150,666,668,672,251,253,634,152,239,648,247,1200,501,502,1199,653,1288,1289,1293,1280] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3808,3809,3810,985,933,2267,2295,4263,4264,4265,4262,4261,2294,883,884,885,915,931,932,459,461,940,444,886,913,477,1173,470,1171,1172,1174,853,855,857,860,968,942,984,986,3789,4288,4290,4327,4328,4251,4252,4254,4256,4253,4255,4250,2321] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3807,3780,3757,3782,3784,4251,4252,4254,4256,3701,3704,3705,3707,4253,4255,3824,3836,3677,3692,3397,3398,3393,3394,3563,3708,3407,3711,3785,3751,3917,3755,3741,3714,3825,3888,3658,3890,3659,3808,3809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1832,1316,1317,1318,1748,1749,1750,1811,1814,1817,1818,1819,1294,1331,1757,1329,1085,1098,1099,1100,1083,723,725,1097,727,1091,1614] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1058,1269,1282,1284,1340,1278,1281,1285,1288,1338,1408,1057,1472,1423,1474,1368,1510,1367,1334,1422,1390,1365,1847,1407,1053,1062,1067,1054] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3735,3733,3734,4155,4156,3062,3064,3066,3727,3746,3717,3437,3438,3439,3440,3423,3425,4029,3431,3432,4239,3718,4238] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2266,2265,2253,2255,2260,2249,2252,2254,956,1490,1492,1484,958,1482,1525,969,966,932,1499,1501,1453,1494,1480,2243,2232,1454,1455,1457] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3906,3908,3909,3932,4632,3896,3870,3871,4621,3898,3899,3302,3298,3299,3300,3900,4638,4641,4642,4643,4644,4649,4653,4656,3311,3313] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [455,485,681,1186,447,680,1143,678,503,504,658,659,655,656,657,663,465,463,1145] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [858,1162,1163,1165,1149,868,870,792,803,828,834,836,788,698,754,755,1135] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [524,530,641,34,642,57,199,197,200,29,32,35,194,196,193,198,525,36] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2995,2997,3522,3480,3019,3020,2819,2795,2805,2832,2833] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4684,3279,3284,3330,2799,2801,3277,3313,3259] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2961,2963,2384,2380,2381,2377,2870,2871,2872,2873,2960,2959,2962,2964,2957,2888] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        