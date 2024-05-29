
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
        
        load "data/6U2G.pdb", protein
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
 
        load "data/6U2G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1408,470,471,3110,3111,3112,3459,3460,3461,472,473,474,2538,3121,3122,3123,2542,3458,3457,1407,1397,1399,1403,1398,2529,2532,2533,2534,3060,3061,2537,2541,3486,3487,3488,2578,2579,2673,2661,2660,451,466,2526,3088,3092,3093,3063,3066,3067,3081,2543,2545,2540,2544,1415,1417,1419,1410,2677,3468,3574,3430,3564,3567,3568,3572,3573,3025,3039,3037,3038,3043,2922,3665,3447,3664,3445,2546,2550,3672] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1173,1189,1170,1171,1172,4062,1187,1455,1158,1474,1202,1445,1461,1463,1459,281,282,285,289,292,1427,1428,1446,4048,1366,4037,4042,4044,1386,1387,1388,1389,1385,4051,4052,288,1304,1307,1309,1310,1305,1306,1148,297,298,429,431,1357,1359,1365,1367,1314,1322,1323,445,447,788,1363,1390,1391,4031,1361,1336,1431,4060,4061,1441,1443,1450] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [876,851,844,846,850,843,825,826,314,430,431,801,802,313,267,273,274,275,276,268,270,271,1200,1224,1225,1226,1309,1310,1302,411,822,1201,281,278] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1399,1401,1402,3983,3984,3985,1375,4007,4010,469,3112,1381,1351,510,511,481,476,483,491,3969,3971,3975,3979,3145,3146,3148] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1303,1304,1309,1311,679,429,787,801,802,1359,1314,788,606,691,607,799] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [60,1254,1255,62,59,1288,810,1271,1241,1270,685,809,669,682,811,95,98,93,94,96,90,89,72,73,644,640,634,637,641,395,706,390,119,815,812,807] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3025,3039,3038,3564,3567,3568,3573,2939,3578,3596,2936,2919,3583,3575] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1359,1314,1333,583,1331,447,788,1303,1304,1309,1305,1311,429,431,787,606,607,1337] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1503,1505,1160,1366,4040,4043,1159,1473,1474,1144,1161,1162,1163,4070,4035,4034,1542,1544] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3415,3711,3818,3709,3623,3419,3661,3446,2550,3428,3429,3710,3671,3427,3658,3644,3663,3639,3621] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3554,2923,3047,3052,3506,3076,3504,3505] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1689,1690,1691,1753,1818,1792,1959,1754] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2498,2480,2481,2993,2994,2668,2684,2685,2483,2972,3017] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        