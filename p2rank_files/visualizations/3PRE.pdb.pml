
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
        
        load "data/3PRE.pdb", protein
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
 
        load "data/3PRE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3368,3392,3404,3405,3402,1067,3371,467,1066,468,1063,1064,1068,1101,1102,1105,1079,1081,1106,3397,4882,3390,3391,3396,3401,3403,4969,4970,4971,4967,1092,1094,1096,548,4939,483,496,497,4880,4881,3752,3754,3395,3675,3707,3709,3710,4420,3705,3706,3708,4433,4430,4434,969,4436,950,4435,3426,5076,3753,4903,4902,4932,4933,4934,5045,5027,5046,1107,1141,1109,4870,4905,4906,4907,5043,4845,5066,5059,5060,5063,5146,4928,4930,4929,4997,1132,1133,538] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4559,4563,4573,4557,4558,4544,4545,4546,4548,4566,4567,4575,4576,5826,5828,5856,5857,5827,5829,5699,5700,5186,5197,5688,5715,5183,6730,6728,6767,5667,5674,5690,5691,5692,6764,6765,5797,5798,5801,5802,4775,5804,5136,5793,5796,5137,4755,5142,5716,4613,5154,5156,5159,4611,4796,4773,4797,4591,5795,5776,5160,5162] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1597,6315,6283,6284,6316,6406,6404,6405,2631,6379,6381,6370,6377,2240,2620,2635,2641,2647,2621,3199,3211,3212,3213,3210,3222,3224,3209,2891,2691,2692,2887,2889,2890,6259,2866,2855,2858,2863,3174,2652,2859,3205,1596,1595] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3661,3995,3996,3664,4399,4400,3665,3666,1257,3988,959,4464,1230,1231,1236,4463,3694,4398,4440,4441,446,447,448,978,980,429,3668,3662,430,4442,4020,4021,3987,3990,3986,3989,4019,1259] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5242,5243,6736,6774,6775,6738,5684,5233,5304,5231,5209,5210,5238,5683,5305,5270,6740,5268,5263,5673,5675,5211,5691,5692,5212,5213] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3809,3807,3805,3806,5100,2268,2271,3834,3836,3837,2019,2020,2277,2216,6319,6320,6324,6326,6328,6330,6331,2258,2257,2278,6327,4822,2234,2235,2224,2230,6340,4805,6341,3815,3816,3812,3487,3787,2270] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [202,211,212,225,228,2133,2301,2045,2303,2307,203,204,2299,2043,3535,3536,2306,3863,3864,236,189,194,193,195,208,2312,183,3865,3866,3867,201,2051] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3124,3137,3139,3378,3379,3380,495,496,497,3133,3126,3120,6211,4938,4940,4978,6209,6233,6234,3131,3414,3416,3401,3404,3402,3347,4946] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6276,6308,5627,5635,5845,6278,5633,6423,6421,6355,6395,6396,6397,6394,6420,5832,5838,5839,6358,5862,5833,5865,5867] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1881,1884,1885,2107,2457,2460,2461,1875,1878,1869,2455,2456,1342,1345,2949,3238,2971,2972,3005,3003,3001,2942,2944,2973,3255] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4436,947,949,950,935,936,939,940,941,4455,4696,4697,4454,930,1077,1080,1081,1158,1175,1176,1178,1110,1154,1150,1151,1152] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5043,1109,5147,5146,4423,4734,4715,4724,4733,5151,5170,4436,950,4455,4420,4433,4454] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5614,5884,5889,5892,6598,6562,6599,5891,5633,6424,6426,6456,6459,6451,6455] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2287,2284,2285,3509,3512,1905,2288,1893,1904,3489,3203,3490,3491,3513,3229,1586,3230,1587] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5586,5909,5767,5557,5559,5899,5906,5787,5788,5571,5572,5581] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5541,5543,5545,5023,5508,5511,5515,5507,5503,5542,5484,5546,5504,5505,1128,5009] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [641,643,1030,1089,642,912,987,989,1170] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        