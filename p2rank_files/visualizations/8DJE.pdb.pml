
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
        
        load "data/8DJE.pdb", protein
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
 
        load "data/8DJE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1791,1792,4084,1782,1783,4074,1816,2893,2885,2894,2895,2898,2900,2888,1760,1764,1765,1766,1767,2879,1999,2897,4076,1986,1987,4059,4058,3959,3112,3958,3972,3973,3974,3975,2902,2904,3044,3045,3046,3116,3976,3980,3804,3977,3978,3101,3103,3104,3105,3992,3096,3814,3830,3831,3854,3844,3845,3846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1303,358,360,356,1297,1298,446,733,1299,554,553,227,229,231,247,249,226,228,230,359,1182,200,784,1217,1216,193,194,195,196,248,198,751,758,765,343,749,755,1168,1200,1304,1306,1307,1313,1167,1184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3854,3453,3842,3844,3847,3951,2873,2867,2868,2871,2902,2903,2904,3028,3030,3402,2922,2920,2921,3013,3959,3952,3953,3956,3441,3871,3870,3950,3407,3424,3427,3434,3220,2900,2879,2876] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1151,1168,1200,1304,1306,1320,1327,4432,1305,1319,1321,1167,1184,1192,227,229,231,226,228,230,222,225,359,360,4431,4408,4405,4440,4439,4430,4464,220,206,212,215,221,4412,4413,4415] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4102,4139,4140,4448,4422,4423,1419,1421,1422,4176,1763,1454,1455,1801,4411,4449,4418,1450,1451,1491,1492,1493,4141,4063,1528,4065,4067,4070,4168,1769,4089,1774,1775,1531,1520,1526,1800] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [977,978,1235,1238,1237,937,939,938,940,942,816,820,821,854,855,856,840,841,842,844,941,1224] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [174,256,258,149,151,351,369,635,636,617,618,18,19,255,257,259,350,260,367,710] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3602,3522,3523,3889,3892,3571,3641,3489,3891,5047,3601,3603,3604,3605,5037] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2848,2849,2850,2694,2825,2827,2695,2928,2930,2931,2933,2932,3020,3037,3021,3379,3298,3297,3279,3039] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1992,4076,1978,1980,1986,1999,1781,1783,4074,1816,1806,1808] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3462,3467,3836,3837,3469,3471,3502,3501,4131,4116,4376,4333,4377,3838,4130,3839,3843,3846,4105,4106,4118,1767,4101] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1426,4191,1427,1428,4187,4189,4530,4565,4564,4456,4489,4605,4599,4524,4531,4454,1410] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5271,5274,5263,5266,5268,4997,5076,5081,5074,5105,5107,5108,4970] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        