
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
        
        load "data/3B8R.pdb", protein
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
 
        load "data/3B8R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1374,1375,1376,1377,1381,1382,1383,724,609,610,349,196,198,199,743,729,746,1384,1387,1390,1392,1393,1394,217,218,219,348,357,707,364,365,494,497,361,492,709,528,530,529,725,195,194,783,773,776,1297,1298,755,772,749,1267] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3540,3634,3640,3642,3556,3633,2505,2506,2508,2509,2511,3067,3076,3079,3083,3086,3526,3557,3075,2544,2686,2688,2689,3641,2690,2800,2682,2543,2677,2542,3027,2913,2674,3046,2673,3010,2832,3012,3028,3052,3049,3058,3048,3635,3636,3653,2797,2831,2833,3646,3651] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1503,1505,1855,4182,4184,4158,4160,4157,4168,4171,4177,4183,1822,3954,4003,4004,4150,4151,4154,3919,1815,1783,1785,1787,1817,1821,1501,1502,1500,3972,1515,1853,1854,3162,3161,3953,4193] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1511,1522,3136,3529,3977,3978,3100,3099,3527,3528,3085,3523,1524,3695,3709,3930,3985,3974,3696,3697,3666,3710,3530] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1001,924,991,990,1036,1022,1048,1049,1050,1038,1039,1040,920,922,923,1023,916,952,2263,2266,1337,1338,996] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1331,1336,1337,1338,996,813,815,848,850,992,993,1000,1001,991,994,995,1016,1050,769,770,771,1310] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1209,1212,1186,1197,1204,18,547,1207,545,1398,522,520,516,518,521,543,544,1396,1208,556,554,1,17,27] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3118,3597,3152,3153,3275,3252,3250,3253,3254,3251,3259,3260,3069,3070,3072,3116,3565,3071,3073,3074,3590,3596,3255] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1109,1108,1072,1110,1334,1335,1325,1107,1131,1098,1100,2213,1040,1345] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1177,1176,1560,1559,2112,2118,2122,2117,2115,2129,2133,2134,1569] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1450,1451,1671,1712,1715,1719,796,797,833,1708,1271,1268,1270] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        