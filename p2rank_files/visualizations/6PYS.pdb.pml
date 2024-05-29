
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
        
        load "data/6PYS.pdb", protein
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
 
        load "data/6PYS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5251,5205,5206,5219,5220,5208,5875,5916,6344,5273,5873,5917,6431,6432,6434,5892,6318,6426,6343,5225,5221,5224,5527,5528,6427,6428,6433,5827,5747,5749,6425,6423,5826,5443,5444,5831,5842,5850,5844,5847,5462,5463,5464] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4362,4311,4312,4313,4314,4315,4316,5067,3954,3955,4276,4272,4274,5077,5078,5079,5755,5758,5735,5742,5752,5065,5071,5565,5555,5560,5561,5564,5591,5592,5554,5556,3957,3959,3956,3953,3985,3991,3992,5536,5530,5532] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1225,1223,5593,523,522,539,1220,1251,1252,1257,1258,1261,1262,537,1254,1290,1292,1291,5755,5758,5735,5742,5752,5626,5628,3941,3931,3932,538,540,5588,5617,5618,5619,5620,5710,5719,609,5655,1283,5656,5659,1284,5625,5627,5666,3957,3959,3960,3961,3962,3963,3964,5565,5555,5560,5561,5564,5590,5591,5592,5554,5556,5736,3953] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [216,218,4457,4127,4129,234,217,232,233,2342,2344,2587,2588,2308,2582,2584,2575,2576,2579,2580,2581,2305,2423,2411,2410,2409,4104,4116,4118,2329,2332,2335,2336,2320,2299,2384,2294,2301,2304] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [6988,2566,2567,2570,4071,2445,2278,4047,2552,2560,2537,2538,2563,4418,4419,4420,4435,4436,2451,4049,4053,6986,4075,6980,6995,6996,7038,7039,2470,2473,2474,2469,2458,2496,6992,7034] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4582,4613,4614,5049,488,1441,1421,1104,498,500,1101,1434,1422,1425,489,4260,4584,486,4261,5048,5050,5109,4611,4612,4572,4573] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [5784,4722,4694,4654,4378,4379,128,130,4656,4374,4399,4351,5782,4676,5778,5806] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1111,1113,1112,1096,1227,1230,1232,1234,1268,1262,5079,5101,5382,5383,5391,5393,1291,1303,1305,5100] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2912,3016,3550,3001,3002,3015,3571,3307,3547,3511,3538,3539,3541,2901] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5382,5383,5391,5393,5394,5100,5833,5836,5098,5418,5101,5840,5859,5423] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3281,3284,3286,3056,3021,3101,3327,3328,3052,3051,3053,3128,3100,3288,3012,2993] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        