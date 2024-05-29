
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
        
        load "data/3ZVV.pdb", protein
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
 
        load "data/3ZVV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1116,1118,1150,1115,1140,1138,1102,4877,4878,4903,4910,4879,4880,4905,4904,538,540,548,3412,4857,4914,3413,3414,4944,4945,4946,1077,519,468,1088,1110,1111,1114,1103,1101,1105,467,1076,3380,1073,1075,3377,3401,497,3381,482,496,498,4881,4882,5035,5038,4393,4395,4396,4408,4409,4820,4856,5041,5051,959,4411,3404,3683,3684,3714,3715,3717,3718,3719,3400,3763,3761,1090,4405,4410,3442,4907,4908,4909,5002,1142,5018,5020,5021,4972,4978,4985,1141,4983] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5690,5134,4588,4730,5129,4750,4772,4816,5772,5773,5777,5778,5794,5768,5771,5028,5030,5032,5111,5113,5112,5117,5131,4771,4550,4566,4520,4521,4729,4507,5770,5027,5029,5171,5172,5158,5691,5194,5195,5674,5675,5779,6673,5663,5667,4532,4533,4519,4525,4526,4523,4516,4542,4540,4551,5167] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4004,969,3673,4003,4374,4375,3675,1276,1239,3670,446,447,448,968,429,3669,3676,3677,3671,4373,4414,4415,4419,965,4420,4439,966,3705,3703,4416,4417,4438,4031,4028,4030,4040,4042,3997,1268] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [3219,3220,3221,3222,2899,2900,2662,2872,1624,2700,2701,3208,3180,3181,3183,6203,2640,2629,2644,2656,6227,6228,2630,2875,3218,2864,3179,3232,2863,2896,3233,6315,1606,1620,3214,6259,6316,6314,2636,6350,2635] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4840,6244,6252,6278,5617,6277,5795,5796,5798,5801,4807,6276,6251,6300,6339,6340,6341,6275,6220,6222,5602,6338,5783] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3424,3425,3409,6179,3410,3411,4914,4915,4953,3149,3140,6155,6153,4921,3142,3146,3148,3135,3139,497,3387,3388,3389,3356] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [211,3545,189,194,195,230,2306,2309,2310,2313,2314,183,3876,235,236,3874,3877,3840,3875,3544,228,2301,2308,3881,2046,212,2052,2050,2134,201,203,204] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2278,2276,2277,3821,3824,3825,3843,2264,3845,6263,6264,6269,6256,3496,4797,3814,4780,6271,6280,6285,6286,6281] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [959,4411,4429,4704,4395,4400,4408,4409,5121,4410,4709,1118,5120,5122,5018,4714,5119,5126,4711] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [977,957,4410,4419,4420,3684,4417,959,468,1088] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4430,4708,4670,4671,4672,4677,4690,4631,4632,4664,4676,944,948,950,956,958,1162,1089,4695,4699] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4977,4981,4984,1137,534,571,572,5518,4998,5478,5516,5517,5481,5519,5520,5521,5490,536] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1610,2283,2286,1591,2282,2295,1955,1939,1562,1938,1956,1590,1592,1937,1631] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3366,3370,3371,3373,474,449,455,452,454,476,475,410,473,457,462,470,3666,3651] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1004,900,914,812,889,1003,413,1006,1007,1233,401,403,438,1232] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1898,1902,3246,1904,2108,1886,1892,2466,2468,2472,3248,2981,2983,2984,2982,2980,3011,3013,3014,3009] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4739,4741,4365,4366,4722] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5579,5788,5790,4872,4873,5550,5552] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        