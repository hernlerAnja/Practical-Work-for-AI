
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
        
        load "data/3EID.pdb", protein
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
 
        load "data/3EID.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4454,4455,4482,4485,4457,4481,4459,4466,4467,4615,4617,4715,4716,4616,4634,4951,4497,4498,4499,4948,4949,4819,4950,4952,4953,5393,5461,4448,4452,4600,4977,5392,5394,4993,5468,5482,5485,5467,5469,4681,4682,4683,5483,4679,4680,5490,5365,5372,5008,5377,5462,5463,5466] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [591,593,595,590,592,465,589,599,1123,1118,1119,1122,1125,235,611,616,619,87,613,83,84,86,1017,1045,646,653,1046,630,645,464,1117,1029,362,132,133,134,89,90,92,594,251,252] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1177,1398,1377,1387,1390,1391,1392,1179,2368,913,2317,2329,2333,2324,2148,2149,1397,2323,2103,2104,2128,2115,2159,1174,1175,1199,959,3442,2341,2342,2343,3484,3485,1183,1184,3444,3441,3443,1193,1196,1197,1198,3454,888,916,2150,2155] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [487,497,499,7641,512,488,496,7216,7217,7648,7607,7609,7639,7640,7605,513,4872,7616,22,36,179,215,25,35,583,9,13,15,16,17,24,4894,1,4887,7577,7579,216,491,490] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4850,4851,4853,3321,3322,3320,4390,4400,4401,4387,4370,4868,2894,2895,3297,4544,4841,4842,4844,4845,2885,4580,4594] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [7764,7795,7906,7729,7904,5541,5542,7878,7885,7074,7075,7076,7077,8570,8572,8574,8558,8560,8561,5534,7070,7874] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5521,5523,5738,5743,5749,5518,5519,5525,5526,7770,7773,6686,6658,6661,7803,7761,5741,5728,5541,5542,5536,5537,5540,5543,5527,5528] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3533,3562,3566,3559,3535,3587,3554,3555,3561,3474,3476,3556,4259,4257,4261,2755,3584,3585,2746,1190,3410,3445,1198,2748,2752] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1795,1752,2099,1768,1761,1767,2105,2106,2113,2114,2115,1365,1352,1796,1794,1390,1391,1766] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [269,251,252,361,112,116,120,102,105,326,327,328,329,1123,1125,1138,1124,1139,1141,1146,1147] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [623,1062,1087,603,1103,1104,608] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3733,3402,3633,3754,3727,3641,3710,3631,3637,3635,2810,2811,2808,2845,2814,2817,2480,3732,3390,3396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7130,7167,7956,8015,7950,7952,7954,7960,8029,8046,8051,8052,8073,7721,8000,8001,7139,7704,7105,7127,7132,7133,7136,7715,7109,6798] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6460,5703,5666,6146,6468,6453,6459,6111,6118,6100,6102,6145,6144,6116] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4960,4961,4962,5448,4794,6619,5407,5410,5422,5431,4966,4958] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        