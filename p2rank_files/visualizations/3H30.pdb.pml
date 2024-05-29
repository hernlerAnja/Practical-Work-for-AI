
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
        
        load "data/3H30.pdb", protein
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
 
        load "data/3H30.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3990,3991,3993,3995,3996,4006,4030,4031,5535,4028,4029,4005,2679,5616,5607,3961,3963,3965,2711,2712,5612,5614,5617,5631,1145,1147,1180,1181,1182,1183,5511,1155,1156,1157,1158,2775,1148,2784,2699,2700,2703,2707,2716,2799,1113,1115,1117,3600,4024,4026,4027,3599,3608,4195,4194,3601,4052,4057,4059,4085,4086,4093,4061,4063,1408,2802,2813,2816,2976,4094,1398,2835,1399,1211,1213,1215,1251,1253,733,743,744,708,4238,4239,4248,4258,4259,4260,4261,4262,4263,4264,1205,1238,80,82,1203,1204,5630,1237,5667,5634,5648,139,754,755,753,762,1176,1178,750,756,1425,1417,1423,1440,1441,3589,3590,1424,1421,3579,4281,3626,3631,3619,4280,742,3769,3766,735,3765,3788,4208,4212,4215,4278,3774,3786,3787,5531,5532,5542,5543,5544,2782,2780,2745,2753,2754,2759,2798,2917,2919] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [480,519,493,494,518,520,313,322,324,495,3326,3644,3645,3169,3652,3325,3340,3349,3156,3159,798,806,903,3583,3584,799,920,3365,3770,3366] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4300,3405,4301,4299,4184,4304,4305,4307,3269,3404,4170,4171,4172,4173,4174,3239,3240,3230,3231,4314,3517,4308,3243,3252,3248,3259,3261,4197,4198,3625,3758,3760,3389,3284,3388,3401,3403,3402,3285,3219,3225,3802,3228,3226,3222,3761,3784,3785,3786,4199,4143,4158,4159,4465] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [1460,1456,1459,777,1458,558,559,557,1466,1344,1303,1465,1467,423,406,778,393,379,439,1357,1358,1359,979,1330,1331,1332,1334,1318,1319,394,397,401,402,403,404,405,542,543,437,438,939,938,376,951,956,372,373,378,779,912,914] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1936,1646,1940,1941,1944,1946,1027,1883,1947,1846,1325,1882,1317,1326,1625,1624,1644,1657,1658,1659,1626,1630,1331,1334,999,1319,1327,997,998] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [170,175,177,4242,4243,4244,688,4238,4239,4263,4264,147,1251,1253,715,717,720,5665,139,136,173,148,4215] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [409,423,573,410,413,415,598,1491,1492,1303,1465,1467,558,559,1466,670,629,1483,1485,575,628,597,403] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [4157,4464,4498,3844,4159,4465,4466,4484,4486,4499,3846,4773,4776,4173,4175] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [785,923,1440,1441,3588,3589,3590,786,3584,4281,3594,3631,3632,4280,741,742,3769,735,762,748,744,3602] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [838,340,341,342,833,826,845,846,549,822,567,431,450,889,318,292,317,293] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [3525,3728,3121,3674,3675,3120,3097,3099,3729,3730,3455,3485,3486,3487,3457,3489,3494,3458,3459,3496,3441] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1401,1403,3554,1375,1423,1424,2976,4094,1398,1399,1400,1402,1404,4093,2984,2985,3019,3021,3023,3561,3566] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [3256,3257,3258,3259,3260,3261,3475,3476,3477,3478,3444,3255,4306,4307,3516,4323,4324,4325,4331,4333] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [648,611,651,639,641,883,884,612,613,863,253,271,274] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [5502,4648,5492,5498,4077,4613,4051,4075,2918,2919,2908,4616,2905,5497,2895,4621,4626,2891,2902,4607,5486,5475,4622,4625,5450] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3552,3555,3085,3556,3557,3558,3559,3661,3084,3107,519,503,3653,518,516,517,499,3636,3638,3646,3647,3643,3644,3100,3089,3103,3104,3582,3534] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [81,70,71,1773,2663,2665,58,1767,1203,2660,2666,1229,2670,1808,1782,1785,1781,2671,2675,2664] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [3359,3362,711,713,814,3346,3345,257,254,258,737,738,3365,3363,3364,259,260,261,790,792,794,797,798,800,801,802,807,3347,3349,710,238,712] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4378,4380,4399,4400,4346,3037,3039,3068,3059,3047,3030,3058,3042] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [2411,2413,1928,1929,1930,1950,2358,2058,2059,2081,1969,2056,2092,2057] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [1506,625,1538,1540,1558,1559,1560,624,184,203,212,213,221,222,223,191,193,196] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [4375,4376,4377,2951,2952,2956,3036,3038,3039,4400,4384,3035] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        