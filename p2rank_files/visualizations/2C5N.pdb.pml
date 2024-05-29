
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
        
        load "data/2C5N.pdb", protein
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
 
        load "data/2C5N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [120,122,1064,1160,1052,1080,1152,1081,680,681,682,688,695,721,1053,399,640,259,1153,1154,1157,502,639,242,634,644,638,635,140,636,119,121,257,139,141,82,83,88,89,95,664,672,84,85,87] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5617,5615,5616,5620,5527,5622,4705,5543,4548,4550,4547,4557,4558,4565,4546,4551,4552,5127,5544,5143,5144,5151,5155,5135,5156,5158,5515,4965,5124,5101,4722,4862,5103,5099,4603,4602,4604,5100,5102,5097,5098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3412,3413,5013,5012,4488,4464,3381,4479,4480,555,3379,569,563,566,4685,4649,4498,4499,4987,4996,4997,4999,4988,3420,2978,2979] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7875,7876,7443,22,7852,7877,549,551,1,550,35,36,186,34,16,18,17,25,524,525,533,536,628,528,7433,7442,222] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5671,5672,5675,6857,6875,6912,5677,6856,6876,5691,5905,5694,5915,5918,5919,6911,8007,8008,6884,7997,5695,8039,6651,6886,5680,5682,5690,5696,8006,7996,8001,7998,8000,5673,5920,5925] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [7999,8029,8031,5712,8000,7303,7965,8145,8146,8144,8818,7294,5688,5689,5696,5695,8816,8121,8125,8113,8114,8115,8120,8118,8804,7301,8820] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2414,2415,2418,2382,2387,2392,2393,2380,2381,1455,1212,1214,1208,1209,1228,1231,1232,1234,1442,2448,1452,1457,2420,3575,3533,3574,3576,3544,3545,3536,2447] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [8255,7356,7358,7393,7152,8250,8252,8240,8249,8218,7014,8291,8292,8269,7331,7332,7359,8200,7957,8313,8194,8196,8190,8239,8241,7365,7362,7006,7010,7024,6981,7023,7940,7945,7948,7950] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3651,3654,4354,3562,3565,3567,3653,3655,1225,3501,3682,2832,2836,2830,2837,2839,4356,3535,3536,1233,3649,3650,3656,3661,3680] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2898,3791,2867,2892,3730,3732,3736,2550,2517,3827,2553,3805,3828,3849,3726,3728,3481,3487,3493,2541,2542,2546,2560,2559,2901,2895,2929,3776,3777,3476] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4940,5602,5560,5585,5601,5108,5112,5113,5116,4690,5575,2614,2615,2613,2985,2632,2633,4941,4938,4973,4683,4686,6802] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2180,1379,1825,1822,1416,1413,1418,1866,1864,1865,1873,1860,1836,1837,1838,1856,2189,2173,1820,1831,2188,1422,1430,1427,1431] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5879,5876,6327,6328,6329,6288,6285,6636,6294,6336,5881,6651,6652,6643,6644,6642] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1138,1097,1122,510,649,477,1139,475,478,488,223,645,653,650,1111,1112,1113,1109,2339,7082,7449,7097] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5472,5911,5912,5938,5853,5773,5756,5758,5823,5822,5974,5854,5936,5806,5826,5815,5816,5819,5726,5481,5486,5777,5722,5725] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4822,4829,5638,5646,4571,7641,7618,7629,7631,4851,5731,5658,5642] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [6609,6431,6432,6433,6625,6223,6618,6615,6616,6617,6275,6276,6580] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1173,364,366,1174,1159,110,1160,111,1024,1041,1176,1181,1182] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3465,3466,977,3471,3510,3509,2848,2881,1216,1204,1203] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        