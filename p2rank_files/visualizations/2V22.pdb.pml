
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
        
        load "data/2V22.pdb", protein
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
 
        load "data/2V22.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5544,4546,4547,4548,4549,4550,5617,4558,4565,5527,5620,5622,5515,5522,5616,4965,4966,5615,5543,5127,5101,5103,4722,5099,4604,4705,4602,4603,5097,5098,5100,5144,5143,5151,5158] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3412,3420,3388,3413,4996,4997,4999,4498,4499,5014,4488,4479,4464,4480,3411,3379,3381,555,569,4987,4988,4990,2979,4649,4685,4699,2969,2978] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [102,1064,94,101,95,1052,680,1080,1081,399,1153,1154,1157,259,1158,1160,502,637,639,1152,634,638,140,242,635,636,141,644,661,83,84,85,86,87,664] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7442,7443,534,536,7873,7875,7876,7877,7847,7852,550,551,1,628,35,36,222,25,7839,7842,16,17,524,525,528,533,527,5018,7433] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [6856,5918,6641,8007,6886,6887,8008,5671,5691,5695,5905,5680,5682,8000,8001,8006,5696,5690,7997,8039,7996,5677,6912,6875,5672,5673,5675,5915,5926,6911,6876,5920,5925,5927,5931] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1452,1455,1457,1462,1463,1456,1442,2381,2383,2386,2380,2385,3575,1232,1233,1228,1231,2415,2418,1212,1214,1208,1234,2448,2420,3576,3544,3536,3545] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2985,4973,2633,5112,5602,2613,2618,4975,2634,5108,5116,4686,5557,5560,5575,4941,4938,4940,4951,5585,6802,5572,5346] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3493,3849,3736,3726,3728,3730,3732,3805,3828,3776,3786,2546,2560,2550,2559,2929,3791,2892,2898,2901,2867,2517,2541,2542,2545,3476,3827,3481,3486,3487,2868] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [8255,7358,7356,7393,8250,7023,7024,7359,8190,8239,8240,8241,8200,7957,7331,7950,7332,7948,7951,7945,8269,8291,8292,8313,7362,7365,7006,7010] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [8031,8115,8118,7301,7303,8144,8146,8114,8816,8818,8807,8121,8125,8804,5688,7294,7999,8000,5689,7965,5696,7296,7300] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2837,2830,2839,4354,4356,4343,3536,1225,3500,3501,3535,3680,3682,2840,2836,2838,3654,3567,3649,3650,3651,3656,3661,4340,1233] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2188,2189,1430,1455,1456,1822,1864,1865,1831,1836,1417,1866,2179,2180,2173] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5876,5893,5843,5880,6643,6328,6329,5918,5919,6642,6651,6288,6644,6285,5905,5894,5897,6327,6652,6323,6336,6319] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1111,1112,1113,2339,7077,478,7097,649,477,1139,668,1097,1122,510,511,488,883,645,653] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [359,366,1268,3154,388,1183] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6223,6431,6275,6276,6618,6625,6273,6615,6616,6617,6433,6580,6582,6609] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [7212,7234,7547,7203,7546,7685] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6,594,613,268,53,54,7,5] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        