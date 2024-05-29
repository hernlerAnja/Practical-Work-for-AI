
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
        
        load "data/4XX5.pdb", protein
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
 
        load "data/4XX5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4995,3443,3445,4994,5027,5031,5032,3447,3446,1118,1119,1122,1124,1126,1110,1109,1111,3438,3439,3420,3421,3422,3444,3458,3410,496,3413,1083,1084,1085,6294,6295,3179,3181,3182,3175,3166,5029,5030,5038,5070,5021,5060,5061,5062,5063,537,539,547,497,494,495,1113,6270,6272,3173,3162,3172,4997,4998,4999,3434,3436,3437,465,466,467,3715,3716,3717,4527,967,986,1098,1096,3432,3433,4973,4974,3467,4526,4528,5158,4512,4513,4522,5168,3749,3751,3752,3747,3748,3750,4535,3746,4536,3795,3796,4940,3794,5135,5137,5024,5025,5142,5155,5239,5152,4937,5022,5089,1148,1149,1150] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5889,5890,5893,5894,5895,5896,5888,5289,4645,4646,4650,4683,4637,4638,4640,4705,4624,4865,4867,4658,4659,5885,5887,5807,5808,5251,5275,5782,5783,5784,5312,5311,4642,4644,4643,4846,4847,4904,5230,5229,5234,5160,5149,5147,5246,5248,4930,4933] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3706,4491,4492,428,977,1248,3708,1247,3702,3703,3704,4037,3710,3709,445,446,447,973,995,997,3736,3738,4533,4534,4490,4531,4532,4536,4537,986,3715,3717,4063,4064,4554,4556,4029,4030,1274,1276] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5335,5336,5338,5360,6797,6798,6799,6800,6802,6803,6801,6804,5373,5374,5378,5379,5363,5366,5395,5397,5325,6754,6763,5381,5385,5767,5768,5303,5782,5783,5337] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2661,2662,2663,2677,3254,2683,2689,2694,2897,3216,3241,3264,3266,2933,2695,2931,2932,2908,2905,2907,6376,6377,1637,6345,3247,3255,3253,3252,3251,1628,1642,6431,2669,2686,2673,6465,6466,6433,6467] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5727,5734,6457,6458,5900,5915,5719,6482,6481,6369,6393,6394,6395,6396,6368,4921,6417,6456,6361,6338,6339,6455,4957,4955,4924,6403] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [4897,6392,6398,2256,2270,2274,2298,6412,6387,6388,2308,2309,2310,3854,3857,2311,3876,3878,2052,3847,3849,4914,6373,6381,3529,2297] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [849,812,845,847,835,831,870,871,656,657,930,837,838,1217,1220,1219,873,660,661,672,673] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2341,2083,2085,2077,2079,224,2338,2339,2343,2347,2352,2353,188,194,200,193,210,202,203,182,3907,3908,234,235,229,3577,3578] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [964,965,966,967,1098,1097,952,4788,4547,1126,1127,1171,1175,1170] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4546,4547,4825,4748,4749,4781,4793,956,957,4528,964,966,967,952,4816,4807,4808] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5098,5101,5115,5605,5607,1145,5097,533,5635,5637,5638,5599,5595,5597,5600] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5766,6787,6788,6790,5784,5920,4658,4659,4650,5790,5791,5792] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [472,451,473,453,3403,3406,454,408,3699,439,3684,3686] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1011,785,788,789,904,1014,1015,1026,811,1002,398,437,920,922,1012,908,1241,405,400,402] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [6265,6266,6270,6281,2875,3173,3174,3190,6285,6286,6288,2872,2870,3191,6289,6293,3186,3217] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [663,665,667,662,685,954,4783,4789,1196,4773,4780,4771,4774,4776,1212,670,671,1198] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5695,5696,5667,5905,5875,5876,5877,5735,4989,4990,5669] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3251,3267,3273,3277,3257,2964,2965,2967,1646] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        