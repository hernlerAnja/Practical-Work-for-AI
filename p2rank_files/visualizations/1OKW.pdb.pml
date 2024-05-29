
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
        
        load "data/1OKW.pdb", protein
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
 
        load "data/1OKW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2979,3388,3413,4996,4997,4999,4499,5012,4498,4488,4485,3412,4479,5013,4464,4478,4480,3411,3379,556,557,3381,555,559,2978,4685,4649,4987,4988] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [7882,7440,7441,536,7850,7873,7874,7875,549,551,550,33,35,36,186,222,7843,5027,5032,7845,7809,7838,7839,7840,7841,5026,24,25,7811,16,1,17,524,525,533,628,5020,5022,5019,5018] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4550,5135,4545,4546,4547,4552,4558,4965,5544,5107,5127,5543,4966,5615,5515,5621,5623,4602,4603,4604,4553,4721,4722,5622,4565,5100,5097,5099,4705,5143,5158,5155] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2380,2383,1452,1455,1457,1462,1463,2188,1442,2388,2410,2412,2178,1468,2183,2415,1212,1214,2447,2448,2392,2393,1232,1228,1231,1208,1210,3544,3545,3576,3575] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [258,259,1153,1157,102,1158,1159,1160,1052,95,502,1080,1152,1081,695,721,399,637,639,1064,140,141,256,634,644,635,242,83,84,85,87,664,672,657] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6853,6854,6855,6873,5915,5918,5919,6877,6880,5671,5682,7998,5675,8006,8037,5691,5694,5695,5697,5905,6882,8007,5920,5925,6874,5677,5672,5673,6910] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [7955,8288,8289,8290,8311,7938,7949,7329,7330,7333,7948,7943,7946,7004,7363,7360,8267,7008,6979,7012,7391,8253,7356,7354,8198,8188,7021,7022,7357,8248,8238] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3536,1226,3501,3535,2836,3500,3682,2830,3565,3567,3654,2840,2844,3680,3649,3651,3656,3650,4352,4354,3661,2839,1233,1249,1225] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3849,2892,2929,3736,3728,2550,2559,2560,3828,3805,3791,3493,2541,2542,2898,2901,2895,2894,2867,2517,3827,3476,3481,3487] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [8142,8027,8029,8113,8144,8119,8118,8123,8116,7299,7300,8814,8816,8818,7294,7298,7292,7961,7962,7963,5688,5689,5696,7997,7998] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2985,2633,4972,4938,4973,5108,5112,5601,5602,2611,2613,2614,2615,2618,5131,5116,4941,4940,6802,5560,5585,5575,5557] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1097,1112,1122,2339,7080,475,478,7095,649,1138,1139,668,510,509,477,488,883,645,653] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1431,1430,1455,2189,1456,2179,2180,1822,1831,2173,2181,1417,1866,1836] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5918,5919,5843,5893,5880,5879,6329,6642,6652,6285,6288,6643,6328,5881,6336,6327] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [462,7076,7078,7079,7080,7075,7429,7425,7431,7447,461,463,510,512,509,649,1139,528] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [7926,7929,7933,7593,7602,7310,7970,7972,5666,5667,5440,7971] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3220,3221,3222,3223,3225,2802,3208,3209,3183,3210,3224,2804,2799,2800,2770,3250] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        