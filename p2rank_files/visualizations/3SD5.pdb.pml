
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
        
        load "data/3SD5.pdb", protein
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
 
        load "data/3SD5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4558,4557,4559,4583,4584,4720,4580,4581,4582,4736,4737,4740,4135,4149,3174,4522,3131,3495,3450,3451,3447,3449,3132,3134,3136,445,446,3416,4150,3494,4610,3146,4579,4607,4609,4617,4611,1016,1017,1020,1023,1051,4605,4616,4674,4606,4615,4644,4645,4646,4647,4648,4683,4684,4685,4686,1044,1008,3109,3143,3145,3112,3113,472,474,475,982,983,978,1009,1011,460,4655,518,524,497,516,4133,4751,4526,4743,4696,4704,4715] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5451,4860,5370,5371,4874,4253,4254,4291,5456,5457,5459,5347,4275,4265,4869,5453,4729,4733,4734,5448,5450,4732,4814,4815,4819,4833,4836,4312,4436,4831,4731,4839,4517,4518,5458,4490,4435,4452,4290,4471,4474] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1141,1168,1170,3737,3407,3735,3758,3731,3755,3756,3730,1179,3729,4115,877,878,879,3437,3435,4113,4114,4155,3757,3401,3408,3402,424,425,426,3403,3405,407,408,839,897,899,1142,4160,875,876,887,4154,4156,4159,3409] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4901,5033,5003,5004,4882,4883,5041,5621,5378,5178,5180,5182,5379,5403,5404,5143,5144,5390] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3157,2878,2880,3119,3120,473,474,475,3088,3121,2861,2865,2862,2863,4593,4623,5861,4618,4616,4614,4590,4617,5836,5838,4655,2874,2881,5858] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2100,2101,2104,2109,2114,2115,184,185,186,171,177,193,194,3607,2105,165,175,218,217,2102,1858,210,3276,3277,2103,1852] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1004,1038,577,1003,907,908,952,947,950,905,949,578,727,726,831,1039,535,955,537,677,678,681,682,562,563,564,561,491,523] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4340,3816,3844,3846,4029,3867,4047,4049,4184,4196,3833,3834,3835,4073,4077] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [5941,5942,5909,5910,6013,5986,1430,2940,2952,2953,2954,2380,2369,2374,2375,2376,2390,5884,5989] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5951,5946,5952,5954,4499,3546,3228,3556,3557,3553,2058,2059,2060,2072,2073,3577,3575,4481,4480,4482,3547,3551,5956] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5331,5344,5346,4919,6362,6361,4888,5330,5336,5338,4887,6336,6338,6339,4942,4943,4916,4917,4945,6372,4948,4964,4966] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1803,1523,1316,1318,1317,2178,1329,1813,1815,1527,1351,1349,1302] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [914,809,810,818,819,822,824,793,803,807,804,805,1134,1135,1136,391,416,913,383,708,904,910,916,919,928,735,712,831,707,711,917] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [444,446,887,3416,4150,4154,4156,4159,869,867,885,886,4160,3412,3413,3414,424,426,4155] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4149,4151,4169,4170,4737,4823,4824,4135,4148,4150,869,4828,4845] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        