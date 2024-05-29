
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
        
        load "data/5JZN.pdb", protein
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
 
        load "data/5JZN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3116,3390,356,365,368,377,379,380,381,3380,3367,3381,3588,3631,3632,3392,2788,2809,2811,2819,3108,3107,3587,3614,2791,2790] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2239,2190,2191,2192,2195,2196,2197,2238,2739,2722,2720,2340,3139,3141,2744,2765,2762,3140,2727,2741,3244,3247,3112,3119,3124,2240,2226,2355,2356,2357,3237,3240,2353,3120,3121] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [182,142,135,136,141,180,138,181,288,689,140,687,137,692,168,303,304,305,1198,670,539,1072,1196,1060,1192,1088,1089,1189,540,717,718,710,711,713] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [736,738,767,730,760,732,757,759,1047,1055,1056,1319,2431,2432,2408,739,1064,2404,1539,1540,1566,1342,1344,1333,1331,1332,1583,1584] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3342,3343,1233,1022,1218,1293,1294,1295,2473,2476,3262,3270,1307,1308,1216,1217,1214,1222,421,3074,3266,3282,3281,1276,3324,3264,3355,3341] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2221,2222,2240,2225,2226,3246,3244,3247,3112,3124,3117,2484,2355,2356,2357,2372,399,345,351,397,398,340,348,341,3260,3261,3262,3270,2467,3084,3101,3268] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [164,168,303,304,305,1198,182,415,432,319,320,151,159,163,1032,1072,1199,1062,1060,2400,2403,2450,2397,1049,1065,1214,1213,1220,1222,1212] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2490,2634,2647,2650,1668,1638,1639,2648,2649,1636,1642,2523,2492,2687,2688,2387,1670,1389,2498,1403,1301,1385,1388,1665,2458,2460,2463,2464] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3349,3433,3436,3437,3451,3705,3707,3702,3701,3704,3706,404,406,334,598,607,609,597,595,596,582,408,411,412,401,438,440,385,636] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1444,1977,1986,1982,1987,1993,1446,1980,1981,1437,961,1435,931,963] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3015,3483,3492,3485,3011,3013,3019,3479,4017,4018,4030,3494,3012,3020,2983] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [867,1154,1152,752,1156,1095,807,808,842,844,865,866] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        