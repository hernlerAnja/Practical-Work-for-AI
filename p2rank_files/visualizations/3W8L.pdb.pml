
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
        
        load "data/3W8L.pdb", protein
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
 
        load "data/3W8L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4065,4194,4093,4195,4196,3527,3529,4191,3688,3691,3293,4202,3190,3188,3189,3306,3307,3305,3662,3664,3125,3127,3291,3292,3174,3308,3309,3704,4094,4092,4193,3663,3665,4209,3528,3124,3131,3132,3144,3130,3145] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [384,387,391,398,399,396,400,402,404,5047,413,546,4844,4845,4846,547,548,624,563,564,628,630,659,5046,617,619,5045,586,392,393,395,1591,1592,1293,1317,1466,1439,1440,1441,1599,1276,1277,1456,1457,1465,1459,1467,1306,1308,1305] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [429,545,546,366,427,428,531,532,530,384,413,548,660,904,898,899,901,903,371,363,364,1430,1433,1332,1333,1304,1331,1432,927,1439,1440,1441,1434,1442,768,766,908,943,946] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1674,5079,5086,5087,5091,5097,1692,5093,5094,5103,2212,5119,1974,5072,5069,1672,1678,1567,1666,1641,1642,1640,5118,1566,1571,1572,1575,1576,1570,1963,1964,5073,5283,5285,2228,1971,1982,1983,1984,1985,1967,1972,5071,5080,5105,5284] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3384,3161,3162,3163,3164,3165,3346,3348,3147,3173,3174,3160,3308,3309,3322,3325,4038,4053,4054,4078,4202,4201,4218,4219,4220,4221,4228,4227,4226,3418,3421,3324,3347,3379,4360] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1598,1306,1308,1310,1305,4847,1293,1291,1292,1599,393,395,4883,4882,4846] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1459,1467,1561,1562,1574,1587,1478,1481,647,649,201,203,1563,1466,5064,622,623,620,5046,616,5065,611,613,614,615,5061,4837,4844,5053,4845,4846,5047] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1598,1632,1618,1620,1308,1310,1300,1600,1604,1608,1621,1905,4847,1293,1291,1292,1599,4881,4883,4882] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4854,5074,5329,5312,5315,5322,5326,5306,5316,4852,4853,4851,4855,4880,4882,4878,4884,5334,5338,5341,5366,5318,1608,1963,5073,1952,5319] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [554,556,865,878,330,331,332,825,863,811,284,821,287,282,308,826,827,828,538] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3092,3298,3299,3300,3091,3093,3316,3626,3317,3588,3043,3045,3067,3068,3041,3624,3582,3586,3639,3572,3069,3072] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [871,872,852,873,603,265,264,584,601,631,668] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5065,5084,5085,5128,4808,596,5056,594,595,622,623,4807,5060,4809,4810,4811,1579] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1604,1607,1608,1620,1952,1621,1948,4847,4852,4853,4855,4880,4882,4881] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1759,1741,1756,1782,2632,2626,2629,2631,1755,1747,1211,44,1750,61] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [573,5009,377,378,379,4872,4962,4965,5010,4961,4903,4958,4944,4870,4911,376,386] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4617,4618,3770,4056,4058,3865,3909,4102,4083] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4783,4784,4787,4696,4786,4677,4657,4691,5140,4819,4683] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        