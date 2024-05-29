
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
        
        load "data/7U31.pdb", protein
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
 
        load "data/7U31.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1359,1360,1361,1366,4624,222,223,224,1345,474,1344,1358,437,438,456,460,467,453,454,455,471,4614,4632,4633,1199,1215,1216,1239,226,229,232,381,210,216,234,235,1232,4608,1228,1365,4625,4867,4863,4865,1362,1364,464,4884,4657,4885] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [204,234,235,801,1255,1256,582,781,583,774,776,777,364,365,253,202,794,796,349,203,252,199,201,1227,1239,1336,1337,1343,1345,366,1344,1342,1338,1339,475,508,827,808] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4041,4141,4144,4145,4147,3052,3051,3164,3157,3161,3001,3033,3034,3003,3006,3274,4029,4030,2998,3002,4139,4140,3385,4057,3148,3583,3146,3629,4058,3603,3610,3600,3307,3578,3579] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3015,3018,3022,3023,3031,3033,3008,3009,3034,4041,4145,4146,4147,1812,4018,4017,1830,1831,4001,4168,4160,4161,4162,3021,1822,1806,4034,4031,4030] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1823,4277,4251,4252,4267,4269,3991,4165,4166,1822,4164,4172,4161,4162,3021,2049,2050,2060,2083,2082,2053,3263,4180,2051,3262,3259,3261,1818,1820,1850,1855,2075,2073] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4332,4333,1813,1814,4263,4260,4334,4361,4369,4367,4371,4372,1802,1808,1809,4641,4616,4292,4642,4610,4615,1458,1461,1531,1532,1490,1494,1839,1840,4604,1530,1454,1559,1567,1453,1569,1570,1565] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [437,438,456,460,467,449,453,454,455,407,404,1360,222,224,228,386,400,4867,4863,4865,463,464,4657,4885,4868,4879,4883,4884,4880] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4387,4388,2036,4400,4804,4817,4819,4818,4394,4399,2013,2015,2017,4377,1586,1588,1598,1597,1456,2001,2014] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [864,888,863,988,989,990,899,901,956,817,1261,1274,1277,1276,1026] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [23,178,259,263,264,375,154,155,22,753,260,262,374,356,664,665,646] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2954,3447,3449,2821,2822,3155,3174,3555,3467,3466,3058,3059,3062,3063,3061,2977,2952,3485] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3701,3703,3758,4063,3665,4065,3827,3828,3619,3666,4079,4076,3790,3791,3792,5344,4070,4098,4078] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4162,3021,3025,3028,3027,3179,3180,3182,1822,2083,2082,3203,3204,3206,3185,3186,2060,3252,3254,1855,2073,2081,3189] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2046,2048,2049,2050,2060,2028,2030,2037,4251,4267,4269,2035,2076,1965,1966,2026,2024,1578,1580,2075] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4682,4876,4657,4885,4874,4652,4884,4624,224,4867,4865] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        