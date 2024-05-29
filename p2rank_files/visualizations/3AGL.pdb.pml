
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
        
        load "data/3AGL.pdb", protein
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
 
        load "data/3AGL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [497,922,389,390,391,918,917,1445,1454,1348,1325,1592,1336,782,1364,1446,371,372,373,353,358,349,350,375,376,1365,333,2620,339,340,345,2649,970,1337,940,336,342,344,512,513,514,1453,1448,1451,1452,673,1467,1478,1479,1480,1447,1308,1586,367,368,369] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3177,3161,3162,3171,3175,3119,3125,3126,3127,3128,3129,3130,5435,3300,3458,4239,4253,3299,4240,3153,3135,3136,3139,3131,4265,4266,3155,3398,3399,3400,4264,3157,3158,3159,3144,3154,4233,4234,4123,4122,4134,4232,4237,4151,3756,4111,4372,4093,4094,4378,3703,3283,3176,3122,4150,4231,3726,5406,5408] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2449,2450,2451,2453,2428,2429,2430,1205,1182,1208,2328,2329,2413,19,747,749,1178,1210,41,73,74,75,1206,49,43,14,50,16,76,77,78,87,2448] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1609,1341,989,1340,987,1830,1831,1871,1872,1022,1593,1607,1608,1606,1618] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [5197,5199,5209,5210,3968,5115,5198,5234,5236,3964,3994,3993,2835,2836,2860,2862,2871,5214,5235,5237,5239,5238,5240,2861,2863,2865,2864,3996,2873,3991,3992] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4540,4022,3988,3990,3992,4018,4019,4020,4026,5080,5067,5073,5076,5081,5050,4537,4508,4507] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4126,4404,3773,3775,4379,4127,3808,4617,4658,4391,4392,4393,4395,4657,4394] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2252,2290,2287,1206,2294,2295,2281,1236,1232,1240,1241,1234,1721,1722,1204,1244,1720,2259,1233,1202,1751,1754] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3783,3785,3828,3815,3816,3817,3786,3853,3924,3837,3846,3851,3856,3827,3829,3882,3884,5303,5304,5305,5306,5308,3886,5295,5296,3788,3790,5307,5309] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4935,4936,4938,4931,265,4809,4833,2710,2711,2709,859,860,861,854,4796,4810,4812,241,244,246,248,840,850,853,258,262,250,254,2712,263] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [816,817,818,819,231,236,239,274,272,273,227,433,432,450,4880] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1043,2520,1100,1042,2517,2509,1138,1096,2510,1098,1065,1060] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        