
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
        
        load "data/6VNE.pdb", protein
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
 
        load "data/6VNE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [149,154,158,159,160,161,136,139,135,123,124,126,128,322,323,436,340,320,326,327,172,174,163,164,151,1284,1292,1282,1116,1291,156,1423,422,423,424,425,466,399,400,1434,1433,392,394,426,396,398,397,1159,1161,1162,1165,1126,1125,1155,1150,1152,775,117,573,1260,1261,718,1268,1266,1267,1269,717,1180,1181,173,118,120,121,722,307,729,769,771,768,744,743,740] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3573,3583,3544,3685,3687,2581,2590,2592,2740,2741,3686,2553,2554,2557,2561,2569,2572,2575,2564,3860,2567,2576,2758,2577,2579,3700,3702,2884,3704,3710,3534,3709,2852,3725,3726,2574,2816,2818,3853,3854,2844,2842,2843,2812,3827,3847,2542,2543,2544,2546,3684] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1362,1364,2550,2551,2552,2529,2530,2531,2224,2600,2217,2218,2219,2222,2225,2220,2527,2505,2523,2601,2515,2502,2504,2509,1322,1361,1360,1370,1373,1571,1567,1570,1375,1555,2766,2763,2749,2750,2556,1593,1594,1595,1589,1048,1049,1050,1051,1596,1597,1600,1587,1588,1523,2241,2260,2252,2257,1621,1052,1026,1025,2281,2280] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3598,3140,3133,3135,3136,3568,3599,3684,3679,2725,3162,2989,2990,3158,3161,3186,2538,2539,3154,3152,3189,3193,2534,2535,2536,2540,2541,3685,2590,2592,3686,2591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1630,1633,2181,2183,2184,2185,2041,1823,2030,1994,1472,1822,1993] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4448,4051,4081,4048,4241,4459,4453,4602,4603,4599,4601,4604,4240,3888,3889,3890,3882] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2748,2750,3111,2234,2237,2455,2731,2481,2482,2484,3110,2224,2228,2227,2615] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [197,182,183,81,83,66,33,64,63,34,694] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1594,1595,1081,1047,1048,1043,1013] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        