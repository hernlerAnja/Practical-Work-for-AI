
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
        
        load "data/3PUP.pdb", protein
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
 
        load "data/3PUP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1293,1295,1286,1288,1289,1292,1294,380,365,454,1308,363,381,435,433,434,1177,1178,1181,789,1189,1205,1206,1287,561,562,563,218,222,223,224,228,231,221,225,406,215,232,233,234,230,227,379,385,250,252,203,197,251,736,743,348,361,738,763,769,770,200,201,754,756,4411,4429,1316,4421,4422,1310,4454,1314,1309,1312,1315,4624,4637,4642,4643,443,444,4428,4430,1149,1165,1166,4405,4444,4453,4632,4634,4638,4641,1411,1413,1421,1396,4620,1395,1139] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3952,3953,3954,3967,3968,3969,3951,2885,3021,3022,3112,3806,3808,3970,3975,3946,3945,3947,3948,3220,3840,3841,3824,3836,3837,3825,3848,2855,2858,2861,2888,2890,2891,2889,2907,2908,2884,2886,2887,3020,2909,3018,3019,3406,3417,3420,3864,3865,2859,3413,3218,3219,3396,3395,3005,3393,3400,3446,3472,2876,2878,2879,2880,2881,2882,1769,1771,1770,1751,1752,1762,1746] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4413,1470,1471,1472,4168,4438,4129,4130,1400,4164,4166,4169,1404,1407,1436,1742,1780,4098,1779,4095,4401,4412,4439,4437,1499,1505,1507,1509,1510,4059,4131,4158,1748,1749,1753,1754] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1979,1980,1820,1964,1969,1971,4054,4070,4072,4049,4055,1961,1957,1762,1763,1785,1795,3971,3972,3973,3974,3975,3798,4080,3969,3101,3987] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2917,2919,2920,3013,2812,3284,3372,3301,3302,2693,3282,2918,2835,2666,2680,2811,2679,3012,3031] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1600,1082,2256,1080,1570,1571,1078,1079,1086,1106,2257,2261,2556,1087,2555,1566,1344,1343,1052,1055,1054,2531,2238,2244,2247,2249,2248,1572,1573,1576,1577,1564,1563,1565] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3883,3886,3885,5077,3483,3594,3572,3598,3599,3482,3519,3520,3566,3518,3595,3597,3634,3635,3908,3905] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4227,4225,3738,3739,3741,4229,4230,4231,4232,4222,4223,4235,4236,4901,4919,4910,4912,5219,5218,3737,3713,3745,3746] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1515,4061,1526,4185,1538,4586,4598,4608,1945,1946,1923,1935,4197,4196] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [848,849,862,863,937,939,940,907,825,826,1224,1227,976,1226,938] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3460,3462,4107,4323,4105,4121,4366,3831,3841,3823,4120,3832,4099,1744,1745,1746,4109,1743,4094,4098] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1450,1745,805,807,1448,1446,1707,1664,1461,1462,1182,837] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [261,258,260,262,263,715,374,644,645,177,27,355,356,625,28,153,154] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1499,1507,4059,4131,1523,4061,1524,4183,4158,1472,1400,4166] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        