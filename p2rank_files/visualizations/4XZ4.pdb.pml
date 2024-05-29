
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
        
        load "data/4XZ4.pdb", protein
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
 
        load "data/4XZ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4995,3433,3439,4973,4974,3445,4997,4998,4999,4939,3794,3795,3796,4940,3752,5158,3748,3750,4512,5168,1122,1124,1126,4526,4527,967,4528,5061,1113,1080,1118,1119,1110,1109,1111,3447,4994,5027,5031,5032,3446,5020,5021,5062,5060,5063,537,539,547,3434,3410,466,467,1083,1084,3751,3437,3749,3717,3716,986,3747,3746,3432,3438,3467,495,496,1085,3421,5119,5135,5025,5155,5152,4938,5022,5024,5026,1150,5100,1148,1149,5089] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5790,5791,5889,5890,5893,5894,5895,5896,5885,5887,5792,5888,5807,5808,5275,5289,4638,4683,4636,4637,4640,4645,4646,4650,4705,4624,5920,4659,4665,4867,4658,4865,5783,5311,5312,5763,5766,6787,6788,6790,5781,5782,5784,4642,4644,4643,5229,4846,4847,5144,5145,5234,5248,5251,5246,4933,4904,5149,5147,5230] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4491,4492,4532,4556,975,977,4063,3736,3738,4037,4490,4064,1247,1274,1276,3708,4030,4027,4029,445,446,447,3704,3706,995,997,428,1248,3703,3710,4533,4534] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6797,6798,6799,6800,6802,6803,5361,5362,6754,6763,5395,5397,5335,5360,5381,5373,5378,5379,5366,5396,5766,5767,5768,5781,5782,5784,5300,5783,5303,5336,5337,5338] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6314,3241,3254,2662,2663,3216,2677,2695,2933,2905,3247,6376,6377,6345,3252,3253,1637,3255,1628,3264,3266,3251,2931,2932,1646,1642,2895,2897,2896,2673,6466,2671,6433,6465,6467,6431,6308,6344,2668,2669,2683,2686,6311] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4921,4924,6393,6394,6395,6403,6417,6407,6402,6361,4955,4957,6369,6338,6339,6455,5719,5734,5727,6458,5900,6481,6482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3420,3421,3422,495,496,497,3162,3172,3166,3179,3181,3168,3175,3173,3389,5030,5034,5070,5031,5032,3458,5033,5038,3446,5062,6294,6295,6270,6272] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [202,210,211,3578,200,193,2339,2343,2352,182,203,2167,3577,227,2340,2341,2079,2085,2083,3907,3908,3909,235] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2256,2270,2273,2274,3851,4897,4913,6373,6392,2297,2298,2296,6412,6388,6387,2317,2052,2308,2310,2311,3876,3878,3849,4914,3847,3854,3857,3864,6380,6381,3529] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1098,1097,1126,1127,965,966,964,4547,4788,1175,952,4786,1167,956,957,1169,1170,1171] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3715,3717,983,984,985,986,4533,4534,4536,459,465,467,445,441,447,4527,967,4528,1096] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [448,451,453,454,473,409,412,3399,3403,3406,3699,3684,3686,408,439,461,469,472,3394,474] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4790,952,4782,4781,4793,966,964,4546,4547,4749,4825,956,957,4794,4795,4807,4808] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6293,6265,6266,6270,6281,3183,6289,2875,6285,6288,3217,3174,3173] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3886,3917,3873,3910,3914,3908,2343,3578,2334,3577] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        