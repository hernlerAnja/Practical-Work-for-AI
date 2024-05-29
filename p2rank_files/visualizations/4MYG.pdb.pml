
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
        
        load "data/4MYG.pdb", protein
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
 
        load "data/4MYG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [185,186,139,138,280,743,293,761,763,768,769,772,764,749,144,141,187,295,1232,1235,1136,1227,1230,562,1231,1229,564,744,745,297,1236,1237,782,783,784,795,821,820,774,775,1129] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3096,1478,1480,1731,1732,1733,1934,1484,1479,3089,3092,3093,3080,3081,5329,5330,3424,1908,1917,1918,1919,1920,3426,5371,5332,5333,5336,5337,5339,3383,3389,3391,3060,3065,3421,3422,3067,1477,1476,1454,1502,1504,1493,1313,1503,1909,1485,1483,1458,1457,1345,1347] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4655,4656,4657,4658,4662,4646,4647,2601,4214,4240,4241,4242,4218,4219,4215,4216,4217,4231,4211,4672,355,4220,358,4207,4206,681,683,686,672,688,651,653,2592,2600,346,645,2631,2633,341,350,351,342,343] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3888,3965,3967,3968,2937,3018,3513,3502,3505,3506,3497,3499,3533,3867,3526,3559,2876,3521,3520,3522,2924,3874,3973,3974,3969,3970,3975,2925,3027,3033,3034,3035,3031,3482,3483,2923,3021] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4051,2586,4047,5288,5290,2570,2571,4055,4062,4232,3117,3118,3119,4065,3113,4068,363,4072,3144,4067,3153,4061,4069,4013,4054,4064,5281,365,372,369,379,381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1323,1324,1326,1327,1329,1330,1316,1317,3110,406,1314,1309,5319,5324,5309,1494,379,381,372,3107,3108,3109,5313,1275,1300,2538,2551] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [413,1251,1253,1260,1261,296,297,1236,1237,1238,411,313,453,162,390,415,165,167,389,391,388,386,387,385,323,324,332,333,163,164] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [355,4220,4221,4223,358,4469,4470,4471,4218,4219,4215,4216,4217,4658,4466,4467,4468,4192,4195,4086,4081,4082,4083,4085] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2912,3839,3975,3976,3998,3989,2924,3874,3973,3974,3033,3034,3035,2923,2901,2902,2904,2906] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3910,3911,3912,3898,3899,3640,3926,3590,3591,3637,3596,3593,3594,3567,3892,3603,3605] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1498,2246,2254,1439,1891,1904,1471,1472,2227,1869,1871] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2769,2777,3044,2750,2768,2776,2780,3042,2779,2918,2751,3057,3058,2891,2753] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3056,3422,3436,3437,3402,2788,2789,3425,2790,1927,3427,1934,2787,3360,3361,3044,2766] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5176,3277,3278,3279,5175,3704,3730,3666,3668,3692,3694] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4203,4204,4710,4577,4711,4578,4641,4606,4611,4615,4675,4676,4679,4969] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        