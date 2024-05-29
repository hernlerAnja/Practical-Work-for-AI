
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
        
        load "data/5S7X.pdb", protein
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
 
        load "data/5S7X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3519,3423,3513,3516,3517,3518,2421,2470,2419,2416,2417,2696,2697,2961,2565,2567,2561,2957,2468,2469,2443,2444,2445,2446,2448,2447,2449,3665,3666,3667,3668,2617,2619,2569,3414,3412,3400,3401,3682,3683,3687,3688,3689,3384,3674,3035,3063,3411,3030,3034,3440,3027,2813,3511,2553,2999,3439,2975,2980,2418,3002,2997,3012,2993,2995,3512,2732,2731,2976,2609,2618,3694,3697,4202] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [712,1100,1101,713,748,1103,131,1206,1205,1112,1209,255,1073,1089,1090,1210,1212,122,125,126,130,128,1211,1277,1278,1279,297,298,299,152,506,653,1204,1131,1133,680,102,151,251,99,100,247,150,104,677,671,673,239,658,708,705,101,360,639,253,1298,1285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [888,918,920,467,473,481,1178,858,860,862,1177,1179,936,937,938,939,454,456,945,947,916,973,989,991,4298,4268,889,890,2317,4260,4261,4299,2263,3766,3767,3781,4236,3760,4224,4226,2291,4235,4259,4233,4234,3780,3779,439] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3728,3888,3370,3373,3672,3678,3369,3679,3383,3682,3685,3755,3726,3756,3751,3712,3722,3795,3796,3807,3859,3861,3374,3539,3629,3630,3632,3648,3663,3675,3676,3780,3779,4225,3778,3753] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1058,1274,1283,1286,1287,1289,1345,1290,1072,1293,1343,1373,1508,1372,1339,1413,1470,1472,1062,1063,1424,1423,1370,1837,1412,1395,1059,1067] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3414,3415,3416,3052,3054,3413,3399,3401,3688,4210,3706,4127,4126,3704,3717,3705,3050,3407,4000,4197] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1321,1322,1323,1738,1739,1740,1808,1822,1801,1807,1299,1612,1747,1334,1336,1102,728,730,732,1103,1104,1105,1088,1090,1096] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1486,1488,1490,961,963,2256,2255,2245,2251,2261,2262,2248,2249,974,1482,1523,2239,2250,1497,2228,1478,1492,1452,1453,1454,1455,1499,1451] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3841,3842,4614,3870,3871,3879,3880,3867,3903,4609,4615,3278,3869,3877,4603,4592,3275,4624,3287,3289,4627,4612,4613] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [459,450,463,1148,1149,1150,489,686,661,663,683,685,508,660,1151,1146,668,465,1166] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2853,2854,2855,2969,2389,2371,2372,2373,2374,2370,2387,2367,2852,2948,2951,2945,2946,2949,2950,2952,2388,2517] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [646,57,534,528,529,199,195,197,198,200,29,194,196,32,34,233,193] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3255,2781,3260,2783,4653,4655,3235,3289,4626] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        