
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
        
        load "data/6LVK.pdb", protein
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
 
        load "data/6LVK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3476,3491,3092,3506,3089,2494,2496,2495,2497,2676,2519,2498,2499,2678,2809,2841,3485,3486,3583,3584,3587,3590,3504,3582,2517,2462,2518,2465,2464,3055,3057,3064,3039,3505,2662,3061,2674,3038,3082,2842,2918,3479,2460,2461,2466,2467] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [188,192,193,196,197,198,200,194,199,1301,1188,1202,511,1314,1316,477,483,484,478,380,1300,195,489,487,1480,1481,1164,1165,1323,1322,1178,1201,1315,1191,1192,2715,2716,2719,1190,1504,1506,1509,1511,1508,1510,2483,2485,2486,189,190,2488,191,2487,420,422,3770,3752,459,482,3751,456,479,433,434,418,1460,1463,1324,1465,2731,3749,3750,2779,3612,3613,3754,3454,2489] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [799,1187,1298,1202,792,1217,170,220,164,165,167,771,789,200,202,1299,1301,168,625,745,746,1216,1294,1293,768,379,381,512,221,222,377,365,1196] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2483,2486,191,420,422,3479,3480,3481,3770,434,418,2779,2776,3604,3605,3611,3612,3613,3454,3749,2490,2493,2496,2492,2498,3491,2677,3589,3603,2808,3590,2753,187,406,2480] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3750,3753,3736,3742,3746,3734,3735,3723,3764,2778,3613,3754,2749,3626,3627,3733,3728,3444,3740,3751] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1324,1338,1465,1155,1439,1337,1475,1453,1457,1461,1462,1446,1464,1445,1434,452,1444,1442,1443,1380] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1615,1626,1618,1629,2150,1098,2160,2153,2155,2156,2167,1070,1096,1097] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2486,190,2488,191,2487,2756,3752,1461,1462,1463,2746,2730,2731,2745,2779,3754] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3387,3904,3907,4457,4450,4453,3918,3910,3915,4452,3900] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [838,1253,1254,1256,972,969,993,994,1000,937,938,970,971,973,920] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4226,4377,4379,4380,4381,4382,4086,4233,4084] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        