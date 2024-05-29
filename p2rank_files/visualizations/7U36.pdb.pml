
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
        
        load "data/7U36.pdb", protein
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
 
        load "data/7U36.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1811,1812,1829,1831,1821,1822,1823,1830,4264,2053,2055,2060,2056,3206,4015,3998,4144,4141,4142,4158,4160,4161,4164,4165,4157,4159,3259,3261,3255,3266,4014,4027,4038,3033,3024,3025,3028,3031,3027,3180,3179,3182,3185,3181,3254,3015,3034,4143,3273,3252,3253,1845,1850,1820,1855,3023,2067,2083,2082,1878,2072,3018,1854,3022,3189,2081,3186] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [219,223,224,4629,4630,222,225,226,4654,386,4880,4881,4882,407,216,210,228,387,4611,4619,4620,4621,4864,4865,4860,4861,436,4603,4605,1365,1366,1344,1345,1358,1359,1360,1362,1199,1215,1216,1239,460,467,471,454,456,232,234,235,229,380,381,382,453,455,474,1228,4653,4876,4877,4867] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4137,4135,3051,3165,3274,4143,3161,3164,3573,3575,4138,3560,4026,3626,4055,3600,4136,3002,3003,3004,3005,3014,3034,3052,3033,3591,3593,3148,2998,3001,4027,4038,4144,4141,4142,4054,3597,3580,3381,3382,3307,3576] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1227,1255,1337,787,798,801,1256,1336,508,582,583,777,349,776,781,233,235,252,253,198,362,364,365,366,475,761,202,794,796,1239,1342,1338,1228,853,826,827,808,210] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1839,1490,1493,4601,1530,1480,4607,4608,4612,4613,1458,1461,1813,1814,1531,1567,1569,1570,1532,1454,1559,1809,4292,4638,4329,4369,1802,4330,4331,4253,4257,4260,4366,4358,4364,1808] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [22,23,178,153,155,36,261,263,264,356,375,645,753,664,357,260,262] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4825,1592,1597,1598,1575,1586,1588,2001,2017,2036,4397,4814,4815,4255,4384,4385,4374,4801,4800,4813,4396] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [864,863,1277,990,1276,1274,1278,988,1026,888,899,901,956,963,989] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3060,2977,3062,2821,2822,3463,3464,3059,3061,3063,3174,3552,3058,2952,2954,3155,3444,3446] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4863,4864,4860,4619,4621,4654,4881,4882,4644,4871] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4062,4063,4073,4076,4067,3787,3789,4075,3662,3698,3700,3823,3825,3788,3663,3616] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        