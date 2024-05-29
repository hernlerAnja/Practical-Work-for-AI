
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
        
        load "data/7A4B.pdb", protein
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
 
        load "data/7A4B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3247,4143,4145,4152,4273,4274,4276,4265,4267,4168,4268,4144,3209,3218,3262,3263,3366,3367,3200,3765,3197,3198,3202,3780,3775,3203,3736,3738,3739,3379,3381,3382,3603,3743,4275,4269] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1326,1331,1332,1455,1354,394,385,423,380,439,437,376,438,542,967,1355,949,952,1330,397,557,558,671,1452,1454,1456,777,920,921,922,924,925,926,779,541,1457,1460,1461,1462,1463,1464] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1298,1315,1328,1330,3069,397,401,1331,1332,406,394,385,423,1487,1488,1489,1479,1297,1299,1462,1463,410,411,412,414,559,1614,1613,3086,1620,1621,1616,1617,3074,3084,3085] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1642,1643,1934,1962,1964,1965,1966,1922,1919,3081,1960,1961,2049,1917,1918,1927,3090,3102,1926,3148,3631,3137,3134,3135,3136,3304,3319,3318,3622,3108] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3439,3437,389,390,3438,3440,3691,3692,3093,3095,3098,3654,3655,3057,3071,3074,3474,3475,3436,3433,3708,3687,3465,3466,3706,3707,3065] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3055,3064,1601,2989,2003,2005,1996,1995,1989,1994,2986,2987,2993,2988,2994,2997,3060,3062,3512,3536,3544,1982,1985,1986,1987,1988,1629,1630,2999] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1487,1489,1479,1480,1481,1462,1463,410,411,412,413,414,415,598,597,575,670,559,629,632,630] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4143,4145,4276,3209,3218,3221,3230,3225,4112,4128,4275,4292,4293,4295,3237,4300,4301,3239] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1927,3090,1001,1002,1640,1642,1924,3085,1313,1315,1327,1321,1322,1621,1653,1655] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [615,831,866,613,651,641,274,893,611,639,642,253,894,895] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4582,4580,4581,4590,5467,5466,5464,5465,5476,4617,4044,4046,4020,4585,2893,2895,2903,2905,2894,2906] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4315,3008,3036,3037,4349,4347,4368,4369,3015,3017] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [212,213,184,191,193,201,221,222,1502,1503,1556,1555,1534,1536] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        