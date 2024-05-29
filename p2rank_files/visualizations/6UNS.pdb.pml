
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
        
        load "data/6UNS.pdb", protein
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
 
        load "data/6UNS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [342,234,1033,1126,1129,656,1021,684,651,601,1049,647,648,620,623,633,462,461,1289,1011,1024,1281,1282,1283,108,129,130,74,79,233,105,107,109,110,232,131,230,582,226,596,218,77,75,614,616,618,597,106,99,100,104,278,1028,655,1122,1121,1050,1048,989,1010,1022,1297,1298,1302,1303] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3297,3389,2382,3285,3286,3258,3274,2355,3381,2473,3312,3313,3314,2381,2916,2866,2888,2881,2358,2360,3275,2356,2357,2359,2361,2921,3288,2898,2912,2913,2949,3386,3387,3382,3383,2487,2488,2489,3539,2533,2721,2847,2861,2862,3538,2376,2368,2369,2330,2331,2332,2333,2325,2326,2327,2328,2365,2366,2485,2367,2363,2353] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3453,3451,1459,3452,3454,3436,3438,3439,1458,1460,3693,3699,1487,3160,3163,3164,3167,3186,3187,3472,3473,3474,3475,1495,1496,1193,3145,3153,3158,3719,3746,3718,1190,1176,1177,1178,1179,1214,1431,905,1192,1449,1451,1442,1437,1441,1457,886,901,947,904,1189,4459,1215,3705,3701,3687,3216,3708,3710] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3732,3734,3736,3667,3247,3248,3244,3761,3764,3600,3627,3762,3243,3626,3597,3599,3681,3682,3666,3649,3624,4085,3501,3502,3534,3543,3547,4086,3549,3550] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1370,1341,1343,1393,978,979,1148,1293,1294,974,1278,1287,1291,1410,1411,1371,1426,1368,1473,1475,1477,1503,1505,1502] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1011,1023,1024,1025,1026,1795,1796,1797,1803,1792,1793,92,108,1298,1302,1304,1313,1317,1303,1319,1320,1321,1726,1727,671,673,675,1332,1334,1009,1022,1810] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3288,3289,2937,2939,3290,4069,4054,4055,4061,4056,3275,3558,3560,3559,2357,2359,3286,3273,3281,3859,3588,3590,3985,3575,3576,3573,3577,3986] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2181,2184,3449,2186,900,2192,2196,2187,3450,1487,3185,3187,886,861,887,889,864,898,1483,1519,1486] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4469,3145,3146,3148,3153,3158,3744,3746,3742,3745,4454,4457,4460,4465,1189,4459,1190,1191] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2692,3330,3328,2709,2682,2869,2871,2894,2893] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        