
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
        
        load "data/6T8N.pdb", protein
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
 
        load "data/6T8N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4733,4761,4762,4757,4758,4760,5000,4756,4759,4753,6573,6574,4752,7037,7081,5090,7035,7080,7082,7076,7077,7056,7071,7072,4746,4739,4743,4747,5870,5871,5872,6603,6605,6607,4705,4706,4719,4799,4800,4801,4708,4707,6625,4997,4999,5001,6817,6818,6819,6820,7038,6542,5675,5814,5818,6661,5819,6602,6601,6622,4971,5743,5745,4993,5761,5808,5747,5778,6807,5208,6660,5460,5723,5712,5711,5758] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2078,2056,2058,2055,2026,2543,2280,2281,2282,443,1995,2027,538,2497,2498,2499,2500,181,187,199,201,203,198,191,194,2269,2275,2279,2544,2539,2518,1198,153,154,156,167,1176,1196,2113,2114,908,413,1164,1128,242,441,442,439,202,204,241,243,1260,1261,1267,1271,1272,1323,1324,1325,1231,1214] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [854,856,857,836,837,839,853,885,813,815,816,817,818,819,6399,6400,1181,1182,6307,6341,6342,6336,6340,6357,858,859,860,861,2150,8881,2240,1177,1178,1179,1220,921,904,922,928,931,1219,2148,2149,5409,5396,5405,5395,5397,6249,6252,6240,6242,6248,6308,6241,6254,6251,5389,5367,6256,5412,5426,6752,6206,6205,8945] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1760,5370,5371,1789,1792,1793,1794,1795,1851,5406,5409,5410,5390,5391,5405,5388,5389,5367,5369,5411,5412,5413,1695,843,844,845,1701,1702,1705,1708,1693,1694,874,1658,1659,4410,4411,1761,837,815,860,5473,5726,5728,5474,5729,5480,5483,1852,6688,5437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [6514,7491,6518,7219,7490,6519,7295,7329,7330,7214,7296,7139,7054,7069,7070,7057,7164,7033,7058,7079,7138,7157,7158,7162,7218,8117,7216,7424,7426,7428,7001] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1968,1971,1972,2531,2532,2495,2516,2519,2520,2886,2468,2463,1967,2952,2601,2541,2600,2619,2620,2624,2626,2888,2890,2757,2791,2792,2681,2758,2678,2680] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [7118,7119,7144,7146,7120,7935,8072,8090,8064,5852,5854,6604,6605,6606,6607,6572,7082,8073,8078,7936,6588,6593,6599,6570] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2052,2057,2058,2059,2060,2025,2543,1305,1307,2046,3397,3398,3526,2027,2580,2581,2582,3552,3534,3535,3540,2606,2544] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [6778,6688,5766,5767,6686,5473,5725,5726,5728,5724,5474,5408,6777,5437,5406,5391] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4341,4345,4318,4321,4322,4331,1741,1759,2908,2909,4335,2980,2982,1743,2905,2907,4323,4301,2928,2930] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [8855,8856,8857,8875,8879,8852,8865,7401,7447,6306,6288,7446,7398,7466,7468,7399,7400,6290,7443,8869,8835,8811] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1499,1500,1423,2131,2203,2145,2200,2201,1338,1340,2167,1441,1565,1567] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        