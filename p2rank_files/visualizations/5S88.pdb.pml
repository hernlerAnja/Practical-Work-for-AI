
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
        
        load "data/5S88.pdb", protein
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
 
        load "data/5S88.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1080,1091,1092,1103,706,707,1093,1197,1200,1064,1202,1081,742,1094,130,131,255,1203,1268,1269,1270,125,126,297,299,128,151,152,702,674,699,1124,99,100,101,102,150,104,239,671,665,667,251,253,363,364,633,648,500,247,629,647,652,1186,497,1122,1192,1195,496,1210,1196,1209,1289,1276] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [2444,2445,2446,2447,2448,2470,2449,2468,2469,2416,2419,2421,2417,3507,2569,2695,2696,3501,3504,3506,2567,3659,3660,2561,2565,2953,2957,3389,3674,3675,3679,3372,3411,3400,3402,3500,3499,3399,3026,3428,3427,3027,3055,3019,3022,3008,2553,2976,2998,2989,2991,2993,2995,2815,2972,2971,2814,2440,2443,2624,2626,2609,3657,3658,3666] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [929,2260,2288,4225,4226,4227,4228,880,909,911,468,878,879,881,849,853,927,457,459,442,882,465,475,1168,1169,1170,851,964,3772,3773,938,980,982,928,936,981,4251,4252,4253,4290,4291,4261,4214,3758,3752,4215,4217,2314] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3640,3668,3655,3664,3670,3798,3770,3743,3720,3745,3747,4218,3787,3799,3361,3362,3357,3358,3671,3674,3748,3714,3718,3880,3704,3622,3851,3853,3621,3788,3771,3772] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1281,1284,1334,1336,1363,1287,1278,1280,1274,1277,1053,1054,1265,1419,1386,1361,1841,1364,1503,1404,1465,1403,1467,1049,1050] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3389,3679,3401,3402,3403,3404,3709,3680,3698,3696,3697,4118,4119,3044,3046,2446,2448,3042,3395,3992,4202,4183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1750,1290,1325,1327,1312,1313,1741,1314,1806,1742,1825,1079,1093,722,724,726,1081,1094,1095,1096,1607,1087] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4595,4601,4604,4605,4606,4607,4616,4619,3275,3277,3832,3869,3871,3872,3833,3834,3859,4584,3264,3861,3862,3863,3262,3263,3895,3266] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2259,2248,2253,2258,2242,2245,2246,2247,951,952,1477,954,1483,1485,962,965,966,1494,1447,1492,2236,1518,1446,1487,1473] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [483,501,1182,680,653,654,655,656,657,658,453,502,1139,677,679,662,461,463,1140,1141] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2803,2779,2787,2789,3444,2817,3442,3003,3004,2977,2979,2981,2978,2980,2982,2816] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [522,233,193,195,57,194,197,198,199,200,196,528,640,641] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1161,1158,1159,1145,864,866,788,799,830,832,697,753,754,784,1131] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2854,2855,2857,2374,2370,2371,2942,2943,2945,2946,2965,2948,2387,2388,2389,2944,2947] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        