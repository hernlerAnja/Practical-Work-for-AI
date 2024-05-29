
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
        
        load "data/5X8I.pdb", protein
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
 
        load "data/5X8I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1388,1390,1079,1080,1081,1082,1122,1380,1382,1387,1138,1137,715,1381,131,366,1410,1411,275,276,1389,1403,1404,1405,338,274,397,688,690,691,1383,1384,686,689,548,549,126,329,341,343,327,1509,1486,119,122,107,133,135,137,106,155,156,157,1139,713,709,712,720,100,101,103,132,695,260,127,290,1520,1098,1099,1511,1111,761,733,1110,729] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4083,4084,4085,4086,2972,3093,4099,2971,4079,2818,2823,2827,2829,3037,3039,2822,2831,2833,2853,3411,4076,4077,3244,3245,2851,2799,2852,2956,3405,3778,3794,3795,3818,3806,3807,4078,2803,2805,2808,2795,2796,2797,2802,3429,3457,3834,3416,3409,3835,3408,3769,4106,4107,4100,4101,4216,4199,4205,2986,3034,3063,2968,2970,3384,3386,3387,3382,3385,3062,4193] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1850,1855,1856,4551,4552,4554,2219,4553,1858,1872,2174,4578,4870,1849,1882,4545,4546,4544,1878,4909,4903,4904,4911,4915,1844,1848,1857,4569,4568,2215] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4488,4491,4502,4504,4446,4447,4448,4449,4450,4235,4237,4485,4486,3513,3515,3446,3475,3476,4217,4248,4249,3811,3444,3448] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3516,3513,3514,3515,3446,3517,819,820,821,3485,816,817,818,4235,4237,4504,1795,1792,3811,3448,3447] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [750,752,1115,1753,1552,1526,1537,1538,1539,1540,1541,1542,1521,819,821,1802,1806,1808,1792] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1014,1016,989,1662,1654,1651,1652,1653,1013,2572,2570,2585,1657,1661,1683,2567,2573] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1500,1501,1864,1595,1600,1597,1530,1601,1889,1561,1563,1599,1527] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5263,5266,5268,5269,5281,4353,4357,4379,4358,4347,4348,3709,4349,4350,5277,3712,3685,3710] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4810,4812,4820,4822,4811,4819,4821] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4103,4106,4107,4101,3023,3062,4178,4181,4182,4164,4166,4193] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4257,4259,4297,4295,4560,4226,4296,4291,4293,4585,4196,4197] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        