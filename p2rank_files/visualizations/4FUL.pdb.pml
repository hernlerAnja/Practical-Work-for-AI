
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
        
        load "data/4FUL.pdb", protein
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
 
        load "data/4FUL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4890,3340,3619,3620,3337,461,3349,3350,3316,3336,4867,4866,4888,3348,462,954,1049,1054,1090,1091,1093,1095,1047,1048,1064,3699,3697,3650,3651,3652,3653,4406,3654,3655,4405,4419,4420,4421,3378,4921,4924,490,4954,4956,1051,1052,1053,1079,1118,4955,543,1081,475,476,3317,4952,4953,534,4889,4918,4917,4919,4891,4892,5028,5045,5044,5129,5012,5023,1126,4830,4855,5051,4915,4913,4914,1116,1117,4993] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5136,4576,4740,4529,4530,4532,4517,4598,5766,5767,4558,4560,4781,5768,4760,5120,5757,5759,5760,5679,5680,5138,5141,5165,4826,5762,5761,5119,5040,5124,5652,5653,5656,5179,5655,5202,5172,5200,5201,5663,6682,6683,5638,5664,4542,4543,4536,4550,4549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3155,3156,3158,3154,3169,6178,3144,3150,3157,6235,3168,1535,1533,1534,2565,2835,2836,2800,2799,2598,2832,3119,2566,6321,6202,6289,6320,2576,6293,6294,6292,6203,2181,6278,2180,2186,6234,2570,2571,2573,2564,2580,6169,6291] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3966,3967,4384,4385,3933,1252,1244,3941,4383,4449,441,442,942,943,945,944,3611,423,905,906,907,939,965,1212,1215,1196,3606,3607,3609,930,4655,4426,4425] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4931,3078,3084,3324,3361,4925,6154,4924,491,3083,3323,3067,3069,3325,3076,6128,6130,3075,4963,3065,3360,3347] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2241,1987,1989,222,219,2008,2238,2242,3820,3480,3481,3776,3813,3821,2246,3811,2239,2243,224,206,205,183,187,189,177,196,197,198,2071,230,229,3447] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5646,5648,5190,5193,5647,5654,5656,5228,5655,5192,5202,5199,5201,5639,5640,4166,4167,4536,5215,6607,6608,6651,6653,6655,5226,5227,6689,6690,5247,5252,5256,5261,5263,5216,5273,5270,6609] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5606,5591,5597,5599,6197,6336,6335,5796,5797,5772,4848,6219,4850,6253,6254,6227,6252] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4807,6246,6239,6250,6256,6259,2211,2209,3781,3750,3761,2210,3779,3757,3432] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [915,933,1066,1062,1065,1094,1135,4679,1143,1161,1164,921,1160,932,934,4675,4683,920,4688,1139,1136,1137] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [462,951,952,954,933,1066,1064,4420,4429,935] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2187,2189,2220,1481,1876,1511,1512,1550,1551,1495,1535,1532,1533,1534,1530] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        