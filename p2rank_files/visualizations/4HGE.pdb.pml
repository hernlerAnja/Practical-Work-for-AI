
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
        
        load "data/4HGE.pdb", protein
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
 
        load "data/4HGE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2551,2552,2553,2554,3515,2565,3544,3835,3852,3853,2580,2581,2594,2579,2742,2743,2550,2539,2540,2530,2531,2537,2538,2592,2532,3673,3681,2844,2886,2842,2845,3164,3539,3570,3549,3550,2533,2535,2593,3553,3548,2727,3160,3165,3191,2536,3157,3655,3656,3657,3658,3649,3107,3650,3514,2578,2559,2575,2576,2577,3832,2760,2847,3569,3156,3129,3111,2993,3132] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1574,1575,1576,1577,1338,1339,1342,1568,1569,1578,1581,2197,2200,2201,1025,1026,1027,2549,1337,1347,1349,1550,1552,1299,1504,1503,2527,2767,2769,2766,2752,2198,2203,2205,2238,2241,2222,2232,2233,2237,2548,1002,1003,1029,1033,2558,2261,2262,2250,1602,1595,2524,2520,1351,2501,2502,2499,2515,2506,2512,1357,2545,2528,2586,2603] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1156,1157,712,736,737,1158,120,121,703,705,1238,1138,1243,1244,691,709,307,573,686,687,684,740,744,745,779,1127,1137,1141,1128,1129,1130,1131,118,172,173,174,116,122,124,125,117,1245,128,129,135,136,123,126,727] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1285,1260,1269,1406,1408,1404,1405,398,400,1261,429,394,424,425,427,428,340,149,151,158,1259,322,323,434,466,147,148,154,156,138,143] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1473,1472,1679,763,765,767,1725,1124,1128,1129,1130,1764,1765,1761,1772,1778,1779,1705,1720,1721,1730] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3982,4662,3986,3987,3988,3989,3993,3437,3438,3402,3439,3754,4655,4650,4653,3410,3408] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2164,2166,2167,2016,2021,2022,1804] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4026,4423,4216,4576,4578,4574] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        