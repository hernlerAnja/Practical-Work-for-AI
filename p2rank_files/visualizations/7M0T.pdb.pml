
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
        
        load "data/7M0T.pdb", protein
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
 
        load "data/7M0T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2713,3608,3610,3493,3504,3522,3523,3524,3129,3124,2565,2613,2614,2615,2697,3097,3096,3099,3102,3117,3494,3495,3496,3497,3780,3483,3505,2569,2571,2573,2574,2577,2578,2595,2712,2568,2570,2709,2586,2581,1423,1425,3604,3609,2958,3600,3603,3075,3074,3079,3463,3632,3060,3619,3621,2977,3614,2975,479,480,478,481,482,3158,459,474,2562,1405,1409,3156] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1167,1156,1321,1322,1330,1331,1373,1375,1368,1369,1374,1341,1344,1511,1345,1364,1365,1367,1396,455,796,1362,795,614,615,1165,1166,1178,1181,1314,1319,1179,1180,1627,1312,1313,1317,1217,1316,1318,1309,1311,1315,1327,437,809,807,1329,685,697,298,299,1447,1196,1197,1469,1467,4169,1480,1479,1465,1394,4155,4157,4159,1392,1393,4144,4151,4148,4149,4138,4150,1395,1414,295,296,300,302,304,303] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [439,1208,1217,1318,1234,438,810,276,278,321,322,419,814,1233,854,858,859,1232,828,833,851,830,1209,1210,290,1196,289,280,281,282,286,287,882,883,884] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1296,817,818,819,1249,1264,1279,94,95,96,76,66,67,68,82,823,677,690,815,714,403,98,101,102,103,104,127,128,399,642,652,81,649,820] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [499,3173,3179,3181,3182,3184,4091,4076,4090,4078,4086,4118,491,477,487,489,1385,1406,3148,484,4092,1379,519,518,1359,1354,1380] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3030,3008,2516,2517,2518,2520,2488,2534,2703,2721] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        