
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
        
        load "data/7C3G.pdb", protein
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
 
        load "data/7C3G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [371,405,1169,617,1075,1168,1068,1096,695,696,724,691,499,631,655,1097,658,688,668,1174,1176,1078,258,149,151,250,254,150,240,241,242,88,93,92,89,91,613,649,651,653,125,126,127,129,130,124,256] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3414,3041,3441,3442,3443,3034,3037,3009,3033,3415,3042,3070,3072,3074,3019,2442,2500,2498,2499,2437,2438,2440,2439,3000,3002,3004,2474,2475,2476,2478,2477,2479,2720,3514,3515,2848,2983,2982,2603,2605,2968,2966,2599,2964,2591,2590,2473,2607,3424] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1243,1244,1245,3584,3585,3586,3587,1246,1512,1539,1510,1511,1493,3834,942,3880,3851,3852,3853,1265,1266,1229,1230,1231,1494,1501,1505,1498,1483,1489,999,1503,945,923,1228,3835,3839,3842,3571,3572,3607,3846,3345,3569,3274] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3411,3415,3417,3727,3400,3402,3404,3696,3725,3691,3697,3701,3706,3710,3418,3057,3059,3061,3712,4119,3713,3714,3419,4187,4203,4189,4190,3993,3410,4128,2458,2462,2464,2465,2466,2469,4195,4193,2455,2476,2478,3387,2473] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1372,1373,1862,116,117,1846,1848,1849,1854,1354,1355,1056,1057,1058,713,715,1070,1071,1072,1073,1069,711,1068,109,113,106,127,129,1384,1369,1778,1652,1064] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3377,3866,3868,3803,3804,3897,3763,3764,3761,3372,3376,3818,3819,3870,3638,3639,3671,3683,3684,3686,3687,3637,3640,3656] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1463,1462,1393,1422,1423,1420,1477,1478,1476,1030,1031,1026,1556,1527,1529,1297,1298,1299,1315,1195,1330,1339,1342,1345,1346,1296,1343,1395] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3387,3675,3676,2649,2651,3673,3674,3690,2470,2473,3522,2607,3682,3403,3404,3695,2460,2462,2469,2474,2476] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [468,460,487,470,1109,1111,1112,1113,1128,1114,1130,641,642,637,638,639,664,663,500,501] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1240,1241,1242,3880,3879,4614,3286,3288,4599,4596,4602,4611,4607,4606,3912,4601,3886,1245,3277,3878,3874,3876,3881,3273,3274,3275] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1539,3583,1537,1511,1538,3582,2255,2258,2260,2261,2266,2238,2249,3586,1545,1547,935,2270,2273,926,924,1535,3581] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1058,1176,258,1335,1041,1354,1341,1332,1333,1334,111,112,113,302,121,124,120] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4613,4642,3285,3288,3287,3259,2813,3261,2815,3253,3254] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2850,2990,2988,3015,2992,2817,2818,2809,2836,2819,3459,3457,3014] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [937,900,901,2301,954,908,899,902,903,906,464,466] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        