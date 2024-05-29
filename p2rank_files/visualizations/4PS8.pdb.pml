
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
        
        load "data/4PS8.pdb", protein
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
 
        load "data/4PS8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3445,3446,5028,5031,5032,3447,466,1084,1081,1083,1085,1119,1122,1123,1125,1080,1110,1109,1111,3410,3413,3414,5061,5062,5063,1113,547,5030,495,496,4973,4974,3434,3746,3436,3437,3749,3751,3716,3717,4512,3747,3752,4527,465,467,967,1096,1098,4528,4526,3475,3433,3795,3796,986,3750,4522,3748,3794,5168,4992,4995,4994,4996,4997,4998,4999,5025,5135,5137,5138,5119,1126,1124,1127,5151,5152,5158,5155,4937,4938,4939,5024,5026,1148,1150,1149,5099,5100,1146,5027,5022,5020,5021,537,539,5089] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4933,5889,5890,5893,5894,5895,5896,4867,5887,5149,5885,5888,5807,5808,4847,5246,5248,5251,5275,4704,4705,4638,4846,4650,4683,4637,4624,4866,4865,5148,5278,5289,5311,5780,5782,5783,5312,5791,5792,5766,5784,4659,5920,5921,4658,4643,4646,5144,5234,5160,5146,5145,5147,5229,5230,4930,4931,4904] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [429,1247,1248,1274,1276,1284,4030,3704,3706,4036,4037,3708,4490,4491,4492,4532,4554,975,976,977,4064,3736,4533,3703,4556,4063,4029,447,446,997,428] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3254,2932,2933,3266,2895,2896,2693,2695,2733,2931,1646,6318,6320,3241,3213,3264,2897,3214,3216,2901,2905,2694,1637,3247,3253,3255,1628,6377,6344,6345,6467,6431,6433,2673,6308,6314,6376,2677,2669,2683,2686,2689,2662,2663,6311,2667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5719,5734,6339,6457,6458,6455,5900,4924,5911,6403,4957,6369,6394,6395,6417,4921,4922,6361,6337,6368] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [5030,5070,6270,6272,5062,497,494,495,496,3173,3162,3442,3443,3444,3446,5007,5031,5032,3457,6294,6295,3179,3458,3420,3421,3422,3175,3181,3166,5038] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [5767,5768,6786,6789,6801,6791,6803,5302,5335,5338,5330,6790,4273,4275,5395,5397,5325,5361,5366,5360,5363,5766,5781,5784,5300,5303,5782,5783] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2341,202,203,2339,2340,210,211,227,200,2347,2066,2072,2077,2167,235,2343,3577,3578,3908,234,182,188,193,2083,2085,2104,2079] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3851,4914,3847,2311,4897,6380,6381,6388,6392,6379,2298,2310,3854,3857,3876] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4812,4816,4825,4815,4807,4808,4794,4790,964,966,967,1097,4528,952,957,4546,4547,958,4749,4781,4748] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [952,4786,4788,964,966,1097,1098,1133,1175,1189,1167,1169,1170,1171,1127,4794] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1914,1917,1920,3279,1924,1908,3046,3047,2499,2501,2991,2503,2504,2505,3288,3297,2141,2497,2102,3013,3014,3015,3044,3017] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [5237,5238,5239,4519,4517,5236,5243,4831,4816,5260,4821,4825,4826,4828,967,4528,4526,4512,4525,4546] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [445,986,447,973,446,3714,3710,3702,3715,4533,4534,3703,4490,4491,4492,4531,4532,4536,4537,3704,3706] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [1002,1011,1012,904,785,788,789,412,1014,1015,1016,1017,1026,811,780,410,437,920,1241,917,908,400,402] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [663,665,667,685,954,4783,4789,4773,662,670,679,680,1212,4780,4771,4774,4776] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [6285,2875,3172,3173,3174,6286,6288,2872,2873,3191,3193,6270,6293,6294,6295,3183,3186,3217,6289] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [4527,465,467,965,967,1096,1098,4528,983,986] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [878,840,842,874,837,835,870,846,847,849,848,844,845,911,1220,675,913,895,673] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [5967,5970,5678,5960,5962,6013,5880,5663,5673,5674,5859] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [5097,5098,5101,5115,1145,1147,5607,5094,5633,5576,5599,5600,5635,5634,5636,5638,5595,5597] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [5905,5696,5667,5669,4989] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        