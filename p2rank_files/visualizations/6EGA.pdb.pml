
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
        
        load "data/6EGA.pdb", protein
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
 
        load "data/6EGA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [255,1224,254,341,216,217,220,174,353,355,683,684,685,687,688,340,478,689,694,580,581,1128,766,1129,713,714,734,710,721,509,1220,1219,1221,1222,1223,357,1209,1215,1104,741,742,765,1204,1206,1105] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3235,3352,3354,3355,2872,3350,3351,3353,2402,2404,2403,2356,2359,2506,2605,3340,3346,3349,2504,3335,3337,2873,2897,2350,3259,3260,2845,2846,2865,2866,2868,2844,2825,2835,2837,2839,2841,2490,2352,2353,2354,2351,2708,2706,2707,2814,2815,2816,2817,2818,2819,2820,2636,2308,2369,2368] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3187,3189,3337,3341,3342,3332,2603,2604,2605,3340,2629,2628,3169,2602,2597,2598,2601,3185,3124,3166,2636,2657,2635,2700,2701,2708,3326,2818,2820,3183,3344,2568,3175,3181] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3452,1592,1608,3454,1614,1615,1616,1617,1577,1574,1285,1286,1406,1407,1605,1632,1922,1944,1923,1926,1941,4075,4072,3415,3416,4071,1643,1642,1640,1568,1569,4082,4084,3418,3419,3422,3474,3425,4091,4092,4093,4094,4102] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3748,3746,3747,3700,4076,3770,3771,3774,1954,1321,3723,3708,3739,3736,3742,3745,3705,1291,1341,1342,1343,1961,1962,1963,1287,1288,1284,1294,1947,1950,1955,1959,1960,1971,1940] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [993,501,1210,1201,1202,1206,992,1038,1044,1043,1049,1050,1035,1054,1055,1057,1052,475,476,500,502,1209,1213,477,508,509,573,574,581,1195,688,478,689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2101,2105,2103,2106,874,875,876,868,870,871,1837,2094,2095,2097,2100,1818,1838,900,901] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4237,4232,4234,3005,3006,3007,3038,3001,3032,3949,3968,3969,4226] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        