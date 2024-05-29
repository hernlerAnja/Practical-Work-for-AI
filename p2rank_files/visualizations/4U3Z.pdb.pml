
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
        
        load "data/4U3Z.pdb", protein
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
 
        load "data/4U3Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1769,3609,1770,3610,3611,3613,3612,3407,3673,1766,1767,1768,1765,3860,3862,3843,3403,3401,3402,3780,3900,3936,3899,3734,1786,1788,1790,1798,3777,3746,3750,3779,3835,3844,1800,3581,3585,3620,3607,3685,3694,3698,3664,3701,3702,3699,3705,3752,3659,3668,3415,3417,3583,3454,3411,3412,3414,3418,3455,3416,3434,3711,3708,3745,3421,3733,3735,2667,2654,3582,2651,2653,1328,1327,3446,2658] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1092,1093,1095,1550,1552,1638,1096,1548,1363,4073,4074,4072,1380,1382,1357,1375,1358,1124,1286,1107,1104,1105,1106,1320,1264,1273,1269,1272,1274,1278,1351,1323,4089,1467,4086,1442,1440,1470,1424,1425,1436,1392,1395,1401,1398,1384,1386] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1339,1369,1370,1371,3726,3728,1341,4026,4027,4046,4047,4048,3443,3445,3446,3447,3989,4015,4020,3088,3091,1332,1335,3119,3121,3434,3709,3710,3711,3432,3742,3743] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [813,1711,3653,1432,1722,1685,1713,1716,1723,3646,3648,3649,3645,3650,1400,1401,3681,3691,1416,3680,1433,3643,3644,1740,1742,1743,1419,781,1136,1135,1137,812] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [745,1293,1295,1294,1160,1159,749,757,758,166,167,168,789,739,741,742,172,173,182,183,279] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [452,1074,1024,1025,1069,1070,480,481,1278,1258,1260,1086,1234,1243,1244,1245,1082,1080,453,456] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [90,220,214,259,260,218,222,224,78,89,563,567,568,569,1,256,265] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2516,4702,4692,4695,2556,3131,2530,3055,3049,3051,3065,3068,3061,3099,3100,3101,3094,3096,3097,2525,2526] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1370,3446,1327,1332,1335,3434,3709,3710,3711,3702,3705] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1032,2131,2132,2133,2137,2138,2140,1570,1572,1574,1578,1592,1593,1030,1029,1036,1037,2145] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4041,4031,4032,4034,4186,4166,4138,3722,3928,4170,4163] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        