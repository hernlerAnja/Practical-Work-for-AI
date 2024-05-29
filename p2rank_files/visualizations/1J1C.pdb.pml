
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
        
        load "data/1J1C.pdb", protein
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
 
        load "data/1J1C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1205,1481,1372,1351,1345,1348,1349,1350,1368,480,1364,1237,1222,1233,1234,1245,1343,1344,259,370,371,372,258,355,368,782,514,787,204,208,833,1261,1262,804,807,460,387,405,477,481,462,473,455,459,461,4989,4990,4991,1366,1370,466,388,767,404,448,860,861,1195,222,225,230,231,216,242,235,236,237,238,5007,5008,5004,234,389,393,392,4755,4756,4749,4757,4747,4748,4969,4970,4971,239,241,240,5001,5002,5009,5003] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3135,3136,3141,3142,3145,3155,3162,3133,3165,1836,1818,1827,1828,1834,1835,1837,4125,4285,4292,3150,3157,3159,1810,1812,1805,1809,4141,4142,3130,4156,4157,4158,4153,4154,4155,4165,4263,3752,3727,3734,3741,3753,4181,4182,3124,3128,3719,4262,4264,4265,4268,4269,4270,4271,3290,3291,3292,3400,3433,3177,3178,3179,3275,3702,3707,3724] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4286,3154,3307,3312,3313,3380,2066,2068,2069,2070,2050,4115,3375,3324,3325,3326,3330,1828,1829,3161,4288,4292,3156,3157,3158,3159,3160,3152,3155,4401,3382,3386,3388,3393,4296,3397,3401,4289,4290,2083,2089,2087,2088,3316,3148,2082,2079,2081,3332] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [3679,3301,2934,2857,2858,3590,3595,3188,3187,3189,3190,2948,3080,3081,3282,3103,3104,3283] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1820,1573,1467,1499,1845,4734,4735,4739,4740,4728,1536,1537,1538,4387,1814,4456,4457,4406,4458,4493,4491,4494,4495,4496,4485,1819,4379,4380,4384,4383,4765,4419] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1630,1632,1638,1626,1629,1631,1136,1138,1636,1637,1135,1400,1399,2689,2690,2390,2389,2371,2377,2360,2381,2380,2382,1666,1639,1642,1110] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4058,5300,5302,5309,5610,5291,5280,4056,4055,5609,4549,4550,4552,4556,4558,4557,4551,4080,4319,4320,4562] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4774,4508,5247,4804,4806,4847,4892,4507,4996,4975,4998,4966] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3825,3827,3882,3889,3952,3743,3790,4200,4203,4204,3789,4202,3914,3915,3916,3913,3813,3744,3745] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [671,670,28,653,29,161,652,759,184,160,183,363,267,269,381,270,268] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1592,2032,2007,4940,2020,2021,4952,1604,4928,4941,4943,4512,4524,4518,4523] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [994,995,996,1282,870,869,905,1283,1284,1269,1032,907] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3371,3409,3418,3561,3581,3583,3584,3322,3582,2830,2836,2838,3580,3651] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2778,2780,2585,2587,2523,2525,2508,2615,2617,2592] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4812,4813,699,5034,5035,698,5025,4810,5046,5048,5049,5050,5087,5047,5030,5039,5032,5057] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2046,2053,1972,2078,1921,1927,2076,1587,1588,2055] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1573,1462,1538,1565,1460,4387,1590,4493,4485,4458,4379,4380,4384,4383,4510,4382] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2626,2623,2645,566,552,558,560,561,546,1121,1119,2644,2670,1090] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        