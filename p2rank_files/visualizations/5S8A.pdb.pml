
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
        
        load "data/5S8A.pdb", protein
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
 
        load "data/5S8A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3467,3455,3066,3484,3095,3059,3062,3445,3456,3458,3067,3735,3428,3563,3560,3561,2470,2492,2579,2471,2441,2443,2490,2491,3025,3027,2438,2439,2440,2595,2721,3556,3557,3562,2841,3555,2983,2591,2593,2997,3483,2722,2587,2979,2998,3034,3031,2461,2462,2465,2466,2467,2468,2469,2650,2652,2635,3722,3713,3714,3715,3716,3730,3731] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1097,758,130,131,255,1219,1275,1276,1277,1278,125,126,297,298,299,128,1096,1107,1108,1119,722,723,1109,1213,1216,1217,1218,1080,150,151,152,1140,99,718,100,101,102,690,715,104,239,687,681,683,1212,253,635,639,654,500,653,661,251,247,363,499,1211,1297,1284,1293,1292] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3828,3829,997,2279,2307,4290,4291,4292,4289,895,896,897,927,943,944,945,457,459,952,442,925,465,475,1185,468,1184,1186,865,867,869,980,954,996,998,3814,3815,3808,4313,4314,4315,4316,4317,4320,4287,2336,2338,4354,4355,4279,4281,4283,4280,4282,4278,4277,2333,3816] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3418,3711,3724,3726,3727,3826,3799,3804,3774,3776,3801,3803,4281,3730,3696,3843,3855,3677,3678,3936,3417,3413,3414,3770,3760,3844,3907,3595,3909,3828] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1338,1065,1289,1292,1342,1344,1371,1295,1286,1288,1282,1285,1069,1070,1273,1423,1394,1369,1844,1412,1469,1411,1471,1372,1507,1074,1079,1066] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3443,3445,3457,3458,3459,3451,3082,3460,3735,3736,3765,3754,3752,3753,4174,4175,4048,3084,3086,4176,4253,4265,4266,2467,2469] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1335,1754,1298,1333,1320,1321,1322,1745,1811,1815,1816,1746,1747,1814,1829,1808,1097,1110,1111,1112,1095,1109,738,740,742,1103,1611] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [967,968,1485,1487,1489,1481,1453,2278,2267,2272,2277,2261,2264,2265,2266,2271,970,981,982,1451,1498,1452,1496,2255,1522,2244,1450,1491,1477,1479] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4653,4659,4665,4662,4663,4664,4670,4642,4674,3318,3319,3320,3331,3333,4677,3888,3925,3927,3928,3322,3915,3917,3889,3890,3918,3919,3951] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [696,1155,1156,1198,665,667,695,693,453,483,671,678,463,461,1157] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [522,523,233,646,647,34,57,193,195,196,197,198,199,200,194,528] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2880,2881,2883,2392,2972,2991,2974,2409,2396,2393,2970,2971,2973,2969] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3279,4705,3297,3299,3304,2809,2811,3333] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [870,1177,1175,880,882,840,815,846,848,800,713,770,1147] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [489,1202,1209,1225,497,1208,496,1226,1212,654,500,364] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        