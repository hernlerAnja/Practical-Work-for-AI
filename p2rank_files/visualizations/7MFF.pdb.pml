
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
        
        load "data/7MFF.pdb", protein
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
 
        load "data/7MFF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4254,4255,4253,4257,3855,3724,3723,4278,4678,4680,4260,4682,4274,4277,4280,4275,4317,4261,4262,4116,4117,4232,4233,4237,4677,4679,4681,4651,3732,3736,4662,3720,4761,4762,4765,4767,4769,3772,3773,3771,3726,3867,3869,3871,4215,4218,4012,4037,4287,4286,4315,4282,4649,4652] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [6019,6020,6022,6281,6027,6031,6033,6018,6379,6396,6421,6424,6425,6426,6843,6841,6401,5935,5936,5937,6441,6446,6842,6844,6846,6444,6445,6476,6450,5890,5896,6845,6925,6933,6034,6035,6176,6931,6383,6815,6932,5900,6397,6201,6202,5887,6439,6418,6417,6419] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4709,4696,4697,4698,4699,4747,4700,4093,6406,4748,6405,6912,6286,6289,4241,6256,6244,4125,6288,6863,6864,6895,6896,4730,4731,4732] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4249,3840,3843,4246,6255,6256,6257,6264,3839,3836,3841,3842,3834,6249,3833,6670,3825,4271,4268,4705,4708,4699,4700,6640,6641,6650,6652,6649,6888,6895,6896] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5750,5753,900,930,936,959,929,901,292,300,302,299,1286,1287,1292,1296,1288,1298,320,323,324,5762,5766,356,357,969,970] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4486,4488,4722,4731,4732,4485,4487,6434,4100,4477,4092,5997,6000,6003,6007,6413,6433,6435,6004,6005,4093,4748,6403,6410,6863,6864,6407,6870] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2156,2746,2749,2773,2750,2784,2187,2188,2185,2186,2819,7937,7923,7924,2743,2744,3152,7906,7907,7904] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5058,5317,5029,5030,5057,5059,5307,5318,5310,5311,4860,5144,5155,5157,4838,5264,5265,5266,5301,4830,4870,4876,4867] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4529,5993,5995,4560,4561,4564,4528,5604,5577,5578,5834,5986,5973,5966,5829,5830,5978,4509,5996] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3692,3878,3879,4198,4165,4166,4194,4177,4188,4189,3674,3675,3646,3658,3662,3678] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [5804,4573,5793,5777,5780,5778,5779,4538,5786,4571,5983,6304] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3636,3639,3642,3820,4140,4146,3819,6737,3615,6736] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5918,6146,6369,6034,6175,6030,6037,6038,6044,6366,6051,6367,6148] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3640,3629,3636,3649,6735,3607,3670,4140,3819,6737,3615,6736,6727] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        