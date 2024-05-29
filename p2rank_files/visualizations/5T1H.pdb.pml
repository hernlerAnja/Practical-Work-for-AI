
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
        
        load "data/5T1H.pdb", protein
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
 
        load "data/5T1H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4162,4133,3772,3775,4160,4161,3184,3186,3187,3756,3750,3752,3247,3248,3182,3183,3189,4137,4262,4270,4263,4264,3595,4259,4261,3351,3352,3353,3728,3730,3737,3597,3249,3367,3732] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [446,550,549,551,1350,1351,946,943,927,431,447,565,563,917,918,919,920,921,922,923,787,942,1323,1352,1452,1449,1453,1454,1460,1451,567,965,962,387,386,381,380,382,384] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1651,1652,991,1326,1328,1319,1318,3071,3060,1617,1618,1639,1926,1929,1637,1918,1919,3076,3090,999,1000,1920,1922,1923,3073,3077,3078,3079,3081,3645,1925] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3123,3134,3290,3313,3122,3305,3303,3304,3614,3616,3617,3604,1959,1960,1961,1962,1963,1957,1958,2044,2046,1912,1913,1915,1976,1977,3326,3327,3345] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [421,423,1486,1295,1617,1296,1311,1312,1336,1476,1477,1478,1484,1485,1324,1326,418,1458,1459,1460,637,567,678,605,606,431,583] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4294,4106,4295,4266,4146,3221,3223,3225,3232,3233,3367,3216,3220,3369,4268,4269,4270,4122,3480,3439,3440,4286,4287,3442,4288,3408,3407,4296,3385,4289] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4262,4269,4270,3233,3249,3367,3216,3220,4106,4146,3194,3195,3203,3204,3207,4122] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3046,3048,3498,2973,3530,1971,1626,1627,1979,1992,1986,1982,1985,2001,2978,2974,1993,1991,2003,3041,3050,3053,3519,3522] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [341,297,573,575,897,882,340,342,557,830,558,294,292,317,318,574,847] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [650,621,649,274,838,839,659,253,271,891,892,619,647,623,622] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4574,4576,4584,4588,4575,4611,5461,5438,5470,5460,5458,5459,4570,2856,2883,2871,2872,2873,2863] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1764,1774,1775,1801,2645,2651,1766,2648,1778,2650,2649,71,1769,2660,79,1228,1230,81,1204] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3030,3011,3031,3033,3013,2994,3003,3006,3001,4343,4341,3434,4309,4362,3022,3023,4308,4310,4315] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1876,1028,1138,1849,1167,1360] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        