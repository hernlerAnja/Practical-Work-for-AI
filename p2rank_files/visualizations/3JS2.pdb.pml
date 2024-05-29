
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
        
        load "data/3JS2.pdb", protein
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
 
        load "data/3JS2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [170,178,201,204,225,203,1305,513,200,202,392,766,770,626,1220,627,625,1297,1298,1317,1315,173,174,168,171,769,762,1221,797,206,191,189,786,787,790,824,825,748,376,744,226,390,546,547] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3635,3636,3617,2981,3102,3540,3148,3511,3541,3144,2520,2522,2577,2524,2525,2521,3151,2727,3098,3120,3123,3141,2743,2741,2742,2867,3625,3624,2526,2527,2578,3626,3618,3619,3637,2900] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1388,1355,1356,1386,1359,1169,1149,1166,1167,1144,1154,1155,1168,1361,1362,1157,1611,196,1206,1194,1301,1326,1328,1332,1357,1302,1304,1445,1488,1489,1490,1424,1387,1425,1426,1392,1398,1195,1487,1443,1440,1496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2743,2868,3646,3647,2742,3624,3648,2559,2560,2561,2562,2564,2532,2533,2539,2540,2543,2528,2529,2578,2530,2531,2747,2839,2842,2844,2553,2554,2555,2556,2832,2833,2834,2838,2811,2548,2552,2759] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3486,3488,3660,3661,3474,3846,3847,3487,3489,3475,3848,3930,3809,3515,3765,3808,3744,3674,3705,3706,3707,3708,3658,3679,3929,3931,3907,3745,3712,3718] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1946,1948,1701,1668,1671,1501,1804,1806,1524,1897,1923,1931,1941] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3844,4217,3988,3989,3991,4243,3821,4124,4126,4021,4413,4414,4415,4268,4251] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3512,4060,3838,3165,3791,3793,3777,3167,3514,3763,3764] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [208,195,392,209,212,1327,490,457,484,408,488,514,480,391,396] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1740,813,811,1443,1444,1457,1460,1196,1445,1469,1471,1192,1193,1194,1451] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        