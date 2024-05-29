
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
        
        load "data/5S7C.pdb", protein
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
 
        load "data/5S7C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2446,2448,2449,2450,2451,2423,2418,3372,3507,3659,3660,3504,3505,3506,3411,2472,2571,2573,2470,2567,2953,2650,2695,2696,2957,2575,3388,3389,3402,3674,3675,3679,3500,3501,3399,3027,3055,3499,3427,3022,3026,3428,3019,3400,2421,2471,2559,2419,2420,2976,2993,2989,2991,2972,2815,2971,2998,3008,2995,2626,2445,3657,3658,3666] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [636,245,247,249,120,121,123,144,145,146,124,125,93,94,98,119,122,709,710,745,702,705,1135,357,494,1206,1207,1208,1211,1133,1075,1213,1214,1091,1092,1102,1114,1103,1105,233,96,95,668,670,672,241,632,650,651,493,655,674,677,687] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4209,4212,453,4210,4211,462,856,859,1179,1181,912,882,883,914,854,884,852,930,931,932,2265,3771,2293,973,991,3770,993,4235,4237,4275,4274,3750,3769,4200,4202,2319,4244,4245,451,452,1180,436,941,939] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3745,3746,3872,3786,3843,3357,3671,3716,3702,3712,3362,3621,3358,3361,3845,3622,3527,3640,3655,3668,3664,3667,3743,3768,3741,4201,3785,3797,3718,3670] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1324,1325,1731,1732,1733,1336,1301,1323,1815,1098,725,729,1106,727,1090,1092,1104,1105,1107,1800,1794,1801,1802,1805,1807,1605,1740] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1064,1065,1060,1285,1288,1289,1291,1292,1345,1295,1397,1372,1374,1840,1061,1069,1074,1276,1415,1414,1375,1341,1425,1426,1501,1472,1474] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3387,3389,3402,3680,3403,3404,3707,3692,3694,3695,3696,4102,4103,3679,3681,3688,2448,2450,3395,3396,3400,3401,3042,3044,3046,3976,4104,4185,4186] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1455,1483,1484,1457,2252,2247,2250,2251,2253,2258,1516,2241,2257,1454,1492,1490,2230,969,975,977,2263,2264,1482,955,957,1453,1480] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4582,4576,4579,4580,4581,4591,4570,3262,3275,3825,3826,3853,3854,3855,3861,3863,4559,3887,3266,3851,3264,3263] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [455,658,1193,457,682,1150,1151,1152,447,477,660,657,683,680] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1279,1280,1278,291,293,119,122,249,120,124,1281,1075,1214,1091,1092,1114,1300,1287] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [802,791,833,756,757,787,869,867,1172,1142,1156,1169,1170,700,835] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2779,2787,2803,2816,2817,2978,2979,2981,2977,3003,3004,3442,2789,3444] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [516,28,51,643,227,522,193,187,189,191,192,194] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3241,3243,3223,3277,4593,3248,2783,2785,3294,4616] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [358,1220,494,1203,1204,1207,491,490,651,392,393,483,1197] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        