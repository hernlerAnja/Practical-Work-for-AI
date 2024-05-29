
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
        
        load "data/3Q3B.pdb", protein
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
 
        load "data/3Q3B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3898,3915,3916,3939,3897,3899,4066,4044,4045,4065,4062,4064,4060,4058,4059,3931,3928,3927,3103,2972,3117,3118,3119,3201,3135,3180,3182,3889,4175,4150,1773,1782,1790,1791,1792,2961,1783,1815,1816,1992,1993,1994,1996,1999,2000,2001,1764,1765,1766,1784,4165,4149,2947,2962,2966,2967,2969,2953,2971,2963,2965,3123,2956] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1158,1159,1160,1327,1305,1200,4512,4522,4529,4530,4531,4555,1321,1319,1438,1306,241,372,222,225,230,231,235,236,238,240,216,4503,4504,4505,1192,1177,1189,1191,1176,1188,4499] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3527,3555,4037,3103,4038,2970,2972,2990,3101,3476,2935,2941,2936,2937,2939,3494,2988,2989,3086,3508,3956,3955,3498,3501,3481,3309,3235,3515,3939,4045,3928,3927,4039,2971] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1306,239,241,370,371,372,1304,471,1298,1299,1297,503,1216,578,579,240,210,258,208,755,259,355,737,742,1200,1300,1303,204,788,1217,762,1189,1188] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4231,1774,1775,4158,4161,4232,1491,1492,1801,1800,1493,1526,1530,1531,1528,1763,1451,1454,4502,4540,4539,1422,4514,4265,4270,4267,1441,4513,1520,1414,1415,1417,4508,4230,4269] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [380,381,660,661,665,715,29,42,161,28,641,643,184,159,266,269,362,363] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1321,1319,4713,4716,4726,4727,4730,4731,4732,4522,4530,4555,1323,1327,1411,1150,1410,1436,4523,1428,4722,4724,1426,227,230,231,232,235,234,387,392,228,4554,4749] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3374,2760,3392,3391,3372,2773,2914,2915,2998,3000,2890,2892,3094,2759,3093,3454,3001,3112,3396] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1808,1539,1541,1543,1926,1882,1927,1979,1983,4149,1988,1989,1990,1839,1841,1883] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [824,846,848,860,862,949,950,951,2460,917,924,1235,1236,1237,1238,778,825,1239,987] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3564,3977,3976,3600,3601,3663,3563,3599,5191,3688,3689,3690,3961,3963,3974,3726] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3832,3829,3830,5332,5333,5020,5032,4326,4330,4331,4093,4336,5023,5025,4320,4323,4324,4325,4332,4333] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1584,1585,1594,1597,2283,2289,2292,2294,1589,1593,1621,1093,1591,2301,2602,1592,1091,1089,1090,2601] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2437,2499,2412,2420,2686,2690,2692,2497,2504,2393,2527,2529,2513,2697] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        