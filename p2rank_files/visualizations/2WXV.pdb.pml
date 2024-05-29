
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
        
        load "data/2WXV.pdb", protein
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
 
        load "data/2WXV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1110,694,115,113,117,1111,725,1082,114,667,670,429,1183,1184,1187,1188,1189,1203,1182,1052,1053,1054,1190,1212,1330,1341,1071,1094,664,665,533,674,272,687,691,711,718,701,709,710,1204,1206,1211,1213,149,151,152,150,169,170,171,119,394,395,396,146,289,428,287,147,668,666,306] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5015,5593,5665,5594,5572,5666,5577,5667,5670,5205,5565,5208,5194,5201,4755,5174,5177,4598,4600,4599,4597,4595,4596,5157,5016,5147,5148,5149,5150,5152,5192,5193,4770,4635,4652,4653,4654,4602,5151,5153,4771,4772,4632,5671,5672,5673,4634,4608,4912] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5038,3020,3021,5037,5046,3430,3431,4699,4547,4549,5141,3011,4735,5041,5049,3455,4548,4509,4535,4538,3454,4513] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [566,7938,55,7913,216,52,7494,7503,7504,7498,7505,252,253,554,563,555,658,65,66,564] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1238,1258,1261,1262,1263,3578,3617,3618,2490,3587,2462,2436,2446,2456,2457,2430,2433,2434,1472,1482,1485,1486,1244,1493,1242,1492,2444,2448,2451,1239,1240] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6945,6912,6913,6916,6918,5968,5969,5970,5975,8100,8061,5745,5965,5955,8101,5741,5744,5746,5747,8070,5723,5725,5727,6973,5722,5732,5721] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1255,3539,1256,3543,1263,3578,3577,3692,3722,3723,3724,3691,3698,3607,3609,3693,3696,3697,3604,3703,4382,3671,3672,3568,2881,4396,4398,4394] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2936,2937,2940,2943,2909,2934,2971,3869,3870,3518,3523,3529,3528,3818,3770,3891,3535,3778,3833,3772,3768,2730,3774,3865,2592,2601,2602,3830,3847,3828,2584,2588] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7420,7423,7426,7392,7419,7084,7417,7454,8313,8301,8310,8311,8316,8257,7042,7067,7071,7074,7085,8352,8353,7075,8330,8001,7395,8255,8261,8374,8251,8253,7393,8006,8009,8012,8018,8347] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5746,7355,8060,8206,8051,8090,8092,7362,7364,8207,8877,8879,8186,8179,8176,8056,8061,8024,8025,8026,5738,8022] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [367,3381,3382,3383,3385,366,3415,3418,3421,3392,3393,3412,376,591,604,333,602,605,606,607,590,322,324] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6692,6701,6693,5929,5930,5892,6344,6702,6335,6338,6379,6378,6373,6377,6351,5944,5943,5968,5969,5931,6386,5940] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [505,507,508,1169,696,1124,1127,707,1142,1152,1140,2369,518,678,679,683,540] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1410,2203,2209,2210,1852,1447,1448,1896,1446,1485,1486,1460,1866,1868,1861,2219,1461,1412] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5162,5610,5651,5652,5635,5190,5607,5158,5166,4991,4990] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7373,8033,8034,8035,5729,5716,5717,7665,7666,7996,7656,7657] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3551,2890,1250,3552,3182,3513,1246,1234,1233,3508,3507,3173] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2432,2460,2461,2463,2465,3628,3615,2435,2471,4076,2470,4073,3617,3625,3626,3627,3614,4069,4038,4072] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        