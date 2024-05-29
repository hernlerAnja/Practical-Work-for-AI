
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
        
        load "data/7A52.pdb", protein
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
 
        load "data/7A52.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [224,249,218,219,250,270,269,215,1248,1388,382,216,886,212,852,397,399,395,1386,1382,1385,1259,1271,1287,1378,1380,1381,1379,829,688,856,1288,857,839,853,1260,883,864,522,832,834,835] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2789,2790,231,234,1248,1388,224,247,249,1261,244,464,466,489,490,491,238,239,398,415,399,487,1260,1221,1230,1229,1231,1387,1259,1271,1408,1409,1401,1479,1481,3211,3213,3171,3187,3188,2784,2791,3185,3186,2770,3202,1495,1514,1509,1516,1530,1518,1519,1529,1526,1478,1475,1476,1477] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4272,3987,3989,4267,4263,4266,4001,4004,4005,4268,4299,441,439,440,4243,30,17,18,26,27,28,29,4284,4285,4287,4289,11,22,23,4286,31,32,428,4276,4279,37,2981,39,2978,4213,4215,4218,2985,2986,4145,4146,3970,3971,3972,3988,4013,4125,4012,4124,2987,2988,2991,2993,2995,3210,3212,3146,4232,4246,4250,4253,4255,4252,3235,3268,4138,4139,4140,4141,4217] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2997,3144,4029,3592,3600,3589,2995,3015,3016,2962,3129,2963,3588,3017,3142,3988,4013,4123,4125,4000,4012,4028,4119,4122,4115,4117,4118,4116,3568,3570,3566,3567,3569,3571,3424,3565,3575,3423,3622,2959,2965,2968,2970,2971,4001] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2784,3175,2780,3179,1539,3185,3186,2781,2763,2770,1530,1535,1531,1542,1549,1551,1547,1548,1550,1552,2789,1248,2774,1264,1562] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1154,2650,2663,2664,2653,2654,2655,2656,1153,1438,1664,1663,1662,1119,1693,1666,1667,1660,1657,1658,1668,1669,1672,2657,2644,1656,1659] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        