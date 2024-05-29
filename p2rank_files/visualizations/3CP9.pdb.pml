
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
        
        load "data/3CP9.pdb", protein
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
 
        load "data/3CP9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2928,2929,2690,3043,2927,3641,3644,3646,3044,2693,2698,3026,3028,2848,2849,3568,3068,3091,3092,3095,3567,3645,2521,2520,2559,3662,3663,3664,2517,3659,3661,2560,3655,2705,2706,3648,3649,2702,2816,2518,3102,3048,3065,2926] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [366,1380,365,498,610,608,609,725,726,530,531,201,204,203,742,219,350,730,358,362,710,198,199,1298,1395,1375,1376,1299,611,1377,781,784,777,774,750,747] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2921,3638,2874,3440,3441,3478,2875,2879,2840,2841,3653,3494,3482,3488,3490,3492,2927,3635,3641,3646,3044,2813,2848,2849,3649,3650,2814,2815,2816,2926] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1384,495,522,1209,527,557,556,561,608,609,530,531,498,1381,496,1225,1227,1369,1219,1221,1223,1366,1171,603,1172,1213,1372] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3540,3541,3683,3116,3115,3538,3941,3152,3988,3989,3720,3721] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3587,2669,3582,3071,3049,3057,3581,3583,3076,3578,2906,3052,3630,2888,3631,3613,3614,3615] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [797,798,1269,1270,1271,1272,1443,1664,1705,1719,834,1701,1712,1444,1431,1708,1711] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1050,923,924,925,1024,1023,922,917,921,920,952,1040,1041,2230,2233,2256,2259] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        