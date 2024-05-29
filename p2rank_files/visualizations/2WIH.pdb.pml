
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
        
        load "data/2WIH.pdb", protein
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
 
        load "data/2WIH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1110,113,718,1111,119,725,1082,114,429,1183,1184,1187,1188,1189,1182,666,532,664,665,674,272,691,687,117,693,694,709,668,667,669,670,1190,1087,1084,1085,1094,170,171,288,289,285,287,147,149,151,152] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4756,5016,5148,5158,5594,5149,5150,5151,5152,5153,5154,4600,4601,4653,4654,4655,4597,4598,4603,5014,4943,5015,5175,5177,5178,5186,5193,5194,5195,5202,4773,4636,5595,5666,5573,5663,5566,5667,5578,5206,5209,4631,4633,4635,5674,4609,4913,5668,5673,5671,5672] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5038,5047,5048,5050,3455,5142,4549,4550,3454,4514,4510,3430,4539,4536,5039,5042,3021,4700,4736,3011,3020] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [566,7939,7505,55,216,7495,252,7504,253,554,563,66,658,65,555,558] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [8171,8091,8093,8168,8871,8178,8873,8857,7370,7362,7366,8027,8199,7353,7356,7358,7363,7365,5763,8197,5740,8061,8062,5744,5746,5747] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1238,1244,1239,1240,1242,1472,1482,1485,2490,2436,2430,2433,1486,2451,1258,2462,2457,2434,2435,3617,3618,1257,1262,1263,3578,1261,3586,3587,1492,1493,1024] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2878,2881,4396,3722,3723,3724,4394,3607,3609,3693,3696,3672,3539,1255,1262,1263,3577,3578,2874,2882,3543,2872,3692,3691,3698,3703,3670,3671] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1204,1211,1213,1054,1190,1212,1071,1188,1189,1203,146,142,147,149,394,396,395,289,428,306] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5159,4989,4991,4992,5161,5162,5163,5653,5652,5167,5608,5611,5636,5623,5624,5625,5626,5191,5024,3027,5627,2655,4737,5042] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5722,5723,5742,5745,5746,5747,5748,5956,8071,8062,5726,5728,6913,6914,6917,6918,6919,6974,5966,5969,8101,5945,8102] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7418,7455,8308,8293,8322,7421,7424,7427,7420,8344,8019,8366,8247,8245,8249,8002,8007,8010,7394,7393,8253,7396,8013,7086] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1896,1852,1895,1894,1861,1866,1868,1486,2219,2203,2211,1443,1446,1448,1460,1485,1481,2209,2210,1412] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [675,679,677,680,683,696,1142,1124,1127,1169,7158] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2934,3529,3535,3870,3891,2971,3778,2937,2940,2943,3518,3523,3869,3528,2936,3830,3833,3847,3818,3828,2584,2588,2601,2602] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6703,6336,6345,6380,6378,6352,6350,5948,5930,5941,5944,5945,5893,6702,5894,5896,6693,6694,5932,5969,5970] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2934,3770,3772,3768,3529,3535,3891,2971,3774,3778,2937,2940,3523,3869,2936,3847] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [591,602,321,3420,368,370,376,3418,3381,3382,3383,366,3412,367] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4521,4544,4763,4519,4780,5126,5127,4662,4664,4565,4567,4568,4782,4518,4542,4543,4778] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        