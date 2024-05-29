
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
        
        load "data/6HME.pdb", protein
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
 
        load "data/6HME.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1452,1454,1455,552,553,554,1353,946,930,950,448,450,449,1339,1463,1460,1461,1457,926,1456,788,570,568,920,921,923,790,566,925,384,1355,1354,965,968,1326,396,390,391,393,387,949,389,383,385] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3198,3261,3262,3263,3366,3367,3200,4265,4268,3603,4267,4166,4167,4168,3743,3759,3762,3763,3765,3204,3217,3247,3206,3208,3209,4273,4274,4139,4152,4276,3218,3778,3781,3203,3201,3197,3381,3733,3734,3736,3738,3601,3383,4269,4270,3602] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1964,3137,1915,3136,1917,1918,3621,3622,3628,3146,3148,3304,3359,3319,3317,3318,3623,3727,3327,3340,3341,3741,3744,1962,1957,1960,1961,2045,2047,2049,1938,2408] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1323,1327,1328,1329,1330,1331,994,1003,1001,396,1620,1621,1654,1655,1315,1322,1926,3090,1927,1640,1642,3069,3074,3084,3085,3086,3087,3093,3091,1314,1339,1463,412,413,414,405,408,3104,3106] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1480,1487,1488,1489,570,681,1479,1481,569,651,585,586,1462,640,412,414,426,421,408,417,424,1299,1463,434,1298,607,609,608,1315] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3218,3221,3230,3225,4274,4276,3227,3229,4110,4112,4128,4111,4426,4427,4430,4433,4301,4294,3239,4300,4302,3421,3422,3494,3234,3399,3237,3453,3454,3383,4275,4292,3382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3536,3060,3062,3512,3544,2004,2006,3064,3067,3051,3055,1629,1982,1994,1995,1985,1989,1630,1988,2989,1996,2987,2994,2997,2999,2988] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3532,3541,2004,2006,2257,2258,3539,3544,1985,1986,1987,1988,3001,2999,2963] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4347,4349,4316,3015,3017,4368,4369,3037,3025,3008,3036,4314,4315] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1938,1944,1945,2408,2410,2045,2080,2044,1917,1918] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3077,3472,3474,3475,3438,3439,3440,3075,3707,3098,3655,3465,3466,3437] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [219,220,221,231,212,214,226,1508,202,195,204,222,223,224,1503,1555,1556,1534,1536,234,232] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3807,4142,4144,4739,4740,4453,4455,4747,4434,4467,4135] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        