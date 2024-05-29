
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
        
        load "data/2W1I.pdb", protein
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
 
        load "data/2W1I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2498,2499,2501,2495,3524,3525,2491,2492,2493,2497,3087,2496,3080,3084,2947,3061,3062,3066,2682,2547,2549,2548,3508,2511,2698,3607,3611,3612,2842,3046,3621,3505,3606,3614,3494,3119,3112,3115,3111,2839,3618] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [744,1148,1149,1150,737,740,712,116,117,118,121,122,123,124,1119,1128,1129,1130,1238,129,125,172,173,174,686,687,120,709,307,691,321,1229,1231,1232,1236,1239,467,1246,499,671,745,772] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [147,148,151,154,398,399,400,427,1261,424,425,1253,354,4482,4484,353,345,150,4668,145,1415,1416,1420,1260,4514,4515,4516,4517,4669,386,389,426,1385,1277,1366,1386,1276,4453,4701,4703,4455,4456,1412,1395,1403,1404,1408,1409,1382,1085,1380,4452,4491] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4637,4638,4639,1424,1428,1431,1434,1463,1464,1465,1460,4636,1124,1122,1123,760,761,762,1108,1671,1417,1419,146,1094,1095,1133,4629,1448,1450,1757,1769,1770,1771,1764,1756,1717,4659,4657,1439] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4688,4691,4692,4693,4694,4695,4690,1426,1476,1474,1503,1509,4657,1905,4660,1875,1877,1440,1513,1903,1904,1507,4656,4687,1405,1406,1407,1535,1879,1942,4719,4720,4722,1391,1390] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3652,3755,3770,3630,2531,2532,2802,3628,2799,2800,2801,3741,2773,2775,2761,3651,3756,3790,3777,3783,3784,3460,3636] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2235,2239,2230,2233,1594,2242,982,1566,1567,1568,988,992,1017,1018,1019,1020,1021,990,2225,2214,1334,1569,1570,1573] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1426,1476,1477,1474,1503,1509,1408,1402,1405,1406,1382,1085,1553,1555,1535,1260,1415] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1868,3347,3349,2933,2932,3574,3575,2925,2922,3289,3291,3323,3326,4712,3324,1881,3348,3317,4685,4686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4614,4621,3369,3941,3942,3943,4617,3709,3365,3392,3393,3394,3395,4605,4608,4610,3969,4600,3363] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [140,144,145,1419,1420,4514,4515,4516,4517,4603,4580,4582,131,130,138,147,148,4639,4601,4598,1124] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4389,4529,4531,4532,4533,4171,4011] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1796,1636,2154,2157,2156,2158,1603,1966,1967,1606,1470] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3453,3848,3850,3989] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        