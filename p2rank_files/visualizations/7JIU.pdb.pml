
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
        
        load "data/7JIU.pdb", protein
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
 
        load "data/7JIU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5452,5813,5814,5815,5431,5432,5450,5734,5735,5819,5838,6381,5832,5835,5836,5863,5196,5207,5208,5239,5880,6382,6485,5514,5515,5516,6465,6466,6469,6470,6471,5488,5736,5737,6461,6463,6464,5261,5830,5472,5476,5451,5748,5513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4301,4302,4303,4304,5055,5074,5064,5065,5066,3972,3973,4260,4262,4299,4300,4349,4350,5755,5581,5067,5553,5549,3977,5579,5580,3975,3979,3974,5552,3971,4010,5524,5743,5746,5753,5059,5723,5730,5740,5823,5053,5520,5522,5544,5548,5542,5543] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2600,2588,2589,2594,2597,2318,2322,2326,2585,4083,4092,2329,2601,2431,2432,4100,4104,4106,2350,2353,2325,2341,2405,2363,2357,2356,4060,4062,4446,216,217,218,232,233,2365,4455,4451,4454,4447,4115,4117,234,4110,4421,2616,4412,4442] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [496,497,1436,486,1423,460,461,5036,5037,5038,5071,4248,494,1103,506,508,1106,5097,4599,4561,4600,4601,4602,4560,1443,4556,1440,1456,4570,4572,4249,488,387] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4664,5770,4682,4684,4710,4642,5772,5775,5766,5794,4709,4339,4366,4367,4644,128,4362,4364] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2569,2570,2575,2559,4423,4424,2576,2577,2578,2579,2580,2583,2584,2299,2466,7036,7042,7044,4076,4062,4074,2495,2496,2481,2482,2479,7094,2571,2558,2573,2574,7090,2515,2518] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5609,5610,5613,5614,5616,5654,1285,1286,546,3982,5576,5578,5581,1223,1225,1227,545,547,1259,1260,1222,1263,1264,1283,1254,1294,5698,1292,5606,5607,5608,5707] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5581,1225,1227,530,547,3982,5578,5579,5580,3975,3980,3974,3978,3949,5614,5616,546,5607] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [531,1114,5067,1229,1232,1234,5066,5088,5089,5371,1098,5370] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2930,2933,3037,2922,2952,2920,3022,3036,3589,3532,3552,3565,3558,3568,3328] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4399,5781,4371,4400,5776,5783,5479,5495,5496,5497,5762,5774,4382,4408,7051,7052,7054] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4139,4140,4130,4087,3808,3809,3810,3793,2360,2155,2382,4093,4096,4105,4107,4089,4094,4121,4127,4134] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1378,1412,1057,1377,447,1142,443,444,445,446,448,425,1163] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1126,1427,1428,1074,1348,1363,1364,1105,1075,5323,5332] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3339,3039,3042,3349,3348,3074,3075,3307,3309,3012,3033,3014,3120,3121,3122] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        