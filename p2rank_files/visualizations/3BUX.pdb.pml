
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
        
        load "data/3BUX.pdb", protein
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
 
        load "data/3BUX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1478,1506,1481,1482,1464,1472,1477,5075,4446,5073,1492,1512,1513,1514,1483,1485,1490,4110,4111,1390,1391,1392,1397,1401,1422,1423,1424,1425,1426,1427,4466,4467,4469,4471,4472,4494,4443,4445,4562,5061,5062,4589,4474,4477,4478,4484,4486,4463,4473,4108,4109,4113] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [953,323,325,326,879,316,917,918,311,317,318,308,954,949,977,351,945,367,373,1933,1955,1960,1950,1951,1984,877,878,915,1963] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4082,3962,3960,3961,4052,4053,4075,4051,3966,3994,4033,2506,3992,3993,3995,3996,4046,4047,1909,1887,1897,1898,1900,1902,1903,1904,4050,1876,2493,1993,2489,1877,2503,2504,1912,1913,1911,1925,1542,1908,1893,4059,4061,1891,4054,4081] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2887,2890,2892,2894,2895,2869,2886,2877,2883,2920,2936,3546,2930,4503,4518,4519,4524,4520,3447,3448,3486,3487,3518,3522,3523,4525,4529] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1915,1917,1919,962,963,1571,1539,1540,1541,1019,1020,1542,1908,1544,4059,4061,4054,1546,1549,1894,2123,2126,1718,2125,1689,4081,4083,1906,1905,1910,1907,2122,1923] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4078,4079,4080,4083,4110,4057,4084,4088,4085,4067,4397,4396,4398,1511,1488,1494,1497,4421,4423,4431,1519,1516,1509,1510,1515,1852,1854,1862,1498,1829,1827,1828,1541,4069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4474,4475,4476,4477,4478,4479,4486,4463,4108,4109,4113,4115,4118,3554,4695,4691,4692,4694,3552,3588,3589,4706,4492,1492,4111] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3602,3603,3606,3605,3634,3636,2965,2967,2990,2956,3579,2918,2924,3577,4731,3607,3610,4705,4710,4711,4709,2914,2915,4707,4714,4730] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2161,1644,1646,1682,1163,1165,1161,1069,1071,1709,1674,2160,1169] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4213,3732,3734,4243,3640,3631,3638,3730,3738,4215,3609,4730,4278,4729] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1034,1037,1038,1041,1067,1036,421,1008,398,1010,2136,2142,2140,2143,2145,342,345,346,396,355,358,385,387,391] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [724,971,749,750,725,961,962,993,1586,1585] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [691,1594,1578,1579,662,1049] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        