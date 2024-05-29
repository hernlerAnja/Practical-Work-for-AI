
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
        
        load "data/1URC.pdb", protein
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
 
        load "data/1URC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5101,5099,4550,4603,4705,5122,4604,4547,4548,4722,4862,5616,5620,5622,4546,4552,4558,4565,4965,5102,5097,5515,5151,5543,5544,5155,5127,5143,5615,5527,5124] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [7887,7842,7849,7850,7855,7877,7878,7879,7880,550,16,17,186,7446,25,34,35,36,549,1,7845,524,525,527,533,536,628,236,7436,7445,222,5022,7847,5019,5018] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3388,3347,4488,4464,4487,3411,3412,3413,4997,4999,5012,559,3379,3381,4479,555,2978,2979,4649,4987,4996,4986,4499,4498,4685,2969,4991,4988,4990] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6887,6886,6875,5905,5915,5918,6651,6641,5919,5931,6844,6856,6857,5680,5681,5684,5690,5696,8003,5671,5695,5691,5694,5682,6911,8009,8011,5925,6876,5920,5672,5673,5675,6912,5677,8043,8000] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [102,95,1081,92,1080,664,672,680,681,688,695,503,634,644,639,635,636,637,638,259,399,257,140,139,141,83,84,85,89,242,87,1152,1153,1064,1157,1158,1160,1052,502] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1231,1232,2406,2421,2422,2423,1455,1462,2380,2381,2383,1452,1442,2408,1214,1208,1209,1210,1212,1228,1234,1457,1463,3544,3575,3536] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [8147,8149,8124,8117,8128,7968,7297,8032,8034,8118,8121,8093,8096,5688,5689,5696,8002,8003,7299,7303,7304,7306,8823,8819,8821] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1417,1418,1430,1455,2188,2189,2179,2180,1864,1866,1873,1413,1858,1836,1837,1838,1820,1822,1831,2173,1456,1434] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7361,7362,7359,7396,8253,8255,8258,8293,8294,8295,8272,7943,7948,7954,7334,7335,7365,7951,7953,8316,7338,7960,8203,8243,8193,8197,8199,7022,7023,7024,7368,7006] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3535,1226,1225,2830,2836,3680,3682,2840,3501,4354,3565,3567,3649,3651,3656,3654,1233,3650] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2613,5112,5557,5560,5575,5116,4938,4940,4941,5601,5602,5585,2615,2617,6802,5572] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3828,3826,3827,3493,3736,2559,2560,2901,2895,2894,2892,2542,2546,2550,3791,3849,3726,3730,3732,2553,3805,2929,2898,2867,3481,3487,3484,3486,3476] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [647,649,1139,653,666,1094,1097,477,1138,1122,475,478,1112,1113,7082] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [6651,6643,6652,6288,6328,6285,5880,6299,6327,6294] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3545,3540,3575,3586,3572,3573,3585,4033,4034,4032,3584,2391,2418,2392,2420] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3465,3466,3464,977,3508,3509,3510,2848,2881,1220,2880,3140,3471,1216,1203,1204,3131] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        