
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
        
        load "data/5I5Z.pdb", protein
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
 
        load "data/5I5Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [558,456,457,458,818,819,1394,1395,1398,1399,1400,1401,313,314,315,253,255,292,293,258,902,1402,1423,586,1409,814,815,817,441,662,663,664,1393,1290,1289,843,871,2790,2791,2792,900,823,840,813,1271,1268,1265,1266,884,870] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [2616,2402,2646,2359,2363,2387,2388,1770,2358,2357,1043,1046,2618,1039,1036,1047,2651,2661,2662,1013,1037,1038,1020,1021,1010] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4872,4873,4874,4875,4876,4877,4871,4904,4869,4900,4920,4916,4867,3271,3272,3273,4415,3235,4923,4413,3236] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1261,1539,1540,928,1526,1527,1528,926,1503,1504,1266,886,888,891,1251,1252,1250,1754,918,956,883,924,1502,1798,1799] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3705,3707,1227,1464,1465,1466,3697,1467,1183,1226,1195,1201,1204,1206,1207,2853,547,577,578,1420,2858,2862,2849,4122,3682,3687,3688,3690,3694,3689,3679,3677] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4176,4177,4179,4145,4188,2907,2908,2910,2895,4131,4134,4486,4487,4142,4212,4186,4187,4493,4494,4495,4496,4499,4497,2877,2874,4137,2878,2879,2892,2893] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3052,3079,4422,4425,4432,4801,4419,3227,3183,3194,3195,3196,3198,3193,3153,3154,3197,3018,4825,4827,3199,3200,3201,4802] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3586,3888,3884,3886,3901,3897,4989,5012,4984,4985,5027,4986,4988,3878,3585,3570,3571,3572,3584,3910,3932,3933,25,5026] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2858,2861,2862,2849,4121,4122,4126,547,577,578,4116,4110,4123,3687,3688,3367,3689,3679,3413,3657,3677,3678,4149,4179,3381,3382,3383] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1569,1570,2072,2109,2495,2501,2502,1603,1606,1607,2110,2117,2073,2076,2510,2098,1646,1618,1621] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3452,3491,3228,3186,3187,3454,3541,3219,3460,3225,3490,3492] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [558,457,458,1400,1397,1401,556,557,1405,1417,287,526,282,283,284,474,525,1411] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2044,2270,2010,2042,2043,1989,2001,2045,2469,2475,2480,2481,2486,1993,2443,2445,2274,2485] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [359,200,357,399,434,808,435,682,683,686,694,696,189,198,145] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        