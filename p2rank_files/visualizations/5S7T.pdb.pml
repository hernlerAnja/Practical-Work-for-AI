
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
        
        load "data/5S7T.pdb", protein
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
 
        load "data/5S7T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2460,2461,2462,2463,2465,2484,2485,2486,2431,2426,3549,3546,2585,3543,2456,2459,2583,3692,2698,2965,2577,2581,2961,2452,3430,3431,3414,3453,3444,3442,2464,3038,3470,3039,3067,3031,3034,3016,3541,3542,3441,3469,2817,2980,2979,2984,2569,2429,3006,2997,2999,3003,3001,2427,2428,2732,2733,2629,2446,2447,2449,2455,3690,3691] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [147,148,149,236,497,644,671,696,1124,96,97,98,99,244,101,649,668,662,664,248,250,360,630,626,645,1122,1196,496,1195,699,1080,1091,1103,1081,703,704,1092,1094,128,127,125,739,1197,1200,1201,1202,1203,252] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3741,3712,3728,3729,3730,4144,4145,3058,3445,3446,3722,3713,2452,3430,3431,3453,3444,3442,3443,2464,3549,2459,2462,3437,3438,3054,3056,4018,3720,4225,3718,4215,4220,4227,4228,4214,2449,2450,2451] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3403,3404,3702,3703,3399,3775,3746,3779,3780,3906,3750,3736,3819,3820,3877,3879,3656,3657,3802,3804,3752,3777,4243,3699,3700,3831,3659,3672,3687,3696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [454,456,936,4251,4252,4253,4254,439,927,928,929,2256,2295,964,938,982,3790,3784,4277,4278,3803,3804,3805,4242,4244,3791,3792] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [465,472,1168,1169,1170,853,856,454,456,4251,4252,4253,4254,878,879,881,911,851,909,849,2295,4279,4316,4317] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1080,1079,1081,1092,1093,1094,1095,1096,719,721,723,1597,1087,1288,1802,1815,1323,1325,1310,1311,1312,1731,1732,1733,1794,1797,1800,1801,1740] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1328,1279,1282,1332,1334,1361,1276,1278,1272,1275,1053,1054,1263,1417,1384,1357,1359,1830,1402,1463,1465,1362,1501,1401,1049,1058,1063,1050] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3895,3897,3898,4623,4629,4632,4634,4635,3859,3860,3862,4612,3290,3292,3294,3885,3291,3887,3888,3861,3889,3921,4633,3305,4640,4644,4647,3303] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1481,1483,1475,2255,2254,2242,2244,2249,2238,2241,2243,952,954,1473,1516,962,965,1490,2232,2221,1492,1445,1444,1485,1471] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1064,1080,1103,1081,1287,122,125,127,252,294,295,296,1203,1266,1267,1268,1274,1283,1282] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1158,1159,1161,1145,864,866,799,830,832,784,694,750,751,1131] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1137,1139,677,676,674,659,480,499,651,652,654,1142,460,1140,458,1141,450] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [519,637,190,192,194,195,196,197,638,191,193,54,525,230] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [2857,2859,2973,2380,2575,2397,2856,2950,2951,2952,2953,2954,2955,2398,2956,2384,2381] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3271,3276,3251,2785,2787,4671,3305] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3505,3139,3128,3029,3077,3078,3123,3164,3170,3172,3504,3194,3196,3490] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        