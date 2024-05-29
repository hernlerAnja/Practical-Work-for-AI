
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
        
        load "data/7PSU.pdb", protein
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
 
        load "data/7PSU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1315,1328,1444,1452,437,438,439,541,542,543,938,1342,1343,406,397,394,932,934,1441,1446,1448,1449,1450,1451,558,559,1443,411,412,409,410,597,413,557,910,911,912,914,915,909,777,779,919,575,670,671,1467,1468,913,598,630,629,379,385,373,954,957,1344,374,376,1610,1642,1302,1303,1304,1316,1926,981,1317,1318,1320,983,3060,401,403,405,3075,3076,3077,3065,1606,1602,1605,1476,1477,1601,1288,1469,1596,415,1470,1478,1629,1631,3082,3084,3081,1925,3078] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4259,4267,3769,4157,4158,4159,3253,3189,3191,3356,3357,3358,3192,3749,3753,3754,4130,3194,3254,3193,3252,3786,4134,3772,3188,3372,3727,3729,3730,3594,3734,4258,3486,4256,4266,4260,4261,4268,3373,3371] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3225,3228,3449,4283,3230,4291,3221,4292,3233,3237,3238,3373,3374,3389,3390,3485,3412,4266,4264,4103,3212,3216,3218,3220,4418,3209,3254,4143,4131,4118,4119,4417,4420,4421,4424,4267,4133] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1960,2046,1914,1916,1917,1937,3613,3614,1978,1979,1959,2048,3096,1962,1964,3128,3622,1921,1918,3310,3619,1956,3137,3139,3295,3350,3309,3318,3331,3339,3332,3732] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3051,1973,3053,1619,1981,1617,1984,1987,1985,2003,1988,2005,1589,1590,3503,2984,2985,2979,3535,2988,2990,2980,3046,3055,3058,3042,3044,3524,3527,3522,3523,3530] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [220,221,223,213,1492,212,1491,1523,201,191,1525,193,184,1544,1545] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3456,3068,3429,3430,3457,3697,3698,3699,3431,3089,3086,3678,3645,3646,3494,3427,3428,3463,3465] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [297,836,839,317,318,565,566,889,549,550,874,822,294,567,340,341,342,450] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3030,3016,3035,3036,3038,4360,3006,3008,4338,4340,3011,2999,3028,4306,4307,3027,4359,4312,3439,3440] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4578,4573,4575,4583,4569,2886,5457,5458,5459,2873,5420,5422,2876,4035,4037,2894,2896,4011,5469,5454,4574,4610,4587,5412] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1760,1768,1754,2647,2650,2653,71,2652,2651,65,1772,2605,2630,61,54,58,1795,81,1222] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [274,831,611,613,639,641,614,271,247,253,650,651,642,882,883,884,863,615,616] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3006,3008,3005,4336,4337,4338,4339,4340,4335,3007,2930,2934,2932,2935,3016,4360] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4758,4724,4744,4851,4853,4723,4750,4751,5204,5206,4722,4850,4875,5208,4886] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3628,3072,3616,1963,1965,3612,3613,3615,1976,1978,3630,3528,1973,1619,1971,1969,1632,3073] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3364,3365,3704,3637,3107,3133,3109,3112,3653,3155,3157,3156] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        