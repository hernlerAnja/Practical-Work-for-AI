
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
        
        load "data/7AYA.pdb", protein
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
 
        load "data/7AYA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3344,3178,3343,3345,3695,4105,4106,3697,3701,3179,3717,3720,4078,4207,4107,3672,3673,3675,3677,3682,3579,3581,4204,4208,4209,4206,3175,3239,3241,3357,3359,4215,3225,3176,3240] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [550,551,1351,1350,1451,943,947,927,446,431,563,447,380,381,382,1352,384,385,965,962,946,386,387,942,1323,1452,1460,1449,1457,1458,786,917,918,919,920,921,922,923,785,787,1453,1454,566] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1637,1639,1926,1929,1617,1618,1651,1652,1310,1312,991,1318,1319,989,3063,1328,1329,1326,1000,999,997,3071,3073,3629,3631,3633,1918,1925,1919,3068,3082,1920,1922,1923,3065,3070,3069] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4239,4240,4241,4051,3215,3217,4067,3241,3361,4214,4215,4213,3225,3377,3212,3199,3187,3196,4232,4233,4234,3434,3472,4231,3399,3400,4049,4211,4091,4050] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1912,1928,1913,1914,1915,1935,3600,1976,1959,1961,1963,1957,1958,2044,2046,1977,3115,3126,3282,3322,3297,3295,3296,3601,3305,3321,1919,3114] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [402,417,419,418,421,423,426,1336,1460,1324,430,431,1476,1477,1478,678,566,582,583,648,567,1459,636,637,638,424,1484,1485,1486,1610,1613,1296,1614,1312,420,422,605,606] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2968,2970,3490,2003,1627,1626,1991,1992,1993,1979,1986,1982,2001,2964,2965,2967,2971,2972,3522,2977,1971,3512,3040,3042,3038,3045,3046] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [349,348,350,557,575,897,302,326,325,300,847,305,844,574,882] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1764,1774,2645,71,1775,1778,2650,2648,2649,70,1801,1230,1766,1228,81,82,1204,2656,2660,1765,2651] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3351,3367,3369,3144,3120,3119,3099,3096,3097,3627,3628,3652,3624,3094] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3014,2986,2995,4307,4308,3015,4254,4255,2993,4286,4288] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4521,2883,2871,2873,2867,2872,5405,3986,4519,4520,4529,4556,5406,5400,5403,5404] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3746,4678,4679,4083,4392,4406,4074,4081,4373,4394] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1123,1360,1876,1167] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        