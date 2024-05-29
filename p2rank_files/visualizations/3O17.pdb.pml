
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
        
        load "data/3O17.pdb", protein
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
 
        load "data/3O17.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1381,1540,1975,1524,1531,1537,1538,1996,4366,1536,1792,2023,1527,1818,1995,1973,1974,1987,1415,1416,1424,1783,1785,1517,1488,1396,1781,1790,1780,1423,1422,4959,1425,1490,4750,4753,4755,4760,4764,4757,1795,4384,4385,4386,4487,4497,4751,1989,1988,4391,1787,4506,4966,1794,1796,4995,4501,4507,4508,4945,4944,4494,4351,4353] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4266,3231,3232,3786,3788,3330,3792,3184,3186,3803,3804,3182,3188,4166,3833,3834,4175,4267,4273,4275,4167,3191,3197,3198,3218,3233,3201,3346,4274,3345,3809,3811,3806,4190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1158,1386,1562,1563,1377,1341,1342,485,486,2710,1340,1355,1389,482,484,492,494,523,495,1431,1393,1401,1397,1405,462,1408,1403,1404,1358,1371,1366,1373] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4359,4360,4371,4374,4375,4128,3454,3456,4311,3493,3462,3464,3465,4343,4356,4363,4312,3432,4367,4370,4368] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1220,1296,1221,836,839,855,864,216,834,854,847,817,1297,360,638,822,243,212,218,244,262,263,213,214,1298,1196] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1723,1731,1877,1733,1734,1729,2164,2165,1700,2150,2194,1744,1746,2375,1735,1873,2154,2148,2151,2153,1885] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1795,4765,4805,5030,2024,4768,2060,4767,4746,2068,2069,2048,2047,4771,4772,4773,4994,4996,1835] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1381,1383,1540,1975,1537,1538,1996,1384,4366,1973,1974,1396,1388] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4926,5368,4542,4482,4518,5370,4517,4900,5374,4521,4522,4515,4923,4519,4520,5375,5379] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3204,3211,3213,3370,3461,3463,3465,4297,4379,4402,3434,3437,3438,3440,3442,3439,3441,3368] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1304,1318,1327,1328,1432,1303,1305,493,1168,1184,1185,235,234,233,236,237] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3648,3640,5839,3003,3005,3105,5851,3658,3672,5838] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        