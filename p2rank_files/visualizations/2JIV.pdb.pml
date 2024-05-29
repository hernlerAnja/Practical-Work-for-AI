
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
        
        load "data/2JIV.pdb", protein
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
 
        load "data/2JIV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1128,1179,2729,1180,1159,1161,1163,3269,681,682,683,684,1130,2817,2818,700,2836,3317,3318,2707,2812,2837,2708,2709,2711,2654,2659,2660,2666,2704,534,537,2710,2712,2728,2718,2724,567,569,570,571,3268,3301,566,588,680,558,563,562,675,528,513,524,525,2669,2675,2678,2679] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [679,672,673,1115,674,675,1190,1194,1195,1196,1203,158,159,203,204,205,337,338,561,354,350,352,353,191,1204,497,658,1197,1202,1211,1213,580,654,655,656,711,721,722,1113,1114,727,704,720,154,156,153,157,693,692,696,698,1085,728,165,1100] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2702,3252,3253,3333,2811,3341,2833,2857,2860,2298,2299,2841,2834,2816,2828,2830,2864,3223,3224,2865,3334,3351,3352,3335,2700,2701,2347,2498,2500,3339,3340,2345,2346,2295,2301,2304,2721,2799,2809,2810,2793,2496,2795,2482,2483,2796,2638,2639,3363,2636] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [548,938,939,908,1981,2015,880,882,918,915,2167,2168,2169,2147,2140,2151,2045,2139,2161,881,2012,2038,2039,2014,2044] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1695,1689,1692,1855,1585,1669,1690,1879,1881,1668,1663,1666,1665,1717,1704,1298,1477,1857,1443,1444,1446,1856,1275,1583,1718,1859,1862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3052,3083,3084,3051,4171,4168,4170,16,26,27,3062,9,11,3025,4194,502,505,507,2679,3059,523,571] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [760,2430,2431,759,792,2422,1143,1144,853,855,2186,2413,2421,894,789,815,823] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2320,2323,2324,2325,2326,2328,2329,3367,3368,3369,3419,3393,3394,3396,3407,3420,3412,2317,3392,3398,2532,2327,3198,3186,3199,3200] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2517,2778,2526,2581,2576,2548,3381,2578,2514,2516,2742,2796,2604,3383,2608,2609,2612] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [439,380,383,387,388,393,394,441,368,370,371,641,367,379,1235,498,658,1226,1222,435,437,440,659,657,636,640,642] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1212,1211,1213,1214,1206,1208,1209,1215,1216,1024,1031,466,496,1207,487,515,1026,1027] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        