
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
        
        load "data/3UOK.pdb", protein
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
 
        load "data/3UOK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3668,3669,3619,3262,3264,1079,1083,1440,1084,1085,3615,3638,3639,3640,1392,1393,1407,1408,1409,1370,1394,3658,3666,3657,3644,1355,1101,1102,1103,1121,1120,1479,3436,1487,1489,3413,3280,3263,1459,1436,3549,3586,3587,3588,3573,3614,1460,1461,3534,3449,3281,3282,3298,3299,3300,3323,1462,1478,1465,3418,3444,3448,1257,1234,1239,1252,1255,1265,1270,1269] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [126,127,128,133,187,130,131,748,753,765,766,1160,1161,581,745,1277,185,186,314,722,1132,774,1274,775,769,1288,1292,799,801,802,1225,1145,1139,1227,1226,297,727,739,741] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2365,2924,3338,3339,3340,2307,2927,3456,2366,2493,3450,3324,3406,2901,2760,2948,2980,2945,2981,2311,2312,3467,3471,2305,2306,3453,3311,2954,2293,2310,2476,2309,2920] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1366,1399,1400,1339,1340,1329,1341,1613,1643,1334,1338,1364,1327,822,1345,1337,790,791,793,1133,1134,1135,1287,792,1311,824,827,1137,1136,1685,1683,1684,1649,1387,1389,1388,1360,1658,1659,1282,1283,1285,1291,1305,1284] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2970,3508,3001,3822,3828,3539,3506,3518,3520,3519,3837,3838,3862,3864,3567,3314,3315,3578,3579,3792,3545,3543,3566,3568,3316,2972] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1062,469,1067,1094,432,471,470,472,1053,2604,2605,2608,457,2598,495,2577,1071,1079,1080,1083] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [38,39,41,228,229,613,606,608,603,604,605,614,714,84,607,292,273,275] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2217,2218,2220,2263,2408,2894,2782,2783,2792,2793,2784,2785,2893,2407,2471,2452,2787] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [398,429,433,425,426,3241,3232,2648,2675,3245,3246,419,2674,2635,2673,2649,2650,2651,2636,3258,3271,3272,3273,3247,3250,2611,3260,3262,3259] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3461,3462,3464,3466,2969,3470,3467,3484,3490,2971,2972,3524,3313,3516,3518,3520,3519,3316] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [647,649,348,349,407,410,411,413,449,450,648,408,409,423] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        