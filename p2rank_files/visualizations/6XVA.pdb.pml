
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
        
        load "data/6XVA.pdb", protein
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
 
        load "data/6XVA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3040,2645,2650,2651,2654,2655,3044,374,377,380,383,346,373,375,3062,3063,3043,3046,3554,3543,3553,384,389,3551,311,312,2647,2644,2457,3544,782,802,1274,774,776,777,1283,1285,2656,387,1284,1303,2563,778,1304,1320,1321,2641,2640,2643,684,685,2642,2573,2574,2575,668,630,631,634,636,637,638,3038,3035,2930,370,326,367,371,3572,2892,3573,3589,3590,2895,2896] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2546,2547,2681,2677,2922,3034,2668,2669,3029,3030,3012,3086,3614,3618,3619,3622,3623,3080,3528,3529,3603,3604,3608,2809,2684,2841,3613,3605,3049,3050,2483,2494,2495,2497,2498,3052,3055,3060,3061,3076,3077] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1260,660,795,1259,661,768,402,769,401,283,284,414,751,753,405,410,1334,1335,1336,1338,1339,1344,1345,417,548,791,773,400,580,234,235,787,789,232,794,800,815,816,231,1353,1354,1349,1350,819,825] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1174,573,26,24,517,40,1169,1171,1160,1166,6,7,606,653,1135,1136,572,579,581,541,542,544,545,537,1343,1186,1188,1182,1180,1325,1328,1331,1332,1333,1340,546,547,548,549,661] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [800,809,811,966,857,859,3069,3070,3071,3072,3073,3074,3541,3537,3546,3555,3559,3241,3160,3161,3240,3120,3122,3118,3158,3565,3566,3147,3148,3149,889,887,899,900] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2867,2914,2842,2833,2805,3609,3612,2807,2809,3404,3449,3455,3457,3602,3605,2922,3594,3600,3438,3442,3443,3448] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [965,966,1296,1297,857,859,861,1268,809,811,812,813,1277,1286,1287,1290,2482,2483,899,900] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1342,1343,1356,1357,1359,1360,1364,1366,1204,1205,1207,1193,1192,1447,1397,1358,1398,1494,1516] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3473,3474,3476,3785,3667,3763,3716,3451,3625,3626,3627,3635,3612,3461,3462] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1645,1657,1646,1648,1650,1660,2197,2202,2205,2206,2207,1114,2208,2219,1116,1139,1140,1141,1142,2223,1681] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3914,3915,3917,3929,4476,3919,4474,4477,4488,4475,3409,3410] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        