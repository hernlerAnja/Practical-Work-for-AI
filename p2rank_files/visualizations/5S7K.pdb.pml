
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
        
        load "data/5S7K.pdb", protein
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
 
        load "data/5S7K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2518,2519,2520,2521,2522,2523,2542,2544,2495,3759,2517,3597,3599,2645,2647,2772,3757,2639,2643,3030,3765,3773,3774,3758,3464,3481,3778,3494,3492,3491,3520,3519,3107,3108,3136,2490,3100,3103,3503,3593,3596,3592,3591,3034,2892,3048,3049,3053,2543,2631,2493,3066,3068,3070,2491,2773,3085,3075,3072,3083,2686,2703,2514] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1238,1239,1241,1242,1243,1244,1245,1133,1145,723,724,1103,1106,1270,1122,1123,1134,1258,1266,1268,1272,1251,1162,1166,716,719,1164,691,1252,505,1228,372,508,1237,504,655,507,654,662,688,1334,1323,327,251,253,254,255,152,759,99,127,126,128,130,131,125,302,304,306,150,129,104,151,239,100,102,101,682,684,640,247,636] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4324,4325,4326,4327,465,467,476,483,474,475,1211,1212,943,963,2320,2359,961,964,945,913,915,970,972,1000,1004,1024,962,450,4350,3851,4352,4390,4317,4351,3857,3872] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3769,3449,3450,3453,3454,3618,3770,3773,3950,3952,3720,3721,3817,3842,3846,3803,3813,3847,3979,3886,3766,3767,3754,3739,3871,3844,3868,3869,3865,3898,3819,4316] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3481,3778,3494,3495,3496,2520,2522,3779,3795,3796,3808,3797,4300,4217,4282,4218,3493,3487,4091,3123,3125,3127,4293,4301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1334,1370,1372,1335,1797,1788,1357,1358,1359,1121,1122,1123,1129,1654,739,741,1135,1136,1137,1853,1872,1138] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1095,1096,1512,1409,1315,1316,1320,1408,1379,1325,1326,1329,1332,1448,1092,1091,1514,1460,1449,1550] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [985,986,1530,1532,2307,2319,1524,988,2312,2313,2318,1565,2302,2305,2308,2306,1493,1534,1539,1541,2296,994,1006,1008,1494,1495,1496,1497,1520,1522] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3354,4708,4696,4702,4705,4706,4707,4717,3351,3352,3350,3363,3365,3994,3968,3970,3971,3931,3932,3958,3933,3960,3961,3962] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [469,471,1181,1183,461,491,666,668,696,697,694,679,672,1224] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [536,648,647,233,57,196,199,193,194,195,197,198,530] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2893,2894,3054,3055,3056,2880,3080,3081,3578,2866,3534,3536,2856,2864] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [887,1210,1212,1211,913,915,883,945,4352,4389,4390,2385] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2462,3023,3024,3025,2461,2463,2931,2932,2934,2444,2445,2448,3042] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [900,898,1203,1173,770,771,1201,714,833,864,866] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        