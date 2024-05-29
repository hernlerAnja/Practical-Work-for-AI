
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
        
        load "data/1K2P.pdb", protein
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
 
        load "data/1K2P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2208,2200,2201,2203,3227,3118,3122,3123,275,276,2761,3119,2183,2185,2188,2195,2196,2746,2240,2769,2182,2186,2759,2337,2338,2239,2241,2336,2222,2223,2392,3247,3250,2340,2679,2423,2424,2429,2431,3223,3221,3220,2738,3146,3147,2741,2745,3222,3230,3231,3240,3241,3243,2489,2490,3219,2323,2693,2698,2694,2460,2579,2678,2459,2457,2461,2560,3237,3236,3238,145,162,2197,2184,2190,2193,161,137,140,128,256,257,260,159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [252,402,250,590,347,591,152,605,606,235,1151,1152,1153,1154,1155,1156,1159,1161,343,345,371,372,373,108,1139,1127,1132,1138,153,474,1130,101,102,1058,610,100,1135,1133,1140,472,1148,131,133,135,132,134,107,103,105,120,116,650,1059,631] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [650,653,657,658,675,679,680,682,639,649,674,2362,2363,2364,2365,1030,1044,92,2233,2234,2347,110,2348,89,90,91,2250,2225,1059,631,643,672,681,676,2643,2651,2652,95,96,105,109,87,94,108,1139,1138,153,101,102,1058,100,235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3382,3384,3496,3348,3515,3343,3345,3094,3096,3394,3378,3381,3084,3086,3432,3079,3081,3082,3083,3461,3510,3513,3542,3460,3439,3462,3330,3366,3367,3371,3349] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3424,276,281,2761,2762,3119,3692,2210,2211,2212,3121,277,3120,3123,3094,3095,3096,3389,3392,3409,3425,3391,3408,3109,3639,119,128,126,264,274,302,303,304,291,292,294,295,296] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1263,1264,1267,1268,1270,3375,998,1256,994,1426,997,1283,1294,1296,1305,1306,1297,993,1428,1273,1005,1162,1159,124,123] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2670,2671,2248,2250,2668,2134,2136,2150,2152,2149,2115,2330,2148,2135] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2389,2383,2384,2385,2215,2216,2225,2351,2355,110,1033,1034,2362,2363,2364,1030,1044,1035,1304,1008,121,123,112,113,109,111,108,1139,1301,2219,2221] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [613,614,1118,634,1117,446,611,503,481,447,449,450,619,1101,1071,1074,1091,1102,1090] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3205,3206,3162,3169,3170,3159,3175,3190,2700,2702,2571,2538,2539,2707] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3079,3081,3082,3083,3510,3513,3542,3330,3515,3086] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [521,13,14,16,47,520,12,586,592,597,598,599,580,32] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [838,802,803,804,807,771,840,693,736,1095,1086,1093,1094,647,829] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        