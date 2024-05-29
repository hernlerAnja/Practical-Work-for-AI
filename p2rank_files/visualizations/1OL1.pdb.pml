
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
        
        load "data/1OL1.pdb", protein
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
 
        load "data/1OL1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1080,692,695,1081,1160,95,94,399,637,638,640,635,259,1064,1052,1059,1152,1153,1154,1157,634,644,636,242,140,257,141,83,85,89,92,661,664,87] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4705,5097,5543,4550,4603,5615,5616,5617,5620,5527,5621,5622,4557,4558,4565,4546,4553,4555,4547,5127,5143,5544,5144,5151,5515,5155,5522,4965,4966,5107,5100,5102,4721,4722,5101,5098,5099,4604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [534,536,7874,7875,7876,7883,524,525,527,35,36,533,628,34,550,236,7432,7441,7442,222,7872,5028,7842,5027,7846,7851,186,7852,22,25,16,17,1,5020,5022,5024,5019,5018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6855,5682,7999,5691,5695,5696,5905,5918,5694,8006,8007,6886,8038,8039,6885,8005,7996,8001,6875,5925,5915,5916,5920,5671,5673,5675,5677,5672] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3410,3381,3388,3413,5014,4479,4488,4480,3412,4999,4997,2969,2978,4986,4987,4996,5091,4988,4990,4991,2979,4498,4499,4649,4685,4464,556,559,555] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2383,2421,2423,3576,2380,2448,3544,1208,1212,1214,1463,1209,1233,1227,1228,1232,1442,1231,1457,1452,1219,3533,3536,3575] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [8268,8239,7357,8199,7355,7330,8249,8254,7392,8195,7151,8284,8290,8291,7939,7944,7947,7949,7950,7334,8312,7956,8191,8189,8192,8193,8211,8188,7005,7013,7022,7023,7361,7364,7358] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7293,7964,8145,7998,5689,5695,5696,8143,8120,8124,8028,8030,8113,8114,8117,7295,7302,8142,8817,8815] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2542,2559,2560,3791,3805,3828,3827,3849,2895,2894,2929,3728,2892,3730,3736,3732,2517,2546,2553,3481,2867,3484,3487,2901,3493,3775,3776,3777,3726,2688] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1097,510,649,1139,645,475,477,478,1122,223,7448,678,650,653,1109,1112] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2836,2837,2839,4356,4354,4343,3535,3536,3500,3501,3681,3680,3656,3661,4340,3565,3567,3649,3651,3654,3650,2840,2832,1225,2830] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4938,4940,4941,5602,5129,5557,5560,5585,5601,5573,5575,4973,4974,5108,5112,2633,2985,5116,2615,2613,2617,6801,6802,4686] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1431,1413,1416,1417,1418,1427,1430,1422,1456,2189,2179,2173,2180,2181,1822,1864,1866,2172,2174,1820,1831,1836,1837,1838] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [463,510,511,512,462,7431,7432,7430,7435,223,7448,528,7081,7077,7078,7080,7076,7032,7426,7031,7425] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5843,5880,6329,5879,6642,6643,6652,6288,6285,6651,6294,6300,6301] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6614,6615,6618,6616,6617,6275,6625,6227,6223,6432,6433,6580,6609,6603] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [52,54,53,6,593,594,613,266,267,268] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [3131,1203,1216,3509,2848] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        