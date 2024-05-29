
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
        
        load "data/2V4L.pdb", protein
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
 
        load "data/2V4L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1150,1151,1085,1086,1123,1125,1127,1128,1080,1087,1088,1119,5000,3450,3452,5032,5036,3451,5025,519,1114,548,1112,5066,5067,5068,496,497,3419,482,3801,4978,3438,5001,5002,5003,5004,3755,3756,3757,467,468,4533,966,968,4531,4532,1099,1097,3480,3442,3752,3753,3722,4541,4542,987,3439,4518,5171,5173,4517,4527,3754,4539,3800,5163,5140,5142,5143,5124,5136,5156,5157,5243,5160,4942,5027,5029,5030,5031,5026,5100,1149,5103,5104,5105,1159,5094,540] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4852,4708,4710,4643,4629,5898,5899,4894,5900,5797,4871,4655,4688,4642,4670,4672,4664,5785,5892,5893,5812,5813,5289,5294,5256,5280,5890,5788,4872,5235,4851,5257,5259,5239,5253,5149,5150,5151,5152,5154,5234,4938] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2682,2665,2667,2938,2910,2913,3269,2937,2902,2694,2700,2738,2739,6323,6325,2668,3221,3271,1634,1637,3252,3258,3260,3257,3259,1629,6350,6381,6382,3246,3256,1647,6434,6436,6437,6438,6470,6472,2678,6349,2674,2688] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2344,201,203,204,194,195,202,183,189,212,211,2172,3915,236,3912,3913,3914,3582,3583,235,2339,2347,3878,2348,2351,2352,2357,3886,3894,3922,3923,3549,228,2088,2090,2329,2341,2084,2345,2346] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3711,3713,4041,4042,975,976,977,978,4069,4496,4497,4034,4066,4067,4068,4033,4035,1248,1277,4537,4495,4560,3741,3743,4538,4539,4105,3708,3709,448,429,430] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6397,6402,6408,6403,4902,6407,2303,6414,6416,2280,2261,2268,2275,2279,5197,6392,6393,6396,3852,3859,3862,3869,2058,2059,2254,3881,3883,3884,6378,6384,2315,2316,2313,2314,3534,6386,4919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5043,6262,6275,6277,6294,3177,3178,5075,5035,496,497,3463,6298,6299,6300,3187,3461,5013,5037,5036,3179,3167,3180,3184,3186,3171,495,3394,3425,3426,3427] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6462,6463,5905,5739,5920,5925,5918,5923,6486,6487,6489,5724,5730,5732,6366,6342,6344,6373,6374,4927,6398,6399,6400,6401,6422,4960,4962,4926] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4533,967,968,4531,4532,958,4793,4795,953,957,4551,4552,4830,4831,4786,4798,4753,959,4517,4524,4522,1127,1128,4817,5265,5266,4821,5267,4799,4812,4813,5156,5157,5241,5242,5243,5244,5248,4826,4833,4836] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1653,1584,1979,1596,1598,1677,2324,1638,2320,2325,1614,1978,1615,1962,1633,1635,2292,2294,1998,2028] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4785,4788,4791,4792,4777,4778,668,955,4779,663,664,666,672,683,1213,4776,4781,4771,1199,1197,705] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1921,1925,3052,3285,1927,2509,2510,3050,3302,2505,2996,1918,2989,2992,3020,3019,1909,1915,3048,2991] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [4793,4794,967,968,1098,1172,1176,1128,1171] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5188,3848,5183,5184,4136,4169,116,122,124,3818,4142,4145] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [534,5120,5103,5106,1148,5612,1146,5600,5602,5639,5641,5643,5604,5605] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1933,1944,1945,2329,3556,3559,3549,2330,2332,2333,3538,1626,3276,3277,3250,1630] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2262,2045,2266,1473,2239,2366,2409,2412,2402,2404,2408,2414,2403] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6031,6054,6055,5594,6122,6042,6120,5567,5577,5449,5450,5451,5568,6037] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        