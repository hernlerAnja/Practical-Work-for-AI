
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
        
        load "data/6H0U.pdb", protein
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
 
        load "data/6H0U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1239,1338,1339,1344,1345,252,253,364,366,1337,349,1255,1256,1336,798,801,474,475,362,776,202,792,794,796,226,229,381,387,380,455,456,471,382,386,449,219,221,225,231,233,4621,4622,4646,1232,1227,1228,827,204,210,235,198,853,854,808,199,216,222,4873,4874,4645,4872,4891,404,390,1359,1360,1362,1363,1366,1189,1364,1475,1358,460,467,4613,1215,1216,1199,1465,1467,4639,1449,1450,4614,462,463,1378,436,464,438,4841,4851,4863,4843,4848,4852,4853,4854,4865,1437,1444,4845,1379,1380,4594,4595,4597] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4136,1823,4266,4149,4150,4151,4153,4154,4155,4157,3980,1812,1831,3023,1820,1821,1822,1855,1830,3020,3016,3017,3007,3010,1854,3013,2068,2077,2083,3197,3195,3251,2060,2061,3227,3229,2078,2081,2082,3181,4171,3253,3254,3255,4168,4169,4170,2062,2064,2065,3990,4006,1806,4019,4023,1799,1803,4007,1796,1845,4256,1847,2074,4241,4258,4240,1880,2052,2054,4235,2057,4030,4135,3025,3026,3157,3001,3246,3265,3171,3172,3173,3177,3019,3174,3178,3258,3191] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2993,3025,3026,3042,3043,3044,3140,3156,3157,3155,2995,2989,2991,4046,4030,4128,4129,4134,3374,4130,3567,3644,4018,3618,4047,3592,3604,3605,3585,3589,4019,4007,4006,4136] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2001,2002,2017,1605,4791,4793,4805,4792,4800,4806,4808,4366,4377,1586,1588,1592,1598,1597,4388,4390,4394,4383] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4323,4350,4356,4271,4321,4322,1802,1808,1809,1813,1839,1840,1490,1530,1565,1569,1570,1814,1567,4249,4251,4247,1494,4593,4631,4284,4280,4629,4630,4361,4604,4605,1458,4358,4599,1480,1532,1454,1559] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3655,3608,4054,3679,3690,3692,3654,3754,3755,3780,3781,3816,3817,3748,3777,3779,4065,4067,4068,4069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [863,864,817,1277,1274,1276,1025,1263,956,985,986,987,988,989,990,1026,899,901,887,889] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4423,5474,4417,3919,3920,3921,4421,4422,4185,3945,3947,4184,5145,5155,5161,5162,5165,5167,5475,4424,3923,5156,5174,4411,4414,4416,5136,5133,4427,4428,5126,5131,4415,3893,3895,3896] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1636,2354,2365,2374,2376,2684,2683,1624,1625,1623,1632,1633,1132,1626,1630,1631,2383,1130,1128,1129,1136,1137,1104,1620] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3148,2814,2944,2946,3436,3438,2813,2969,3544,3166,3455,3051,3052,3053,3054,3055,3147] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [260,178,262,263,264,356,645,647,753,153,155,36,22,23,664,665,375] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3632,3634,3636,3661,3662,3665,3666,3667,3698,3699,4558,4559,3660,4515,4545,4543,4023,4022,4312,4313,4300,4298] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [841,843,1724,4594,4597,1521,1496,1497,1509,1507,1485,1767,1522,1489,1493,1231,1487,1232] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        