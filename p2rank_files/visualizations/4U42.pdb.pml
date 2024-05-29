
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
        
        load "data/4U42.pdb", protein
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
 
        load "data/4U42.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3279,2548,2549,2449,2558,2862,2865,2840,3356,3355,2838,2845,2841,2562,2563,2564,2565,2566,2822,2823,2824,2826,2867,2423,2424,2426,2427,2428,3357,3362,2878,2881,2877,2421,2422,3363,3365,2392,2393,2394,2859,2861,2380,2857,2871,2396,2908,2909,2395,2405,2404,2406,3364,3358,3359,3366,2696] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [153,762,763,786,123,1156,1157,1234,1232,1235,1243,754,755,150,152,1239,1240,1242,1236,1241,1246,151,293,718,716,717,1233,1250,1252,742,736,739,276,722,119,737,738,120,176,279,285,289,291,292,416,449,702,447,448,439,121,175,748] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3395,3415,1651,1657,3473,3419,3471,3212,3224,3225,3227,3226,3467,3456,3455,3364,3213,3579,3581,3583,3498,3500,1649,1650,3564,1647,1663,1664,3565,3215,2414,2419,2420,2421,2422,3365,3423,3426,3432,3429,1275,1273,3406,3422,2424,3256,3264,3244] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3257,3242,3447,3463,3464,3747,3769,3253,3255,3256,2901,3710,3748,3736,3741,1263,1264,3432,3431,2931] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2696,2698,3374,3375,3376,2630,2694,2695,2697,3369,3358,3359,3366,3387,2604,2613,2617,2841,2564,2566,2822,2823,2824,2825,2826] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3794,3795,3807,3808,1360,1427,1268,1279,3792,1089,1445,1443,1102,1103,1104,1101,1291,1335,1090] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [778,1592,777,1126,1325,1566,1603,1604,810,3402,3401,1326,1132,1133,1134,1119,1597] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1268,1279,1285,1288,1121,3411,1102,1103,1104,1294,1291,1335,1240,1242,1241] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3519,1381,3521,3528,3513,3516,3508,1698,1691,1692,1731,1398,1370,1685,1686,3830,3836,1375] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [254,217,218,219,221,257,256,562,564,566,563,565,567,220,62,222,559,560,561,72,73,74,587,588] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [783,751,752,754,755,818,2232,2227,2235,2237,793,2239,2265,2266,2267,2264,750,748,2240,815] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        