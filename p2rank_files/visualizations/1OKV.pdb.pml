
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
        
        load "data/1OKV.pdb", protein
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
 
        load "data/1OKV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [186,7858,22,25,35,36,7883,16,550,551,1,17,7448,7449,7853,7817,7815,7819,524,525,533,534,536,628,7439,7447,222,5009,7881,7849,7850,7851,7848] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4536,4537,4538,4540,4541,5141,5145,5148,5174,5611,5613,5505,5506,4542,4543,4549,5605,5134,5533,5534,5112,5114,5117,5125,5133,4955,4956,5097,4712,5087,5088,4696,4594,4713,5090,5092,4556,4593,4595] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3380,2970,2971,4476,4479,4490,4640,4489,4977,4986,4987,4989,5004,3412,4978,4980,4981,4676,2961,5081,3404,3405,4455] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6641,6631,6636,6637,6638,6892,6861,6863,6890,6862,5672,8006,5675,5680,5681,5684,5685,5686,8012,8014,8046,8045,8007,8008,8002,8044,8003,6917,6918,5661,5663,5665,5667,6880,6881,6882,5662,5895,5905,5910,5908,5915,6655,5909,5670] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [102,695,95,721,664,680,688,1081,258,259,1160,1159,503,639,635,637,1080,1152,140,141,108,644,634,636,242,87,83,1052,1053,1153] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2375,2384,2385,1462,1455,2188,2372,1431,2401,1212,1214,1452,1457,1442,2398,3567,3528,3568,1232,1233,1231,2407,2410,2412,3536,3537,1208,1227,1228,2440] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7309,8822,8824,8005,8035,8037,8124,8150,8151,8152,8032,7306,5679,8006,5678,5686,7970,7971,7302,7300,8125,8121,8131,8810] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2605,2624,2625,2626,4932,4928,4930,4931,4963,2607,5098,5102,5121,5547,5550,5591,5592,5106,6792,5575,5563,5565,4964,2977] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3820,3797,3722,3728,3718,3724,3768,3769,2551,2921,3783,2680,2884,2542,2552,3468,3819,3473,3476,3478,2859,2509,2533,2534,2893,2890,3479,3485,3841,3720] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [2824,2828,2831,3492,3493,3673,3672,2829,4344,4346,4334,4335,4348,3527,4332,3653,3557,3559,3641,3642,3643,3646,3528,1225,2822,2832] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7368,7371,7337,7946,7951,7365,7362,7364,7399,7030,8258,8298,8297,7029,8261,7016,7012,8275,8319,8246,7957,7963,8296,7341,7954,8206,8196,8200,8202,8256,8198] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5884,5871,5880,5883,5832,5869,5870,5833,5866,6319,6626,6632,6633,6275,6278,5887,6318,6326,6317,6284,6289,6290,6291,6642,5875,5909,5908] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [510,511,1138,1139,1097,1112,649,645,653,7103,478,2339,475,477,488,1122,883] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1431,1434,1430,1418,1422,1455,2187,2188,2189,2179,2180,2173,1822,1866,1865,1413,1416,1831,1836,1456] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [7318,7941,7980,7610,5656,5657,7934,7601] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8056,8500,8466,8055,8045,6855,8043,8054,8504,6893,6854,6856,6891,8501,6898,6899] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3373,4470,4471,3403,3405,3371,3339,3368,3369,4479] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [3501,2840,3463,3500,3502,3456,3457,3458,1203,1204,3132,1216] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        