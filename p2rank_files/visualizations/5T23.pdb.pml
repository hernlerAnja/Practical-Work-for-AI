
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
        
        load "data/5T23.pdb", protein
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
 
        load "data/5T23.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4844,4357,4840,4841,4842,4843,3637,3638,3639,3640,3641,3642,3607,3324,452,453,4370,872,4371,4372,4373,1001,1003,1031,3357,3365,3686,4818,3323,5013,4367,4786,5003,3684,4839,3335,3336,3337,4866,4906,4907,4908,525,985,1023,1024,1027,1029,1014,1015,1016,1018,533,3303,3304,989,990,467,479,480,481,4996,4982,4980,4983,4782,5000,4997,4867,4869,1054,4870,4871,4946,1053,4934,523,4944] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5671,5674,5593,5594,5120,5578,5679,5682,4528,4481,4482,4484,4468,4495,5566,5568,5569,5570,5134,5135,4494,5079,5093,5096,4692,4548,4550,4993,4994,5073,5673,5675,5676,5074,4712,5075,4691,4991,4990,4989,5655] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3928,880,881,882,4335,4336,4337,3954,3596,3598,3917,3920,1179,1152,4399,4401,1181,3626,3593,3963,4377,3628,4378,3919,3951,3953,414,415,3594,433,432,3600,3592] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1495,6145,3137,3143,3144,3128,3131,3142,1493,3145,3141,6086,2552,2553,3103,3104,3106,2567,2585,2795,2798,3154,3156,2787,2823,2821,2822,2557,2558,2559,2563,6198,6112,6113,6170,6172,6173,6165,6166,6169,2133,2134,2135,2136] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3069,3071,3310,3311,3065,3052,481,482,483,3312,3054,3056,3063,6063,3348,6061,6062,3072,6038,6040,6041,4883,4875,4915,4877] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1899,1386,1387,1597,1608,1415,1898,1416,1414,1590,1595,1596,1401,1406,1600,1602,1604,1863,1888,1886,1372,2269] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2196,2199,2200,3797,3798,3468,178,2192,1934,188,189,195,196,197,2024,168,174,180,186,1940,1942,1936,2193,213] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [6105,6129,5505,6137,6107,6186,4802,5520,6162,6164,5698,5699,5702,5703,5705,5513] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4045,4037,4038,4291,4252,4012,4013,4577,4299,4263,4257,4261,4410,4412,4415,4422,4421] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2380,2379,1259,2378,2384,1256,1776,1759,2904,1779,1766,1767,1773,2876,2903,2905,2874,3187,2934,2936,2937,1783,1997,3170,3176,2932,2906,2907] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4740,6159,4742,4770,6156,3419,6149,4759,2164,2162,2163,3737,3744,3747,3748,3766,3768] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [911,952,783,834,762,784,1011,1092,628,627,626,608] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4943,4944,5421,519,521,5423,518,566,565,5383,1055,5392,5393,1052,1050,1054,4945,4946,4960,5381] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [870,4381,4382,891,888,872,4372,1001,1003,3607,451,453,3605,890,4379,984,991,992,995] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4627,1100,857,858,1097,1098,1099,4631,871,1002,1032,1073,1080,1038,1074,1076] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [732,735,608,1010,955,954,958,547,734,1046,496,572,573,497,607] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5562,5148,5170,5553,5554,5559,6486,5192,6484,6491,6513] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        