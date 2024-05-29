
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
        
        load "data/4J96.pdb", protein
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
 
        load "data/4J96.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2640,2641,2638,3693,3829,3845,3850,3851,3730,2910,3843,3844,3718,3719,3729,2630,2626,2631,2633,2634,2635,2642,2643,2613,2622,2623,2645,2811,2812,2942,2909,3828,3842,2611,2647,2661,2644,2816,2915,2918,2914,2809,2920,241,251,249,457,473,499,4008,4009,3987,459,461] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1394,1391,1392,234,235,238,254,255,256,257,258,242,243,245,246,247,1553,1258,1552,2865,1415,1416,1417,252,253,250,521,1557,1555,518,495,522,523,528,550,1390,516,1406,1407,273,417,419,420,1393,526,436,424,1283,1284,1573,1574,1294,2629,2849,2853] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3219,3222,3215,2811,2812,3822,3826,3827,3724,2810,2609,2610,2661,2604,3715,3729,3829,2623,2607,2659,2660,2796,3745,3743,3744,2808,3821,3052,3168,3169,2943,3173,3191,2608,3194,3212,2605] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [222,223,225,1394,234,235,216,271,272,273,404,418,419,777,420,1393,551,217,219,220,827,1280,1308,1309,1310,1386,1387,660,820,799,803,802] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2883,3992,2912,3865,3866,3683,3938,3939,3937,3984,3991,3958,3963,3964,3981,3957,3988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1553,1552,2865,251,252,253,3990,1554,1555,1573,2629,2637,2639,2890,2849,2851,2852,2853,2891,2879,2880,2864,2837] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1528,1529,1522,1546,1549,1248,1503,1504,1523,1417,1557,1554,1556,1430,1431] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4709,4156,3620,4699,4702,4713,4701,4164,4166,4153,4717,3590] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1025,1057,1058,1059,1060,1024,1003,1082,1080,1081,1056,869,1346,1347,1348,1349,1004,1007,1363,1087,1118,1345] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        