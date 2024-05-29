
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
        
        load "data/5U8Q.pdb", protein
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
 
        load "data/5U8Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7585,7587,7586,7614,8097,8099,7630,2165,2147,2164,7602,7605,2151,2152,1855,1856,8105,8107,8108,8109,8110,8131,2133,2137,2129,7938,2136,1853,1865,1888,1864,1866,7567] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [17,1812,1660,1662,1664,1814,1661,1663,1665,1685,15,1,1806,369,1616,192,1612,370,1601,1607,185,1620,1621,1687,1588,1589,582,1619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3019,3958,3964,3965,3966,3967,3916,3920,3923,3928,3942,3943,4004,3974,3977,4027,3934,4026,3826,3827,4258,3824,4273,4275,2755] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2145,7604,7605,7606,2153,8436,8439,1968,7592,7594,1963,1965,1967,1966,2111,2110,2144,8417,8457,8434,2146] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [394,610,613,1796,603,1797,31,32,7224,33,1914,2050,1981,1982,2047,2032,2043,2036,1919,7231,7234,7245] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [221,223,224,404,405,242,393,394,6597,5113,6601,6621,5083,5115,5114,5111,617,628,630] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3072,3258,3245,3492,3498,4396,3016,3020,3494,3496,3921,3931,3932,3026,3263,3264,3265,3266,3015,3226,3244] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4396,3020,3494,3230,3231,3018,3019,4273,4275,4272,4395,4279,3827] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1014,1531,815,817,1395,1400,1424,1630,1428,824,827,1526,811,812,813,1528] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1071,1072,1073,1076,1051,1053,1089,1092,1093,997,999,991,1094,1095,1096,959,957,958,963,964,968] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [636,640,641,643,662,663,878,642,879,5043,5049,652,5018,5019] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [889,1094,1095,1002,1096,997,999,956,959,957,958] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [140,7380,46,7382,27,19,22,13,24,23,9,144,141] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3400,3401,2924,3178,3179,3177,3408,2925,2953,2954,2970,2897] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [458,100,127,518,519,250] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        