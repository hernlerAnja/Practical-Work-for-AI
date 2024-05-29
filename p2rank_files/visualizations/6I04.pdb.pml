
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
        
        load "data/6I04.pdb", protein
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
 
        load "data/6I04.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [786,789,953,756,766,767,401,418,469,447,453,454,448,462,463,736,744,803,743,801,802,804,381,598,599,402,936,379,406,449,450,478,492,496,470,490,471,475] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [1699,8933,9154,8925,8926,8934,1701,1702,1703,8337,2549,1700,8338,2511,2513,2294,8909,8910,1721,1722,1912,2580,2539,2542,2578,2579,2510,2699,9150,9188,8339,8340,8341,8342,9152] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7205,7208,7210,7211,10566,7212,7213,12461,12462,12463,12464,12465,12466,12467,10615,7161,7152,7157,7158,10605,10606,10604,7151,10565,7138,7153,10608,10610,7193,7194,7195] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7451,7614,7615,7186,7091,7093,7261,7398,7465,7463,7464,7466,7166,7181,7182,7202,7190,7077,7079,7084,7405,7406,7448,7114,7429,7418] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [1944,1945,8826,8914,1953,10006,10009,10007,9628,1159,1168,1169,1170,1171,9981,10001,9972,10002,1946,1947,1954,1959,1161,1935,8805,9593,8825,8819,8820,8821,9598,9608,9612,9613,9615,9955,8806,9973,9974,9975,9956,9957,9976,9977,8833,9611,9614,8827] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [8360,8361,8551,8646,9338,9218,9219,2286,9352,9181,9178,9188,8339,8340,8342,2270,2271,2295,2513,2515,2287,2294,1702,1703,8338] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5593,7530,942,943,944,945,946,947,5310,5594,5596,5313,5314,831,929,7520,930,696,697,1424,1420,813,1419,951,1426,1412,695,7516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3333,3316,3334,3336,3338,3335,3337,2954,2976,2969,2972,2973,2974,2975,2959,7833,2186,2180,2181,2166,2167,7821,7831,7832,8585,8598,2188,2189,2190,8583,8584,8586,8591,2187,7830,3363,3367,3368,3370,8578] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7436,7952,7953,7954,10371,10375,10379,10380,7171,7173,7437,7438,10377,7145,10933,10934,10935,10923,7686,7709,7731] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4296,774,776,1048,1069,772,1307,1047,1305,1314,1031,1300,1301,972,990,1024,986] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [632,130,1668,1662,1663,1664,114,1119,1120,3297,3296,119,3301,2163,2165,3298,2155,3290,3285,1124,1118,1134] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7514,7367,7516,7546,857,859,7360,7364,7365,662,681,7366,669,6867,6868,6869,6866,7520,7522,7521,698,691,692,695,696,697,1423,1424] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4296,774,776,1307,1305,1300,4294,459,433,1306,1308,461,3732,3738,3740,3741,4295,4284,1024,1025] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [8303,9940,7782,8301,9924,9935,8794,6831,6826,9934,9936,7780,7781,7786,9943,6842,8307,7294] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [7353,7358,8062,8063,868,857,7360,7343,854,884,862,863,864,705,852,155,156,157,153,154,702] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [3826,3836,3842,3822,3839,4222,4223,4224,4385,4379,4619,4384,4620,4612,4613,4614,4386,5408,5409,5410,5411,5412,4371,5415,4362,4247] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [10886,10465,10861,10862,10863,11023,11279,11280,10475,10478,11272,11273,11024,10461,11001,11018,11010,12069] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [406,450,478,492,496,407,410,539,498,403,401,766] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [154,134,149,150,7839,7840,145,7338,7346,7348,7837,8046,7337] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6363,6364,4707,4708,4726,4864,4862,4863,6126,6127,6128,6385,6386,6387] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [2729,2731,2732,2733,2676,2678,2629,2672,2673,2674] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        