
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
        
        load "data/8HGO.pdb", protein
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
 
        load "data/8HGO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2140,2391,2383,2570,2572,2574,2356,2358,2185,2069,2192,2571,2575,2576,2566,2569,2847,2848,2849,2141,2171,2158,2145,2146,2155,2157,2340,2181,6282,2134,2135,2136,2137,2125,2131,3065] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [18,19,23,24,27,28,264,2061,29,15,21,13,3514,204,3511,3510,2029,2046,2060,2034,2047,2129,3060,3062,3498,3058,3288,3084,3289,3290,3293,3496,3497,3499,2128,2059,2028] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [6783,9049,6821,6838,6842,6845,6990,7274,7276,7495,7513,7512,9048,6784,6785,6792,7494,9046,9038,4411,4412,4410,5031,9008,9011,5030,6780,7007] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [440,1985,251,438,439,639,1724,1685,622,1682,1678,1681,1666,1672,1992,1991,9,427,430,436,1721,1686,1687,1744,1652,1656,1663] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [6680,6681,6688,6563,6564,6586,6678,6576,6565,6676,6559,6505,6508,2283,2284,6682,1892,6498,6499,6501,1893,1891,1908,6541,6515,6517,6506,6507,1818] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [6192,6191,6193,6197,6212,6213,1789,1799,1803,1815,1826,1830,6122,6123,6377,2093,2095,6516,2096,2097,6513,1816,1818,1817,6527,6528,6512,6522] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4380,6387,6385,6381,4632,4634,4635,1849,1876,1878,1856,4394,4395,6478,6388,7481,7504,7708,7490,6550,1877,7496,7503,7525] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1849,1851,1876,1878,6393,6397,5022,4635,4819,4820,5009,4833,6084,6398,6402,6404,6128,6130,6087,4619,4620,4821,6091] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1765,1583,1763,1764,1768,5978,5975,5977,1751,1566,1567,1576,1582,5876,1647,1648,6186,1783,1772,5970,1585,5987] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3136,3137,3138,3152,3213,3214,3442,3443,3751] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6504,6225,6226,6229,2089,2090,2091,2097,2098,2148,6306,6307,6246,6248,6244,2081,2083,6247,6505,2280,2174,2162,2175,2153] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7520,7522,4399,4407,4411,4412,4409,4410,9001,9000,7512,9048,8998,9046] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1475,1478,1484,1694,1571,1589,1104,1105,1103,1110,1112,1113,1106,1088,1097,1430,1431,878,1595,1486,1487] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [2434,2439,2443,2442,2373,2372,2375,3076,3077,3081,2862,2864,3092,2368,2598,2441] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4452,8865,4481,4483,4899,4707,8883,4882,4883,4885,8884,4686,4688,8879,8895,8886,8891,4880,4881,8899,4889,5141] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [6839,6890,7099,6852,6870,7118,6853,7037,7038,7100,7074,7077,7117,6830,6836,6841,6846,6848,9021,7101] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1974,1976,1992,1991,2004,2029,2030,9,267,251,16,249] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [55,140,94,100,3123,3122,167] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6766,6762,6770,6814,6816,6769,6911,6912,6748,6760,6926,6752,6757,6928] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4534,4532,4536,4504,4509,4510,4535,4420,4460,4406,4569,4405,4542,4568,4659] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7816,7817,7823,7791,7793,7794,7824,7993,7997,8019,7799,7801,8056,8061,8062,8066,8018] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [8283,8285,8290,8289,8076,8294,8086,8087,8088,8090,8300,8284,8095] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [7027,7032,7029,7061,8823,8829,8831,8832,8824,8822] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        