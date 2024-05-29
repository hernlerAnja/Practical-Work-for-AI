
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
        
        load "data/6D2I.pdb", protein
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
 
        load "data/6D2I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2518,2529,2511,2513,2500,2514,2492,2184,2509,2510,2512,1026,2124,2123,2530,1028,1065,973,974,975,976,977,2183,985,957,598,599,986,988,2495,588,589,1268,1269,1195,1284,2119,2146,2148,2149,580,1006,597,585,587] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [786,789,793,1170,794,138,753,136,139,135,764,1169,758,761,1148,1141,1143,777,785,816,1153,377,378,379,613,736,1317,1318,741,360,361,147,180,196,198,197,154,157,162,362] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3478,3479,1585,1586,1587,3387,3476,1593,1579,1580,3451,2105,2106,1055,1057,1617,2781,3461,2071,2778,2780,2070,2061,2066,1058,1059,1052,1054,2938,3495,3496,3376,3378,3383,3385,3374,3465,1029,1063,1066,1061,2125,2126,2122] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3361,2953,2956,2978,2981,2985,2986,3362,2553,3509,2554,2570,2929,2569,2571,3510,3518,2968,2969,2947,2949,2960,2339,2388,2390,2372,2330,2328,2327,2389,3008,2331,2933,2805,3335,3340,3345,3333,3346,3514,3526,3527,2354,2355,3337,2346,2349] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1469,1470,1471,1473,1475,1476,1478,1434,1637,1132,1154,1138,1142,1144,1145,1146,1477,1697,1740,1741,1113,1118,1117,1119,1446,1447,1448,161,162,163,1486,1358,1111] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3662,3323,3663,3665,3667,3668,3306,3639,3308,3303,3305,3309,3310,3640,3324,3335,3345,3334,3336,3346,2355,3626,3638,3338,2350,2353,3670,3932,3934,3933,3625,3661] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2772,3197,3223,3226,3257,3195,2055,2056,2057,2081,2082,3198,4341,3218,3220,2069,2070,2079,2072,2791] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1026,2124,2123,2829,2831,2833,2530,2155,2428,2430,2452,2529,2184,2451,2509,1028,2121,2154,2119,2146,2148,2150,2149,2151,2153,2181] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1153,377,379,1325,157,162,163,160,180,1326,1335,181,486,1330,1338,1343,1154] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2861,2689,2691,2858,2860,2862,2208,2209,2210,2686] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2781,2790,3177,3178,3180,3150,3460,3461,2072,2791,3198,3167,3165,3166,3172,3173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [13,15,17,18,499,668,669,670,494,14,16,497,12] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        