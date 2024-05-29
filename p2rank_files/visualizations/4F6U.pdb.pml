
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
        
        load "data/4F6U.pdb", protein
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
 
        load "data/4F6U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1411,1412,1292,433,248,2738,828,2739,2737,809,811,654,655,806,807,810,1396,656,815,835,1269,1410,1293,1268,861,862,894,1397,1400,1408,1409,1416,1420,448,550,307,446,449,305,306,245,250,251,253,442,256,255,878,880,1256] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1255,1482,1470,1262,1263,1264,1484,878,1472,873,1698,1742,880,881,883,1770,875,916,913,917,948,950,912,910,1256,1257,1447,1448,1471,1269,1416,1418] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4116,4117,2835,2837,4423,4424,4426,4417,4418,4419,2825,2840,4425,4427,4428,4429,4075,4112,4118,4064,4416,4107,4105,4142,4152,4154,4626,4630,4637,2804,2807,2809,2822,2823,4067] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4050,2783,2785,2786,2787,3618,3619,4056,3607,4046,4053,2791,4051,4067,4069,4134,4107,4108,4102,4105,4106,4109,3317,4079,4076,4093,4072,4101,4118,4061,3314,3313] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [577,579,655,1387,606,647,1150,1211,1394,1395,1397,1205,1390,1194,1199,1151,1400,1401,1404,543,546,547,548,550,536,539,570] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4916,4914,4915,3832,3808,4918,3827,4942,4939,4938,3516,3818,3831,3814,3815,3816,3496,3499,3500,3501,15,17,3862,3502,4965,4946,4955,3863,3515] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2563,2565,1007,1714,2349,1008,1009,1011,1041,2592,2593,2598,2609,2336,2594,2306,2334,2335,2300,2304,2305] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3458,3485,3480,3462,3027,3028,3452,33,48,54,50,49,60,55,58,3454] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1513,1514,2056,2449,2001,1550,2057,1547,2044,2457,2448,2442,2019,2020,1551,1590,2023] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1937,1944,1957,1960,2432,2433,1936,2217,2394,1988,1989,1992,1990,2436,2427,2422,2428,1940,2416,2392] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4561,4563,4565,4485,4487,4689,4653,4654,4605,4599,4601,4598] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [349,425,427,350,351,181,686,688,192,348,674,675,800,684] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        