
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
        
        load "data/7A4R.pdb", protein
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
 
        load "data/7A4R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1252,1264,1265,1393,1390,1276,886,1267,883,1385,1386,1292,1383,1384,382,688,864,1293,857,858,859,839,853,856,1269,1236,1253,1535,3187,3188,1234,1235,1523,1251,1534,1531,1554,2763,2774,1567,490,491,1414,1413,1481,1483,1480,1519,1226,1521,1406,1391,1392,1387,397,398,399,521,395,832,834,487,1482,1484,1486,239,224,231,234,247,249,212,218,250,270,268,269,215,216,464,244,3213,238,2789,2790,2791,3171,2784,2781,2782,2783,2770,466,1502,1501,1504,1514,1524,1578,1540,1543,1544,1536,1547,1556,1552,1555,1557,1499,1500,3184,3175,3181,3186,3189,3202,3210,3212,3198,3179,3193] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [3970,3971,3972,3987,3988,3989,4267,4000,4001,4004,3622,466,2985,2986,440,441,2959,2962,2965,2966,2968,3600,2978,2993,2995,2997,3213,4243,4253,4256,4266,4299,4268,4237,30,39,27,28,37,31,32,465,4272,4276,17,18,29,4279,4284,4285,4287,4289,11,22,23,4005,4286,439,428,3234,4213,4215,4217,4218,3235,4138,4139,4140,4141,4145,4146,4125,4119,4122,4123,4124,4012,4028,4115,4117,4118,4116,2988,2991,3017,3142,3144,3146,3015,3016,3589,3592,3595,4029,3575,2963,3588,3129,3209,3211,3206,4232,4250,4246,4252,3239,3240,3268,3243,3570,3571,3424,3565,3566,3567,3568,3569] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1669,1671,1442,1665,1443,1667,1673,1674,1677,1698,2649,2655,2658,2659,2660,2661,1672,1159,1124,2668,2669,1158,1668,1662,1663,1664,2615] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        