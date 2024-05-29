
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
        
        load "data/6W7O.pdb", protein
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
 
        load "data/6W7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1020,1048,648,643,647,640,1047,1049,1121,1122,1123,1128,1129,1152,257,1151,102,109,110,113,240,595,253,255,596,249,580,345,96,618,621,100,148,149,150,94,99,1136,1138,400,1139,1140,1130,1135,1137,483,485] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3134,3143,3144,3145,3235,3148,3242,3243,3237,3236,2757,2761,2762,2754,3163,3265,3244,2197,2202,2203,2206,2211,2218,2237,2238,2239,2352,2360,2356,2189,2343,2187,2190,2735,2195,2186,2192,2193,2358,2359,2694,2580,2582,2709,2710,2597,3252,3254,3162,2732,2736,2510,3136] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1321,1021,1023,1024,4656,4673,4674,4675,4650,1535,1227,1267,1268,1262,1266,1270,1025,1574,664,701,4648,4651,4421,4676,1590,1591,4406,1588,1306,1655,1656,1277,4420,4422,1305,1322,1584,1585] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3138,3139,3435,3436,3137,3391,3341,3705,5386,3688,2777,2778,2815,3649,3380,3381,3382,3383,5156,5157,5292,5291,5293,5391,5407,5408,5383,5384,5385,3376,3420,3762,3763,3764,3702,3704,3699,3712,3691,3692,3698,5141,5410] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1741,1742,1876,1879,1880,1881,1878,1751,1915,1918,1917,1936,1726,1728,1923,1926,1843,1845,1846,3827,3990,3991,3992,3993,3957,3955,3965,3931,3850,3836,3852,3859,3865,3868,3876,3958,3880,3834,3853,4039,4035,1849,1853,1854,3961,3966] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2220,3263,3261,3267,3271,3302,3239,3148,3149,3243,5410,2206,2210,2211,2218,3138,3139,3136,3137,3341,3403,3112,3336,3382,3339,3335,3405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1641,1638,1640,1639,1624,1627,1628,3799,3809,3800,3810,1760,3828,3831,1763,3807,1734,1735,1736,1740,1587,1765,1600,1605,1755,1616,1619,1620] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3190,3197,3199,2911,2795,2797,2854,2852,2875,3196,2944,2849,2907,2908,2906] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1291,983,1290,1282,1157,1158,1411,1412,1413,996,998,1221,1231,1233,1155,1156,1284,1329] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1719,1721,1722,1723,1724,3871,3873,3748,3844,3843,3848,3738,3701,3696,3719,3714,3863,3730,3734,3857] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [193,216,218,219,478,493,495,497,602,603] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [683,1085,1075,1076,1082,1083,681,738,740,793,794,797,792,761,735,830] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1748,1754,1900,1901,1902,1904,1497,1903,1465,1468,1608,1609,1302,1743] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        