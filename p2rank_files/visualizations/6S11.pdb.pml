
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
        
        load "data/6S11.pdb", protein
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
 
        load "data/6S11.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [305,306,326,448,449,746,893,890,892,897,573,1326,1327,1444,1446,1447,1451,1453,1445,745,891,1286,280,287,268,273,274,275,277,271,324,325,272,433,1314,1342,944,972,926,937,941,1343,929,922,921,914,1315,1316,1302] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3665,3207,3659,3664,4081,3048,3049,4170,4080,4167,4168,4169,4052,4064,3666,3647,3661,3501,3502,3672,3676,3694,3098,3222,3224,4177,3077,3078,3057,3336,4171,4174,3096,3097,3050,3051,3052,3054,3642,3637,3638,3639,3640,3641,3643] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3419,3435,3949,3953,3954,2451,2452,2453,2429,2440,3961,2430,2431,3437,3454,3436,1869,3962,3965,3966,3967,2385,2393,2386,1870,3386,3409,3421,3422,1868,3408,2449,2448,1854,2464,1855,1867] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [290,294,295,1286,287,541,450,1326,1327,1450,1452,1453,1454,1467,305,300,538,1283,1475,1303,1596,1302] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3387,4218,4219,4239,3958,2315,2316,4223,1869,2351,2352,3963,3964,3965,3967,3968,3969,2350,1870,3386,1868,1977,1874,1902,1975,1976,2000,2001,1973,1974,1881,1972,2287,3352,4240] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1544,1546,1521,1513,1486,1515,1517,1487,1714,1547,1473,564,1479,1580,1278] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2713,1729,1734,1735,1759,2732,2733,1176,2726,2722,2723,2724,2725,1732,1211,1730,1212,1733] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3335,4192,4176,4190,4191,4198,3069,3072,3075,3065,3067,3068,3240,3224,4177,3306,3277,3310,3280,3282,3305,3307] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4198,3075,3077,3060,3063,3067,4177,4065,4023,4040,4041,4273,4064,4053] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2087,2057,2063,2678,2684,2685,1697,2064,1698,1702,1704,1695] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4292,4306,4294,4509,4549,3709,3711,4056,4055,4057] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        