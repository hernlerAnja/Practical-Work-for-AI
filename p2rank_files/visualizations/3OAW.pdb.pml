
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
        
        load "data/3OAW.pdb", protein
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
 
        load "data/3OAW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3406,4900,3408,4887,3394,3396,3397,4886,4888,467,1049,1050,1051,1046,1088,1090,1124,1085,1084,4829,4865,4866,3383,4889,4890,4891,3667,468,3414,3339,3360,3384,3387,3363,3364,1047,3696,3744,3745,3746,5050,3697,3698,3699,4402,4404,4405,3700,3701,3702,4419,3425,3417,4930,4912,4919,4923,4924,4921,4922,4913,4953,4954,4955,4951,1112,1114,548,1075,1076,6176,6200,6201,4962,4948,538,540,6178,497,498,3370,3371,3372,495,496,482,1077,1079,3112,3125,3129,3131,3123,3122,3124,3116,4916,4917,5027,5029,5131,5047,5044,5043,4914,4918,4981,1116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5676,5203,5204,4575,4759,4541,4542,4529,4530,4528,4516,5813,4559,5810,5812,4551,4550,5786,5788,4543,4547,5683,5684,5785,5672,5780,5673,5674,5675,5655,5699,5700,5167,6734,6735,6732,5121,5779,5133,5140,5138,5143,4597,4739,5137,5126,5781,5782,4825,5787,5777,5122,4781,4757,4738] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3686,4425,4384,429,447,448,3652,3653,3654,3656,3658,3688,4382,3987,942,963,4447,1213,4426,3979,4011,4012,4013,3977,3980,1240,1242,4014,4446] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6251,3197,6282,6283,3191,6226,3204,3164,1572,1575,3205,2883,3203,1573,1574,2613,2612,6344,6346,6347,2623,6348,6373,6340,6341,2214,2216,2217,2220,6333,2619,2633] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5195,5223,5226,5227,6687,6699,6734,6688,6732,6700,6742,5217,5665,5668,5215,5194,5222,5661,6660,6665,6741,6705,6707,5263,5255,5262,5288,5289,5266,6703,5669,5673,5674,5675,5655,5676] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3801,4787,4788,5084,4789,6295,6293,6294,6308,2231,6297,6298,6303,6304,6307,4806,3797,3804,3807,3808,2244,2243,2242,3826,6286,6291,6287,3479,6279] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [211,212,189,194,195,2272,2275,2276,183,201,203,2280,2285,202,204,235,3858,2018,2271,2273,2274,2024,228,2106,3528,225] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3230,3247,2452,2453,1319,1322,2934,1838,1855,2992,2993,2995,2997,2991,2963,2964,2961,2962,2966,2967,2936,2970,2965,1858,1862,2449,2080,2448,1861,1852,1846,1845] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2882,2883,3202,3203,2684,1566,3205,3201,3191,3204,3163,3164,3214,3216,2627,2639,2645,2855,2858,3166,2612,2847,2851,2845,2846,2623] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6275,6326,6243,6245,6361,6387,6388,6390,5829,5611,6325,5619] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [930,932,1063,918,4674,4679,4680,4681,1137,1133,1141,1162,4682,4686,4670,4673] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2189,2203,2208,2231,6304,6307,2230,6308,2244,2241,1992,3826,3828,3829,3797,3804] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1870,1881,3222,3504,2261,1882,2260,2257,2258,3483,3501,1564,1563,3195,1567] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [4717,923,924,4438,4439,4641,4640,4682,4685,4686,4670,4673,930,932,933,918,4674,4679,4681,4708,4699,4700,4687,4704] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [933,1062,3667,468,952,3665,4419,4428,4429] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4438,4439,4718,4409,4411,4420,932,933,1092,4708,4713,4720,4723,5128,5130,5135] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1970,1683,1682,1969,1462,1471,1473,1450,1449,1451,1980,1981] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4549,4170,4171,4548,4558,4560,4769,4771,4773,5094] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        