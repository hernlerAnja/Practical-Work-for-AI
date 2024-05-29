
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
        
        load "data/2UUE.pdb", protein
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
 
        load "data/2UUE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3411,3412,3413,4999,5012,5014,3388,4464,4488,3379,3381,4479,4480,5013,4987,2978,4996,4997,4988,2979,4685,4649,4498,4499,555,563,564,569] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [661,664,1080,102,94,141,95,671,672,680,721,634,644,637,638,639,635,636,259,257,140,139,87,84,82,83,88,89,242,1064,695,1052,1053,688,692,1081,399,1152,1153,1157,1160,502] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5621,5527,5617,5620,5622,4565,4546,4603,4547,4548,4550,4862,5615,5616,4705,5122,4558,4551,4552,5515,5544,5143,5144,5158,5124,5543,5127,4604,4602,4721,4722,5101,5102,5099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [7442,7443,7852,524,7875,7876,7877,533,534,536,549,551,186,525,35,36,628,222,34,7433,22,25,16,1,17,528,7841,7842,7844,5018] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5690,5691,5905,5915,5918,5919,5931,6641,6885,5677,6855,6856,6875,6876,5680,5682,6911,5671,5675,6912,5925,5457,5920,5927,5673,5672,8039,8040,6857,6886,6887,8006,8000,6651,5694,5695,5696] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2406,2421,2423,1232,1231,1431,1442,2383,2393,2422,2380,1452,1455,1214,2448,1208,1210,1212,1457,1463,1209,994,1227,1228,3575,3532,3533,3576,3536,3544,2447,1219,1221,1233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [8029,8031,8113,8115,8118,7294,5696,5689,7999,8000,8818,8820,8816,8144,8146,7296,7300,7301,7302,7303,7964,7965,8114,8145,8120,8121,8125,8804,5688] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1413,1417,1418,1430,1866,1873,1856,1864,1836,1837,1838,2189,1822,2173,1831,1455,1456,2179,2180] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3651,3654,4354,3567,3565,3536,3629,3680,3649,3650,3656,3661,2832,2836,2837,2830,3500,3501,1225,1226,1233,3535,2840,3682,3681,2839] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [7940,7945,7948,7331,7950,8269,8286,8287,8292,8291,8290,7393,8255,7356,7362,7365,7359,7358,7951,7957,8200,8313,8240,8190] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4938,4940,4973,5602,5108,5112,5601,2985,4686,2633,6802,5572,5575,5560,5585,4941,2617,2613,4942,5116,5113] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [6651,6643,6652,5879,5880,6288,5876,6336,6328,6329,6327,6636,6285,5881,6301,6323,6294,6642,5893] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3826,3827,3828,3822,3476,3484,3481,3487,3493,3736,3805,3777,3849,3726,3730,3728,2559,2895,2898,2901,2867,2892,2929] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [354,358,359,3177,388,366,1175,1183,1268,1269,3154,351] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7097,1094,1097,1111,1112,1113,7077,653,510,649,645,7449,223,475,477,478,1139,1122,2339,488,1138] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [6609,6615,6618,6432,6433,6625,6580,6603,6617,6275] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        