
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
        
        load "data/6N0P.pdb", protein
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
 
        load "data/6N0P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [491,492,2760,2764,3216,3217,3218,3227,1130,1131,1093,1123,1104,1121,3266,2618,3005,1099,1108,3249,3250,3004,3006,1105,3003,2995,3024,3027,2972,2354,2358,2359,2361,884,885,886,887,853,876,908,854,2357,2325,3223,3224,3212,2973,2786,523,2643,2640,2642,524,1097,1147,640,641,2609,2610,2611,542,634,637,645,1098,230,224,227,231,232,234,648,2598,543,2603,2604,216,487,499,500,905] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [246,117,119,120,163,652,654,258,261,164,1171,123,1189,515,516,636,631,632,615,617,614,411,1160,1172,1174,1176,1163,1164,1169,685,686,1053,437,436,660,681,1078,1080,1081,656,674,653,659] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3295,3195,3197,3199,3293,3292,3294,2804,3169,3288,3290,3291,2779,2793,3200,2778,2800,2240,2241,2773,2238,2772,2291,2289,2290,2805,2634,2635,2750,2755,2385,2751,2373,3282,2386,2388,2530,2780,2775,2733] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [437,507,948,1157,947,1002,1150,1151,436,985,1000,408,998,1211,1214,1163,1164,1001,1003,1167,1158,1160,1004,427,428,429,404,464,516,409,411,990,996] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2556,3282,2626,3270,3276,3277,3279,3283,3115,3121,3122,3123,2555,3109,3117,2527,2530,3286,3067,2583,2547,3104,2548,2554] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1417,1418,1419,1226,1227,1231,1232,1235,1236,1008,1310,1311,1312,1367,1339,1250,1202,1246,1247,1022,1263,1248,1249,1273,1013] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        