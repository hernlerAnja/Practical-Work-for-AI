
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
        
        load "data/2A5U.pdb", protein
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
 
        load "data/2A5U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1111,1114,1115,1116,1118,1072,1088,1102,4962,3412,4961,4994,4998,3413,3414,3380,3381,467,1074,1075,1076,1077,1073,3406,3388,5028,5029,5030,548,1141,1142,1103,4995,4997,498,496,497,1105,4934,3400,4940,4937,3442,4964,4965,4966,3715,3717,3683,3684,468,1090,3719,3714,3716,3718,4477,4479,4480,4492,4489,3762,3763,4908,5125,5135,4494,4493,3401,3404,5086,5105,4991,4992,4993,5102,4904,5119,5122,4989,1140] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5857,5858,5769,5850,5770,5242,5256,5279,5742,5745,5746,4617,4650,4600,4603,4604,4605,4591,4607,5851,4900,5852,4833,4834,5116,5114,5196,5847,4813,4814,5112,5195,5201,4671,4672,5213,5215,5218,4649,5111,5113,5115,5849,5830,5221] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [989,429,445,447,3671,4004,3674,3675,965,967,968,969,4522,4523,3677,3676,446,448,3705,3669,3670,4499,4457,4458,4459,1276,430,1245,1239,4498,4503,4500,3994,3997,1268,1266,4029,4030,4031,4028] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6330,6331,6299,6301,6444,6446,6417,6443,6418,6421,6379,4924,6323,5696,5681,5862,5874,5880,5882,6358,6355,6356,5689,5875,5877] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4864,6350,6353,6359,6360,6361,6362,6364,6365,5159,2223,4881,2277,2278,3814,3843,3845,3821,3824,3825,2020,2021,3846,2265,2264,6341,6342,6343,3496] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [498,496,497,3149,3142,3129,3141,3140,3133,3131,4995,4996,4997,5000,5001,5036,5037,5005,5030,6256,6257,6232,6234,6235,3409,3387,3388,3389,3423,3356,3146,3148,3410,3412,4998,4999,3425,3414] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6276,6306,6307,2629,2630,2650,3220,3221,3222,3208,6280,6282,3219,2899,2900,3231,3233,2627,3183,2644,2656,2661,2662,2864,3214,1612,3218,6339,2640,6393,6394,6395] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2050,212,228,2071,2134,2046,2306,2307,2301,2313,2310,3544,3545,235,183,3876,189,194,3874,3875,2314,201,203,195,204,2319,2052] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [956,957,958,959,1089,939,4749,4750,4751,4753,4757,4761,4762,944,945,4756,950,4512,4513,4514,1118,1119,1160,1159,1167,1189,1187,1086,1161,1163,1162] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5729,5730,6764,5359,5267,5269,5297,5303,5305,5301,6765,5358,5333,5341,5336,5270,5743,5745] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [468,959,1090,4494,4503,976,978,1088,1078] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2247,1590,1591,2283,2286,2287,1592,1573,1561,1575,1654,1610,1631,1612,1613,1614,1955,1956,2254,2256] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5627,5821,5611,5975,5841,5842,5640,5929,5932,5761] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4187,4221,4635,4844,5168,5169,4188] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4956,5654,5653,5868,5697,5657] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        