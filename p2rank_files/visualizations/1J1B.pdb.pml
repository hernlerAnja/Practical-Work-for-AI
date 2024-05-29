
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
        
        load "data/1J1B.pdb", protein
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
 
        load "data/1J1B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4142,4165,3292,4265,4268,4269,4270,4271,3136,3291,3290,3179,3130,3124,3125,3128,3177,3178,4182,4262,4263,4264,3508,3702,4181,3727,3275,3707,3724,3721,4125,4292,3400,3433,3434,4141,4154,4156,4157,4158,4153,3753,3741,3734,3142,3145,1809,1805,1836,1818,1835,1837,3155,3157,3159,3161,3162,1810,1812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [213,215,216,222,259,225,1262,1245,1261,1342,1343,1344,1348,1349,1351,588,210,257,205,208,258,355,787,804,237,372,1345,1350,370,371,480,514,782,1205,1222,4755,4756,4757,239,1372,1365,1364,204,833,807,814,821,860,861,4730,4732,1237,1233,1234,230,4725,4722,4731] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2088,2089,3307,3312,3313,1861,3155,3156,3157,3158,3159,3160,3161,3148,3152,3154,1828,2082,2050,2066,2068,2069,2070,2081,4401,3330,3332,1829,1860,2083,2087,3382,3386,3388,3393,4286,4296,3380,3397,3401,3375,4288,4289,4290,4291,4292] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [4971,4988,4989,4990,466,468,470,4970,4968,4969,241,4749,240,1366,1368,1364,1481,4748,1370,1195,387,392,405,406,460,477,462,473,459,461,235,238,234,388,481,5001,5002,5009,5007,5008,393] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4406,4456,4457,4458,4380,4387,4493,4485,4415,1808,1814,1819,1820,4765,4735,4739,4740,4496,4419,1845,1846,1536,1537,1538,1573,1565,1460,4728,4734,1464,1467,1499] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3282,3679,2857,2858,3080,3081,2948,3590,3190,3185,3187,3103,3104,3186,3188,3189,3301,3595] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1636,2689,2690,1637,1630,1638,1629,1631,1632,1400,1399,1666,1639,1642,2389,2377,2380,2382,1110,1136,1135,1138] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [4058,4056,4558,4562,4556,4557,5261,5266,5271,4549,4550,4552,4551,4054,4055,4319,4320,5291,5280,5609,5610,4028,4031,4030,4062,5585,4063,4066,5300,5302,5309,5314] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3952,4200,4202,3882,3914,3915,3916,3889,4203,4204,3789,3825,3827,3813,3743,3744,3745,3790,4189,4187] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1280,1283,1282,1284,991,1031,1032,995,907,994,996,869,870,905,962] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [28,160,183,29,161,267,269,270,379,381,759,268,363,265,184,266,653,42,652,670,671] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [4508,4892,4966,4998,4804,4806,4774,5247,4847] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [3323,3580,3582,3583,3584,3409,3561,3581,2830,2836,2838,3371,3366,3369,3374,3418,3417,3441,3443,3562,2981,3324,3322,3651] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4524,4359,4518,4523,4942,4512,4952,4928,4940,4941,4943,2030,2032,2020,2021,2022,1604,1592] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4810,4811,5048,5049,5050,5046,5047,5086,5087,698,699,5025,5030,5039,5032,5034,5035,5085,5056,5057,4812,4813] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [1513,1238,1515,848,850,1527,1228,1528,844,1773,1774,1730] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [2078,1927,1928,2076,1587,1588,2055,1972,2053,1921,2046] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [2587,2615,2617,2592,2778,2780,2782,2585,2508,2523,2525] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [552,546,566,2626,561,2645,1121,560,1090,2670,558,2623] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [5024,5026,393,396,395,724,228,4812,4813,4814,234,5035,699] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4458,4380,4382,4493,4485,4510,1460,1462,1538,1573,1565] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        