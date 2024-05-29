
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
        
        load "data/7M0W.pdb", protein
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
 
        load "data/7M0W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3491,3494,3504,3493,3522,3600,3601,3603,3608,3610,2958,3523,3524,3074,3096,3097,2697,3079,3481,3482,3464,2586,3463,3483,2595,2713,3609,2711,2712,2613,2615,2709,2614,2581,3099,3102,3075,3060,1409,3495,3496,3497,480,481,482,3129,3156,3158,3779,3780,1423,1425,2573,2574,2577,2578,2568,2569,2570,2565,1424,3117,474,478,459,1405] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1180,1166,1178,1179,1181,1218,1315,437,439,1316,1317,1318,1217,1373,1374,1375,1396,1371,1369,1365,1367,455,1167,1511,1311,1312,1313,1314,1319,1321,1322,615,1328,1309,809,685,697,795,1330,1156,1331,1341,1344,1339,1345,796,614,4159,300,1196,1197,298,299,296,304,1195,1392,1393,1394,1395,1467,1461,1479,1480,4169,1456,4155,4149,4151,4138,4144,4148,4150,1433,4168,1434,1437,1447] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1217,1208,852,854,858,859,1233,851,883,276,278,437,438,439,1318,321,322,814,419,1232,1234,826,830,833,810,287,280,281,282,284,275,882,884,1209,1210,289,290,304,285,286,306,307,308] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [649,652,81,677,819,1296,82,103,102,97,98,101,76,127,399,128,1279,66,68,69,67,1264,96,104,714,690,815,820,817,818,403,823,1249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4090,4091,4092,3183,3184,4086,477,484,489,3179,3181,3182,3148,4076,4078,3173,1406,1379,1385,1387,4114,4116,4081,4117,1409,519,1359,1382,487,518,499,1384,1354] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3614,3632,3060,2974,2976,3619,3621,3075,3603,3604,3074,3609,2711,2712] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2516,2703,2534,2721,3030,3008,2520,2517,2518] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4141,1536,1539,1541,1542,4140,4142,1546,1167,1510,1511,1374,1169,1171,4138,4147,4150,4177] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        