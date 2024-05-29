
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
        
        load "data/5A6O.pdb", protein
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
 
        load "data/5A6O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [264,146,147,95,96,98,100,101,104,575,705,706,252,703,724,1257,1258,1141,727,728,1143,89,90,92,1255,1259,1263,1264,1266,265,108,266,105,486,456,1265,1267,1260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2775,2903,2905,2910,2443,2922,3467,2656,2687,2774,2906,3464,3465,3460,3463,3455,3459,2455,2457,2295,2296,2337,2338,3466,2291,2292,2286,2280,2281,2283,2889,2686,3307,3458,3339,3457,3341,3343,2928,2927] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1463,1465,1355,3488,3271,3688,3690,3503,3483,3486,3499,3500,3501,3502,3504,3266,3268,3270,3485,1466,1365,1366,1439,3267,1436,1331] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1065,1066,1068,1070,1285,1286,1289,3543,3544,3534,3553,3554,3611,3639,3640,1490,3663,3665,1303,1288] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1329,1309,1310,1311,1312,1313,2503,2501,2540,2534,2538,2607,2616,2619,2580,2581,2593,2601,2577,442,2524,2509,467,505,506,440,468,469,471,477,479,436,470] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3563,114,115,116,3560,3567,3568,1279,1076,1288,1079,1095,1096,1119,1264,1266,1109,1111,108,112,105,1265,1287,1289] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2068,2069,2070,2071,2077,2083,1505,1006,1500,1008,1531,1509,1510,1512,1502,1005] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1352,3488,3481,2457,2299,3466,2655,3479,3480,2656,3464,3465,3460,2303,3279,1351] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4256,4259,4261,3700,3698,3709,3699,3731,3208,4268,4262,4270,3710,3712,3702,3206] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [414,383,384,1281,421,1279,1280,113,114,116,285,111,112,266,284,425,455,1265] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1101,771,1102,769,1104,1112,1103,1611,3604,3602,3592,3593,752] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3279,3295,3296,3312,1351,1368,3466,3465] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3843,1403,1404,1393,3833,1392,3302,3806,3807,3301,2969] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        