
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
        
        load "data/6GVI.pdb", protein
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
 
        load "data/6GVI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5493,5494,5876,5877,5512,5881,5898,5900,5925,5892,5894,5897,5966,6385,5323,5923,5258,5269,5270,5301,5240,6472,6473,6475,6359,6467,5942,6384,5797,5799,6464,6466,6469,6474,5514,6468,5513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4044,4047,4048,4042,4045,4046,4050,4052,4055,5615,1325,4076,4082,4411,4412,5611,5614,5641,5642,5643,5606,5792,4083,5582,5584,5808,5805,5586,4360,4361,4362,4363,4365,4366,4364,5127,5128,5129,4326,5117,5802,5126,5815] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [216,218,233,2504,2506,217,4173,4183,4188,4190,4517,4483,4516,4513,2741,2742,2743,4189,215,4508,4509,4504,4165,2463,2470,2466,2467,2461,2571,2572,2573,2545,2491,2498,2494,2497,2550,2546,2738,2730,2735,2726,4156,2585,2577] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4322,498,500,488,489,486,499,1521,1523,1195,5100,5133,1192,1526,4618,1541,4622,4623,4662,4664,4632,4321,4626,1556,4634,5099,4663] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4401,4726,5832,4772,5828,5834,4744,4746,4704,4424,4428,4429,128,4449,4706,5837,4453,4457,4460,4771] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2699,2700,2437,2620,2607,2623,2635,2636,2711,2717,2720,2716,2440,4486,4485,2613,2714,7039] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [537,538,539,1323,1324,5672,5675,5676,5677,5716,1384,5705,1354,5640,5787,5638,5667,5668,5669,5671,5670,5760,5769,1392,1381,1383,5708,5706,5641,1320,1357,1358,1361,1362] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [523,1206,1204,1212,1187,1327,1330,1332,1334,5128,5129,5141,5151,5431,5432,5441,5443,5150] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [5885,5126,5884,5882,5883,5148,5150,5468,5106,5118,5120,5886,5441,5443,5444,5890,5906,5907,5473] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4160,4161,3906,3879,3881,3882,3883,3892,3891,4200,4203,4207,4214,2248,2249,4178,4180,4162,4166,4167,4169,2523,4194,3912,3904,4212,4213] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6637,6735,6664,6786,7360,7378,7379,7359,7369,6742] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5652,6959,5684,6936,3781,5680,6938,5674,5678,5715,5717,4031,4032,4054] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5576,5578,6469,6474,5514,6468,5797,5799,5550,6472,6473,5876,5877] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1229,898,1131,1476,1113,436,438,439,440,1475,1146,1240] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        