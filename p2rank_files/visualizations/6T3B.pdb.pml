
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
        
        load "data/6T3B.pdb", protein
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
 
        load "data/6T3B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4835,4836,4832,4833,4834,4863,4975,4976,4957,4862,4864,1029,1031,1062,1063,4837,4973,4996,4351,4989,4990,4993,4803,4775,4777,4800,3606,3607,3303,452,453,989,988,3323,3324,3327,4811,4812,3329,3333,3334,3335,3336,3337,872,1003,891,985,1001,1027,1028,1024,3641,3637,3638,3684,3686,5006,3640,3642,4350,4365,3365,1055,4858,4859,4860,4865,4869,1054,4898,4927,523,525,1015,1053,533,4933,4938,482,4899,4900,4901,467,468,990,1016,1014,1023] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4685,4476,4477,4542,4543,5673,5674,5675,4488,4703,4704,4705,4474,4487,4521,5128,5586,5120,5127,5587,5089,5113,5666,5664,5667,5562,4481,5067,5084,5066,5068,4684,4741,4742,4982,4987,4984,4986,5072,5090,5092,5086,4769,4771] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [431,432,433,881,882,414,3600,3603,3592,3593,3599,3594,3596,3598,902,415,1190,1152,4369,4370,4371,4372,4374,4375,891,3605,3953,3918,3920,1181,3928,3951,3954,4328,4329,4330,4392,4393,4394,3628,3990] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3278,3069,3071,3052,3310,3311,481,4908,3312,3062,3064,3065,3063,4876,6033,6055,6056,6031,4869,4870,4867,4868,4871,4872,4907,3348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3145,3141,2810,2624,1501,1505,2821,1497,3131,3143,3144,3142,3155,3156,2563,2795,2585,2785,2786,2791,2823,2819,2822,3106,2787,3104,2557,2552] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [4256,4292,4403,4012,4013,4285,4319,4414,4415,4287,4571,4254,4258] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [6191,2563,6105,6106,6163,6075,2133,1495,6137,3137,3131,3144,6079,3145,2557,2559,2552,2553] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3169,2937,2936,3187,2903,2904,2905,1259,2876,2906,2880,1779,1783,1998,2380,2384,1773,1776,1759,1766,1767,2379,1256,3177,3179] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3605,3607,453,872,891,1001,4365,4374,4375] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [6149,6153,2151,2164,4733,4734,4752,3738,6140,6142,6134,3419,3744,3747,2163] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2200,168,3799,174,178,186,188,2206,189,2192,2195,2196,3468,213,1936,1940] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5385,5386,1050,565,566,4953,4935,4936,4939,1052,5415,5417,519,5371,5372,5414,5416,5375,5376,5377] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5513,5504,5506,5694,5698,5699,5700,6130,6157,6129,5679,4795,5498,6098,6100] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [6478,5555,5163,5164,6479,6457,6459,6477,6484,5140,5174,5175,5547,6485,5184,5185,5552,6483,5546,5141] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4604,4609,4610,4611,4612,4614,4618,665,651,653,859,4626,648,649,657,1117] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5638,5442,5452,5453,5457,5578,5659,5750,5749] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3808,2194,3467,2187,3804,3807] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        