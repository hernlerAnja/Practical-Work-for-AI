
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
        
        load "data/4U41.pdb", protein
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
 
        load "data/4U41.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [175,176,291,292,293,1163,1164,1171,1174,276,285,289,627,639,644,626,628,630,507,643,645,646,404,120,121,670,682,683,676,1084,1162,1160,1161,667,650,664,666,509,634,107,150,151,155,152,154,1170,1165,1167,1168,1169,144,153,123,125,711,712,713,714,1085,133,746,738] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3584,3608,3610,3612,1215,1231,1232,1204,3993,3994,1390,1388,146,147,141,148,1021,1170,1029,1030,1031,1032,1168,1169,1017,1391,1392,1018,1059,152,1049,1216,292,293,1235,1282,1238,1280,1263,1265,1276,1264,1224,1226,1229,4006,4007] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3605,3616,3622,3672,1613,3518,3540,3541,3543,3544,3539,3548,3553,3590,1604,1605,1603,3778,3782,3764,3780,3697,1596,1598,1597,1610,3516,3327,3329,3515,3324,3654,3856,3666,3670,3356,3337,3338,3339,3631,3628,1220] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2408,2409,2410,2411,2511,3488,2404,2969,2395,2527,3365,3366,3364,2990,3392,3391,2974,2977,2971,2973,2528,3478,3487,3468,3498,3320,3466,3469,2953,3355,3356,3375,3376,3377,3339,3314,3336,3319,3518,3542,3544,3535,3534] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1570,1571,1256,1272,1273,1550,1551,1568,3594,3600,3601,3593,1258,1241,1539,1544,143,1061,3566,3569,1059,1049,1058,1046,1047,705,706,1054,1513,3568,3611,3612] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1210,1211,3965,3369,3368,3903,3931,3934,3929,3013,3662,3630,3648,3941,3646,3663,3940] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [217,218,220,256,257,74,258,219,221,222,519,521,523,515,516,517,518,520,522,62,544,73] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2492,2799,2800,2801,2802,2480,2493,2242,2240,2455,2457,2330,2452,2479] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        