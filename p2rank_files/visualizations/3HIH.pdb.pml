
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
        
        load "data/3HIH.pdb", protein
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
 
        load "data/3HIH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [990,347,348,1305,1365,1366,1345,1346,1347,1349,1302,1309,1323,1318,326,331,345,1464,1344,342,968,351,350,327,969,972,973,974,975,965,1493,1494,1495,1492,987,991,980] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [300,302,471,594,596,598,1094,1092,1088,1033,1050,1051,1053,290,1076,1042,1045,1902,1903,1909,1911,1912,1924,1925,608,1904,1907,3394,3395,1057,1062,1075,1880,1882,1883,3423,1028,287] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3069,3071,2754,2756,2749,3211,3212,2105,2767,2770,3087,3088,2766,2112,2132,2134,2129,2118,2760,2761,2752,2753,3023,3044,2135,2137,2138,3030,3026] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [291,1076,1038,1397,1259,1412,1413,1419,1421,1410,299,1260,1261,1262,1080,284,266,1273,1395] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3299,467,478,1887,1855,1881,1883,1885,1888,1889,998,1856,1853,1854,1029,461,465,985,1011,999,1912,609] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [634,635,725,600,652,731,726,727,729,1075,1078,1081,1082,1944,1942,1943,594,595,596,597,598,599,1088,608,1916,614,617,1923,1924] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2051,2063,3141,2069,2799,2983,2073,2074,2806,3119,3135,3117,2994] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [410,411,849,874,876,877,377,378,376,398,358,919,363,871,872,873,875,915,917] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [276,255,1014,1015,1016,1019,1026,254,1031,1009,1507,1510,1020,1847,3425,3455,3456,3457,3480,3478,3453,3454,1021] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1519,1520,1473,1470,1449,1501,1453,1455,209,1541,1628] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2163,2164,2165,2663,2664,2660,2662,2197,2636,2196,2659,2661] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2271,2278,2362,2223,2361,2363] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        