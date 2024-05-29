
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
        
        load "data/5HBE.pdb", protein
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
 
        load "data/5HBE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1423,1407,1408,646,647,1303,1304,855,2812,2813,886,2811,299,241,242,237,1409,1412,1413,1414,1416,1437,442,542,298,425,240,297,818,798,800,801,802,803,438,440,797,274,276,277,271,272,245,648,807,824,827,1277,1415,1261] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1245,1247,1525,1560,872,875,870,1775,910,912,865,867,1243,1254,1561,900,902,1547,1548,1549,1523,1819,1820,942,940,1802] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2639,2637,2667,2408,2409,1791,2378,2423,1787,2367,2374,2379,1779,1785,2380,1025,1029,1014,1017,998,1013,1031,982,983,981,1032,1039,2682,2683,1003,1040] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1176,1481,3715,3726,3728,3730,1199,1200,1220,3718,1479,1427,1478,1188,1194,2870,2874,4143,562,531,3709,2861,2865] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3592,5044,3593,3907,3909,3606,3605,3607,7,8,9,3964,3905,3902,3899,5018,3918,5017,4997,5016,5022] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2870,2873,2874,4143,4142,3698,531,3709,4131,4200,3404,3405,3710,4144,4147,4170,3434,3388,3403,2861] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4158,4196,4198,2886,2904,2905,2907,2919,2920,4155,4163,4166,4209,4207,4208,4514,4515,4507,4510,4516,4233] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1590,1591,1667,1665,1666,2523,2130,1624,1627,1642,1628,2531,2522,2094,2097,2121,2118,2119,2078,2075] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [541,458,270,1428,510,511,1439,268,271,1419,1414,1435,442,542,1425,1442,1451] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3174,3214,3216,4431,4443,4445,4885,4886,4822,4823,3039,3040,4450,3100,3248,4453,4440,4446,3073,4482] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2506,2507,2502,2010,2014,2291,2295,2466,2468,2501,2031,2289,2063,2064,2066,2496,2499,2500,2490,2464] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1215,1657,1228,1452,1659,1229,1230,1489,1491,1492,1569,1570,1571,1568,1601] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [52,3545,3529,3543,50,3571,47,42,46,3576,3553,3549,3119,3118] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4652,4654,4689,4696,4743,4744,4745,4576,4578,4778,4780,4779,4771] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        