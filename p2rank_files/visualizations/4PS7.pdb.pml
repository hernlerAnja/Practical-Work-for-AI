
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
        
        load "data/4PS7.pdb", protein
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
 
        load "data/4PS7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5890,5893,5894,5896,5885,5780,5888,5784,5792,5807,5808,5289,5311,5275,5895,5276,5869,5870,5887,4683,4649,4650,4640,4637,4638,4705,4624,4659,5234,5248,5252,5254,5241,5245,5251,5246,5147,5149,5229,4846,5230,4847,4865] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [3717,4997,4998,4999,3437,466,467,3433,4973,3432,3438,3439,4974,4995,4996,3434,3751,3752,4510,4513,4512,4522,4525,4526,4527,3467,3794,3795,3796,3746,3747,3748,3749,3750,5158,5168,3475,3444,3446,3447,1084,3413,1083,5135,5137,5142,5155,5151,5152,4935,4937,4938] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3446,3447,1085,5027,5028,5031,1118,1119,1109,1110,1111,547,1113,539,518,519,5061,5062,5063,1084,3413,3414,1083,480,481,482,495,4997,4998,466,1124,4995,4996,5026,5100,1148,1149,1150,1146,5022,5021,5089,5025,5138,5119,5137] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [4030,4064,4027,4054,4063,4490,4491,4556,4061,4554,1276,4492,974,975,976,977,446,996,997,428,1248,429,1247,3736,3703,4037,3704,3706,3708,3738,4532,4533] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [3255,3253,3247,6377,6320,3241,3254,3264,1637,6376,2689,2693,2694,2695,2931,2932,2933,2733,2662,2663,3213,3216,2908,2905,2897,3266,2896,2673,6431,6433,6465,2671,6344,6345,6308,2669,2677,2683,6311] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [4955,6395,6396,4924,6369,6393,6394,6403,6457,6417,5900,4957,6361,5719,6338,6339,6455,5727,5734,6458,5915,6481,6482,5725] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [211,2085,2083,2167,2104,2111,2117,2339,2077,2079,2343,3577,3578,2341,227,229,234,235,193,182,3907,3908,3909,2347,202,203,200,210] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3162,3173,3172,3174,494,495,3421,3420,3422,3166,3175,3179,3181,496,497,5034,5070,5038,6270,6272,5029,5030,3458,3182,6294,6295,3443,5032,5031] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5303,5335,5336,5337,5338,5767,5768,6802,6803,5395,5397,5302,5323,5325,5330,5385,5360,5379,5380,5382,5378,5366,5363,5781,5782,5783] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [4897,4914,2298,6388,4925,6386,6387,6392,3829,3847,3854,3857,2311,2309,2310,3876,6379,6381,6373,2303,3529] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3014,2505,2991,3281,3279,3297,3046,3044,3047,3288,2139,2141,2102,2497,2503,2504,1914,1920,1924,1908,2500] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [958,964,965,966,4546,4547,4825,4749,4778,4781,4782,4790,4793,952,956,4786,1097,4748,4807,4816,4794,4795,4808] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [2298,6412,2270,2274,2256,6392,2311,2308,3876,3878,2052,2054,3847,3854,3857] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1196,1198,4789,663,667,954,665,662,4771,4773,4774,686,691,4780,4783,671,685,1212,4776] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [5633,5635,5637,5638,5607,1147,5605,1145,5098,5101,5115,5097,5600,5576,5595,5597,5634,5636] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1011,1012,922,437,917,920,402,410,412,908,901,1241,1014,1015] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [6265,6270,6281,6285,6286,6288,2875,3182,6293,3183,6289,3173,3172,3174,3190,3191,6266,6274] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [5147,5149,5160,5229,4931,4933,5228,5230,4904,4865,5890,5894,5895] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5905,4989,5669,5695,5696,5691,5667,5692] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3251,3257,3267,3263,1618,2962,2964,2920] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        