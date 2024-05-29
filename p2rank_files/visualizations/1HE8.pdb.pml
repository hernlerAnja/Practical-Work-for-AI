
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
        
        load "data/1HE8.pdb", protein
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
 
        load "data/1HE8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [467,468,1190,3174,3913,2893,2894,2904,1201,1203,1224,1227,1229,1231,1186,3928,1072,1088,1091,1188,2901,2903,481,498,2871,497,1189,483,2878,482,4398,4399,4396,4397,4537,4538,4395,4336,4339,4338,4363,4367,4368,4371,4400,2889,2890,2896,2929,4372,3207,3209,3937,3938,3251,3253,4341,3252,1253,1254,4464,1255,1223,1216,4462,496,4463,1218,1220,4423,4426,4427,4421,4422,4428,4429,4432,4536,4539,3929,4543,4553,4366,4556,3927,4340,4559,4520,1262,1263] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4104,4106,4040,4084,4247,4248,5254,4037,4041,4712,4713,4268,5260,5261,5262,4266,4290,4050,4051,4044,4647,5174,5173,4691,4690,5146,5149,4676,4630,4334,4544,4635,4642,4649,4545,4547,5235,4546,5253,4655,4653,4628,4629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6288,6281,6285,6191,6195,6279,6189,6336,6337,6338,6519,6190,6172,6173,6176,6185,6992,7228,7014,7015,6998,6163,6164,6999,7000,7001,6184,6155,6158,6162,6524,6528,6529,6300,6310,6312,6318,6295,6292,6333,6321,6327,6314,6316,6537,6539] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1080,3933,448,1082,3891,3892,3893,1081,3520,3521,1102,3193,3195,3934,446,3161,3163,3164,3165,1390,3493,430,1352,1353,429,3160,3494,3518,3487,1388,1389,1358,1379,1381,3486,3488,3956,3957] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [668,670,6373,707,6370,6369,6374,4186,4188,4189,4190,1303,4174,685,689,690,691,6617,6506,6504,6618,6507,6622,1284,650,651,652,1285,6355,6113,6490,6112,6488,6489,6111,6487,6654,6655,6619,6094,6390,6391,6387,6389] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [183,3365,189,203,2424,201,204,212,211,3034,3035,228,2425,2426,2431,235,236] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1246,623,1293,628,625,629,630,632,1240,634,576,594,583,614,1271,1278,1282,652,1285,6589,6586,6588] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2902,4408,4409,2915,2615,497,2878,2904,4432,4433,2621,4471,2623] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4640,4644,1071,1057,4149,4150,4222,4226,4227,4182,1063,3946,3948,3947,1062,4232,4207,4208,4209,4212,4216,4217,4194,1070] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [438,1025,1345,1346,413,996,401,402,403,1107,1117,1022,1027,814,1013,1131,1116,1119,1120,791,792,783,786,787,788] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4961,4964,4999,5002,5004,4966,5000,4973,4516,4969,5001,5003,581,4502,4499,4500,1250] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4767,4794,4753,4796,6033,4754,4755,4756,6034,6032,6027,6028,6029,6030,6031,4779,4726,4727,4730,6065,6067,6068,6069] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [868,6323,6324,6329,6321,897,899,6363,6364,6189,6338,716,6218] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2431,3343,2419,3034,3035,2426,3362,3365,3367,3371,3345] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        