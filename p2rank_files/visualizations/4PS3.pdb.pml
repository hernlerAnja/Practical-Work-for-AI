
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
        
        load "data/4PS3.pdb", protein
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
 
        load "data/4PS3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1084,466,1081,1083,1085,1119,1122,1123,1125,1096,1079,1080,3445,3446,3447,3433,4973,4974,3432,3475,3795,3796,3751,467,3717,4512,3747,3749,3752,4527,967,1098,4526,3794,4525,5168,3748,3750,4522,5061,5062,5063,1111,1113,1110,547,1109,5028,5031,3716,3410,3434,3746,3437,3413,3414,482,481,495,496,5024,5025,1148,1124,1126,4992,4996,4994,4995,4997,5137,5022,5023,5239,5151,4998,4999,5135,5152,5158,4939,4940,5155,5026,1149,1150,537,539,1146,5027,5020,5021] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5246,4638,4846,4847,4637,4624,4705,4933,5893,5894,5895,5896,4865,4867,4650,4683,5889,5890,5887,5885,5888,5252,5870,5276,5807,5808,5251,5275,5229,5234,5241,5230,5248,5144,5146,5145,5147,5149,5289,5312,5311,5791,5792,5784,4658,4659,4646,4643] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [5734,5900,4924,5911,5915,6456,6457,6458,6459,5719,5727,6481,6482,6455,4955,4957,6361,6395,6368,6369,6394,6417,4921,6337,6339] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3738,4061,4032,4037,4062,4064,4490,4491,4492,4063,4554,4556,1276,1274,3708,4027,4028,4031,4036,4029,4030,447,977,446,428,997,3703,3704,3706,3736,4533,976,1247,1248] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [6431,2662,2667,2668,2669,2673,2686,6345,2663,6376,6433,6467,6377,2683,2677,2689,3254,3264,2896,2932,2933,3253,3255,2733,2931,3241,3213,3247,1637,2895,2905,2694,2695,2897,3216,3266] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5030,5031,5032,5070,5062,6295,6270,6272,3444,3446,3457,3458,3179,3389,3421,3422,497,494,495,496,3162,3166,3175,3181,5033,5034,5038] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5302,5303,5336,5338,5335,5782,5766,5767,5768,5781,5360,5361,5363,5366,6791,6801,6803,5395,5397,5325,5330] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [202,203,210,2167,200,2347,2353,2339,2343,235,3578,3908,182,188,193,2341,2079,2083,2085,227,3577] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3847,2311,6387,6373,6380,6381,6392,2309,2298,4897,6388,4914,3854,3857,3876,3829,3529,2310] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4786,4788,964,965,966,967,1098,952,957,956,958,4547,1175,1097,1167,1169,1171,1170,1127] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1920,2141,3288,1924,2139,2497,2503,2504,2505,3279,3297,3014,3044,3046,3047,2500,1914,1917,1908,2102,2991] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4812,4794,4816,4825,4793,4807,4782,964,965,966,967,952,957,956,958,4546,4547,4749,4781,1097] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2311,2052,2054,3878,2256,2270,2274,2275,3847,6392,6399,2298,6404,2297,2308,4914,3876,3879,3854,3857] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5097,5098,5101,5115,1145,533,5607,5633,5634,5636,5638,5600,5595,5597] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4783,4789,4780,4773,4771,667,662,663,665,1212,680,685,954,4774,4776] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1011,917,920,1012,437,1241,908,412,410,400,402,1014,1015] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5880,5663,5673,5859,5674,5649,5967,5970,6013] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5950,6659,5936,6484,6480,6486,6487,5706,5708,6515,6512] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5667,5696,5669,5905,4989] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        