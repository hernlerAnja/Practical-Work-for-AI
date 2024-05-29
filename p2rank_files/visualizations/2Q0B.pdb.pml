
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
        
        load "data/2Q0B.pdb", protein
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
 
        load "data/2Q0B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2382,2384,2359,2361,2363,2383,2931,3337,2882,2505,3307,3336,3413,2765,2360,2881,2684,2685,2924,2900,2903,2921,2521,3414,3415,3419,3420,3421,2517,2519,2520,2652,2866] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [180,315,495,691,692,575,576,696,1216,1210,1209,1215,329,327,676,330,331,462,155,157,159,178,179,160,1130,731,1131,1132,713,706,738,741,1102,1208] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1229,1230,330,331,404,347,406,429,1216,1215,161,162,408,410,409,1117,1237,1239,1079,1238,432,1372,1367,1106,1388,1105] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2521,3284,3311,3322,3420,2366,2520,2651,3437,3433,3434,2620,2622,3444,3435,3581,2365,2599,3597,3598,3442,3443,3576,2596,2617,2618,2619,2623,2624,2627] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1368,1370,1352,1353,1354,1360,1364,1369,1351,1358,1289,1296,1300,1295,1303,1252,1371,1372,399,400,401,402,1070,1239,1253,1283,3579,2590,1341,1342,1344,1346,1350,1231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3591,3569,3573,3589,3275,3560,3561,3562,3444,3577,3578,3580,3581,3550,3555,3559,3456,3457,3458,3488,3500,3501,3491,3490,3492] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3216,3218,3731,3732,3734,3742,3745,3217,4276,4270,4273,4274,4275,4287,4291,4280,3190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1017,2075,2082,2086,1533,1536,2068,2069,2070,2071,1518,1522,1525,1528,1015,1016,987,989] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2582,1459,1461,2571,2576,2608,1395,1769,1770,1771,1772,1765,1735,1737,1740,1742,1470] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [386,3670,418,3949,3950,3951,3680,388,3944,3978,3604,3946,389,390,393] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1943,1947,1954,1915,2129,2130,2061,2131,1978,2062,2063,1979,1981] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3372,3391,3373,3089,3113,3114,3090,3092,3093,3058,2965,2966,3057] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3351,3381,3383,3349,3350,2773,3399,3400,2887,2891] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        