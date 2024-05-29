
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
        
        load "data/3QJZ.pdb", protein
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
 
        load "data/3QJZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4624,4660,4661,4685,4686,4845,4839,4842,4683,4684,4199,4213,4215,3178,3182,3462,3495,3492,3540,3541,3494,3496,3497,3493,3179,443,4214,444,3220,4855,4853,4822,4824,4825,4838,3191,3192,4682,3189,961,4719,4748,4750,474,995,998,1000,986,1022,956,994,985,987,989,3158,3159,458,960,472,473,4711,4712,4713,4806,4709,4710,1023,1025,1026,4787,4747,4749,516,524,514,4717,991,4776,4786,4782,4785] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5529,5548,5468,5546,4976,5441,5469,5549,4963,4962,4970,5550,5551,5556,4325,4323,4324,4326,4390,4392,4552,4554,4351,4370,4336,4337,5442,5445,4997,4999,4916,4533,4534,4917,4831,4833,4832,4921,4938,4933,4935,4834,4836] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [422,424,871,873,3451,405,406,1124,3458,3449,4221,843,862,4214,4218,4220,4223,4224,444,841,858,972,3460,4215,852,4178,4179,4219,3808,853,4242,4243,3783,1160,3453,1123,3809,3773,3774,3775,3772,1152] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2992,6037,6038,2985,2997,2998,2999,3000,6005,1441,6036,2996,1432,6072,6076,6102,6103,6104,2079,2086,2407,2414,2418,6113,2641,2678,3009,3011,2642,2440,2676,2677,5981,2961,2986,6006] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [188,204,3322,3323,206,187,1888,1976,179,180,2140,2137,2138,2141,2142,2146,2152,159,169,211,1894,1892] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4584,4879,4582,4583,6048,6049,6053,3596,3593,3594,3602,3592,3599,2110,3621,3623,6042,3274,2109,2097,4600,4601] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4725,3201,3203,5957,4719,474,2920,2926,473,3166,5931,5933,4717,4756,4757,2918] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5395,5561,5386,5388,6121,6118,6119,6000,6029,6030,6055,6093,4642,4644,5562,6022,6057,5380] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [5022,5025,6419,5428,6431,4989,5437,5057,6437,6439,5429,5445,4990,5444] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4168,4420,3867,3899,3868,3890,3892,4116,4141,4128,4252,4258,3901,4264] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1781,1782,1417,1418,1763,1764,1765,2114,2115,2117,1859,1857,1858,1440,2119] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3017,3278,3299,1430,2126,2127,2990,2123,1747,1748,1749,3296,2124] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4676,4677,5331,5396,5357,5329] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        