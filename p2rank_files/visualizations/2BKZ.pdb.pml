
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
        
        load "data/2BKZ.pdb", protein
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
 
        load "data/2BKZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1082,1094,725,1110,1111,694,674,691,1182,1190,1183,1184,1187,533,152,171,169,170,125,272,119,113,117,668,669,670,429,288,289,665,666,667] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5578,5674,4635,4636,4654,4756,4771,4653,4655,4597,4598,4599,4601,4603,4606,5667,5671,4773,5148,5149,5150,5152,5153,5154,5017,5666,5566,5573,5594,5595,5209,5194,5195,5202,5206,5016,5158,5175,5178,5186] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3011,3020,5038,3021,3430,4736,4700,5039,5042,5142,4514,4539,4536,4550,5050,5065,4549,3455,5049,5048] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [7472,7476,7481,7482,566,563,564,658,554,555,252,253,7483,216,65,66,30,7891,7916,26,55] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [8070,8183,8184,8185,8068,7342,8160,8855,8857,7333,8154,8157,8164,8034,5747,8039,8003,8004,8038,5740,5739,7339,7335,8037] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [1242,1487,1493,3617,1472,1482,1485,1486,2490,3586,3587,1244,2462,2456,2457,2433,2434,2435,1492,1257,1258,1263,3578,1261,1262,1239,1264,1461,1240,1238,3618] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [3692,3722,4382,3691,3693,3696,3698,3699,3703,3542,3543,3724,3723,3577,3607,3609,2874,2879,2880,2881,4396,2878,2872,1255,1262] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [5977,6905,6911,6917,5969,5971,5976,5970,6702,6693,6692,6697,8078,6918,6921,5728,6951,5956,5966,5745,5746,5747,8039,5722,5726,5742,5748,8047,8048] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [332,602,3382,3392,3384,367,351,376,590,591,324,3418,3420,3381,322,321] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [7062,7063,7429,7432,8294,7020,7401,7397,7398,7400,7404,7996,8330,8279,8308,8352,7373,7979,7984,7987,7989,7990,8229,8231,8233,8235,7370,7395,8239,8331] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [1203,149,151,289,395,146,394,396,1213,1189,1190,1211,1212,1054,1071,1086,1094] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2203,2210,1852,1410,2209,1894,1895,1867,2219,1861,1866,1868,2218,1460,1409,1443,1446,1448,1896,1485,1486,1412] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3818,3891,3770,3535,3869,3529,3833,2934,3778,2971,3768,3772,2943,2936,2937,2940,3518,3523,3528] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [1169,1168,1127,1142,675,677,679,683,1152,1139,1140,678,505,507,540,508] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [5159,5163,5652,5653,5611,5608,6853,5623,5624,5626,5167,5636,4989,4991] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5930,5944,5893,5931,5941,5927,6350,6379,6380,6378,5936,5932,6387,6702,6703,6694,6336,5894,5896,6687,6334,6345,5969,5970] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [4539,3389,4538,3394,3392,4507,607,3453,4513,3425,3423,3424,3419,3420,3421,3422,6,3430] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [541,542,7072,492,7117,7118,7119,7120,7121,540,493,7470,7471,7472,7466] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [34,641,598,623,35,36,83,84,298,81,59,60,37,643,624] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4780,4782,4799,5107,5108,4567,4568,4519,4520,4521,5125,5127,5106,4518] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [1692,1693,1425,1326,1304,1694,1909,1910,1911,1439,1908] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4851,4819,4824,5075,4808,5074,7842,7848,7879,5086,7881,7855] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5730,5717,5718,8011,8012,7634,7643,7635,7351,7974,8013,7967,7968] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        