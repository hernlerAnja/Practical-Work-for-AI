
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
        
        load "data/5NEV.pdb", protein
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
 
        load "data/5NEV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [248,1158,670,1086,1087,687,694,686,264,265,146,93,678,1058,95,101,1060,701,147,108,91,92,89,641,642,644,646,640,650,657,643,667,1166,1071,1157] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5108,5111,5527,5528,4541,4542,4549,5126,5119,5142,4705,4706,5598,5605,5607,4949,5085,5087,4587,4530,4532,4533,4534,4536,4689,5081,5091,5082,5084,4588,5599,5499,5506,5512,5604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3414,3415,4980,4981,4983,4481,5075,4445,4998,4482,4483,4683,4633,2980,4669,3422,3390,4971,4972,4974,2971,4472] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7862,7863,542,7864,530,7429,228,7839,31,192,7430,4,40,42,539,531,533] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [483,484,7066,7069,2349,7436,7062,7065,7064,7083,7084,7085,229,1118,654,672,1145,1103,1128,659,1100,1115,651,655,889] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2613,2615,2616,2617,2619,2620,5586,2636,2987,4670,5556,5557,5558,5559,5560,5544,2634,2635,4957,5095,5585,5541,5094,5096,5100,4674,5097,5104,5092,6790,4924,5569,4922,4925] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [8133,8131,8112,8803,8805,8794,7987,7986,8018,5694,8013,8016,8105,8102,8107,8791,5679,7287,7288,7289,7281] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [8226,8227,8256,8300,8228,6968,7927,8278,8279,7318,7937,8187,7932,7938,7944,8179,8181,8177,7342,7343,7380,8242,7139,7001,7010,7011,8239,8236,7352,7345,7346,7349,6997,6993] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6282,6287,6632,6273,6317,6315,6624,6639,6630,5867,5868,5881,6631,5864,5885,5869,5878,5882,5891] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1428,1432,1423,1426,1427,1876,1874,1870,1832,2191,1875,1835,1444,1441,2198,2183,1440,1450,2189,2190,1841,1846,1848] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3790,3793,3807,3778,3779,3851,3728,2519,3829,3830,2561,2544,2552,2562,2894,3738,3734,3478,3483,2873,3495,2869,3730,2903,2900,2896,2897,2931] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [8521,8523,8338,8339,8340,8369,8371,8885,8886,8584,8574,8576,8605,8606,8607,8889,8347] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [7297,7299,7958,7959,7960,7298,7954,7295,7591,7592,5696,7952,5650,5655,5714,5694,5693,5663,5664,5667,7987,7986,5716] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1280,1281,1189,1301,3179,3156,392,394,1284,1285,365,3178,3147,393,364,372,1181] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3503,1255,3538,1252,1222,1223,1236,1253,2848,2850,3132,3142,2846,2847,3143,1209,1210,1213,1214,3512,3505,3511,3509,3510,3537] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [5721,5726,5630,4835,5725,7627,7605,7628,4807,4813,4805,4806] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3577,2420,2421,2423,2425,2393,2394,3544,3542,3574,3575,3586,3588,4035,3585,3587,3584,2430,2431,4036] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [3922,4436,4437,4158,3891,3920,3898,4125,4123,4135,4156,4157,3889] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        