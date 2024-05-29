
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
        
        load "data/4HCO.pdb", protein
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
 
        load "data/4HCO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2023,2026,2027,2029,2011,3149,2777,2778,3151,2040,2993,2994,2996,2815,3127,3128,2992,3006,3142,3161,3140,2034,2036,2811] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [340,346,328,343,967,968,1311,1312,972,973,975,351,1287,1281,348,349,352,321,991,987,990,1328,1457,1458,1460,1309,1268,1264,1265,1327,1306,1307,1272,1308,1424] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1027,1028,3426,1858,1860,1864,1859,1836,998,1840,1841,1842,1843,1844,468,1865,1868,471,985,464,465,466,288,302,315,994,1026,316,1011,3427,3428,1880,1883,291] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3042,3074,3075,3097,3098,3057,2710,2714,3223,3224,3079,3081,2732,2076,2090,2092,2093,2087,3035,2095,2728,2721,2072,2080,2729] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [292,1053,1222,1372,1380,1381,1224,1226,1223,299,1057,1357,1358,267,1379,279,285,289,1038,1236] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [883,884,373,374,375,376,377,378,379,359,922,924,925,926,959,370,364,960] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2118,2120,2121,2122,2123,2156,2158,2624,2598,2566,2103,2145,2620,2621,2622,2623,2625,2626,2664,2589,2666] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2723,2725,2196,2225,2083,2226,2224,2681,2679,2682] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2748,3222,3223,3224,2714,2715,2717,3194,3098,3226,2734,2737,2729,2733,2722,2728,2721,2741,2732] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1486,1487,1510,243,211,209,210,1597,1598,208,1409,1413,1433,1415,1488,1489,1490,1482,1469,1466] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [594,595,596,597,598,599,634,617,635,1901,1902,1904,1900,736,639,731,732,734,600] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        