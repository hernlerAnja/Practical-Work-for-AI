
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
        
        load "data/3LJ3.pdb", protein
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
 
        load "data/3LJ3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4671,4672,4693,4695,3267,4696,452,453,1067,1068,1070,1071,909,911,1040,1042,4247,3550,3551,3584,451,930,3298,3271,3301,3266,3268,3244,3628,3630,4864,3629,3583,3585,3586,4230,4233,4232,4242,4245,4246,4248,3309,3581,3580,4256,4257,3279,3280,3281,4725,1029,4761,1028,1054,1024,1031,1062,1063,1066,1055,4759,1057,533,4760,1025,3247,3248,1023,1030,481,467,4833,1091,4724,4836,4817,4827,1090,1099,4660,4697,4694,4721,4722,4723,4835,4937,4850,4935,4662,4856,4853,4720,4718,4719,4798,4787,4793,4796,1089,4797,525,523] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5540,5541,5544,5545,5546,5547,5536,5539,5458,5459,4416,4417,4973,4567,4568,4357,4358,4359,5538,4949,4987,5431,4982,4976,5443,4369,4566,4927,4928,4548,4943,4547,4944,4629,4858,4630,4843,4932,4939,4946,4628,4845] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3085,3086,3087,3088,3089,3098,3081,1519,6027,3075,5970,2538,2539,2507,2506,3050,2741,2776,2777,3100,2773,2175,2176,2177,2178,6088,2511,2513,2517,6121,6113,5994,5995,2173,2174] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4257,920,921,4211,4212,4275,4276,4253,4254,3538,3871,4251,4252,3898,4210,3895,3570,3572,3537,1185,1214,3540,3542,3864,3861,1223,3897,939,941,430,432,433,431,3547,3548,414,415] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5378,5385,5571,5551,5562,5563,5567,5568,5569,5570,5370,5376,4653,5552,6044,6046,6062,4622,4655,6011,6019,5989,6018,6102,6101] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2149,2155,2142,2184,2186,6041,6042,6048,6050,2185,6069,4595,6037,6038,6047,6035,6036,4612,3688,3691,3692,2196,2199,3710,3712,3681,3693,1939,1940,4610,4611,6030,3363,6031] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [853,856,858,854,855,857,859,830,1157,1158,641,625,624,783,785,787,818,782,793,796,760,762,874,756,626,753] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [481,3007,2996,3290,482,3254,3255,3256,3009,3014,3015,3000,4728,4766,4767,4768,4736,3292,3278,4729,4730,5945,5921,5923] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4174,4178,4144,4199,4201,4441,4285,3977,3979,3956,4296,4129,3978,3990,4015] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [589,593,599,530,531,1082,497,560,547,563,585,1079,1047,1107,1129,596,706,994,705,592,1049,556,557] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2229,2231,2234,3411,3412,202,219,2227,2228,1965,201,203,2053,2003,174,3743,227,180,184,186,193,195,194,2235,3741,3742,2240,1971,1969,1970] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4936,4934,4935,4237,4941,4960,4937,4527,4522,4517,4239,4267,4526,4246,4248,4245,911] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [908,909,910,911,1041,896,4267,4526,4528,4494,4266,4452,4485,4493,4495,4496,4508,4517] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5664,5666,5657,5109,5108,4992,5011,5013,5014,4994,4996,5269,5466,5138] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3518,394,439,440,395,397,3520,3521,425,434,437,3533,3238,3237,3240,459,460,461,3233,455,458] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5348,5319,5321,5557,5386,4687] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        