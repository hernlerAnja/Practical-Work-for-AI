
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
        
        load "data/1FIN.pdb", protein
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
 
        load "data/1FIN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [644,1052,688,692,695,1080,1081,661,664,680,681,672,1154,1157,1159,1064,1160,429,634,637,501,502,1149,1152,1153,242,139,140,141,95,102,126,83,89,85,87,84,120,121,122,105,111,117,119,124,125,639,640,635,636,638,257,259,399,1167,1173,366] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5135,5136,5138,5140,4929,5141,4743,4584,4585,4586,4588,5003,5004,5145,5165,5581,5582,5653,5193,5196,4900,4756,4759,4760,4758,4640,4641,4642,4590,4596,4628,4605,5662,5565,5659,5660,5661,5668,5553,5654,5189,5173,5181] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7926,7951,7958,7507,7516,7517,536,524,533,628,525,551,7915,7916,7918,7919,7921,7949,7950,7920,549,18,22,25,1,35,16,17,186,222,36,528,223,7518] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [5026,5029,5034,5129,4537,4723,4724,4687,4536,5037,5050,5052,4502,4523,4526,4518,5025,3006,3015,3016,3420,3423,3425,3419,3448,5035,3450,3449,4510,4519] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2935,2938,2590,2596,2597,2932,2966,2931,2929,2904,3762,3763,3766,3767,3769,3773,3814,3828,3513,3518,3524,3530,3864,3865,3886,2589,3842,2587,2583,3765] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [8365,8366,8343,8031,8266,8314,8324,8387,8014,8019,7433,7436,7439,7409,8022,8024,7432,7430,7405,8274,8268,8270,7097,7098,8325,8326,7080,7467,8329] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [2873,4393,2876,3717,3718,3719,4391,4379,4380,3604,2869,2867,3538,1226,3572,3568,3602,3599,3692,3691,3571,3573,3688,3693,3694,3686,3698,4389,4377] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [7370,7374,7375,8039,7368,8199,8220,8890,8892,7376,8038,8219,8035,8073,8103,8105,8192,5734,5726,5727] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2179,2180,2187,2188,2189,1822,1825,1836,1865,1864,1837,1838,1820,2173,1831,1430,1413,1416,1418,1379,1411,1866,1873,1455,1456] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [6365,6367,6339,6374,5928,5932,5923,5931,5914,5917,5919,6674,6690,5881,6680,6681,6321,6323,5880,6336,6337,6338,5956,5883] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5062,5061,4795,4841,7877,4838,7908,7876,4806,4809,4800,7883,4810,5073,4811,5075,7917,7914] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [6924,6986,6919,6905,6908,6906,6953,6956,6957,6958,8113,8083,8114,5733,5734,5729,6907,5717,5718,5719,5721,5723,5728,8074,8071] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4749,4751,5113,4508,5114,4531,4530,4505,4551,4552,4555,4650,4651,4652,4653,4767,4768] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [649,653,1097,1122,645,647,648,1139,475,478,477,1138] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3573,1232,2416,2457,2459,3581,1219,1227,1233,1214,2401,2402,2404,2405,2482,2484,2485,2403,1208] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5148,5149,5150,5639,5640,5154,5598,5623,4976,4978,4979,6840] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3503,978,1216,1200,1204,1203,1223,3502,3168,3162,3177,3178,2885,3547,3545,1225,3508] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [1159,1022,1024,1064,1160,1023,1040,1041,1056,111,1176,1181,1183,1182,1300,1173,366,1175] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4946,4947,7072,7074,7050,4945,7989,7990,7991,7986,7987,7988,7082,8003,8001] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6,249,612,613,150,30,54] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [2569,2570,3485,3488,3489,3490,3491,3486,3487,2581,411,2571,2550,447,444] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        