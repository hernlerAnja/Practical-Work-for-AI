
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
        
        load "data/2WEV.pdb", protein
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
 
        load "data/2WEV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7447,7856,7879,7880,7881,533,534,536,551,186,35,36,628,222,34,7888,7437,7446,22,25,16,1,17,524,525,527,7878,5018,7847,7849] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [242,664,1080,1081,87,102,139,140,141,92,95,672,695,82,83,89,637,640,638,257,635,636,259,503,634,644,84,85,1064,1052,399,1152,1153,1157,1158,1160] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4545,4547,4549,4551,4546,5526,5619,5620,5621,4557,4720,4721,4603,4602,5100,4965,5099,5101,4861,5102,5614,5615,5096,5097,5098,5542,4704,5514,5543,5157,5134,5126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1232,1228,1231,2387,2391,2386,2392,1452,1453,1457,1455,2379,2380,1442,2382,1212,1214,1208,1210,2447,993,994,1463,2419,3574,3532,3575,3544,1233,3543] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [6860,6879,6890,6880,5904,5914,5917,5670,5689,5695,5690,5693,5694,6915,8010,8011,6891,5681,8043,8000,8005,8001,8044,8002,8004,6916,5674,5676,5924,5919,5671,5672] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4986,4990,4684,4648,4995,4987,4989,3387,3410,3412,4996,4998,2968,2977,2978,4497,4463,5090,4498] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5687,5711,7298,7969,8148,8149,8150,5688,8003,8004,5695,7304,7300,7307,8118,8125,8129,8808,8810,8035,8117,8119,8124,8835,8033,8122,8123,8824,8820,8822,8094,8097,8098] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7397,8259,8194,7360,8200,8204,8198,8244,8254,8256,8273,7961,8295,8296,7339,7944,7949,7952,7954,7955,8317,7335,7369,7362,7363,7366,7014,7018,7010,7027,7028] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3804,3826,3827,3486,3492,3848,3727,3735,3729,3775,3776,3725,3731,3480,2558,2894,2897,2900,2928,2866,2891,2516,2540,2541,2545,2549,2559,3787,3789,3785,3790,2687] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3564,3566,3679,3650,3653,3654,3660,4353,3561,3649,3648,3655,3499,3500,3681,1225,2829,2835,2838,3534,3535,2839] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4937,4939,5601,5600,4972,5107,5109,5111,5573,5559,5574,6806,5571,5572,5584,4685,2612,2632,2633,2984,4940,5556,5112,5115,4689] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1431,1427,1430,1418,1455,1456,2188,2189,1825,2179,2180,2181,1822,1416,1413,1864,1865,1866,1873,1831,1836,1837,1838,1858,1859,1855,1856,2173] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1097,1112,511,7086,509,645,649,648,653,475,477,478,488,1139,1122,2339,1138] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3380,3411,3412,555,4487,4478,4479,5012,5011,5013,4463,569] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3175,3176,358,359,366,1175,121,388,1269,1268,3153,3162,1177,1179,1183,120,122,348,354,351] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5880,6340,6332,6333,6331,6640,6289,6298,6654,6655,6656,5917,5918,5879,5892,5875,5878,5841,6292,6647,6648] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4828,4850,5645,4821,5730,7622,7633,7635,7645] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [7933,7599,7939,5439,5666,5665,7608,7976,7977,7978,7932,7935] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [977,2847,3470,3507,3508,3509,3464,3465,3463,1203,1216,1204] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        