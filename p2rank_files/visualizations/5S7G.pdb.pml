
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
        
        load "data/5S7G.pdb", protein
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
 
        load "data/5S7G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3350,3443,3444,3446,2392,2513,2511,2393,2412,2413,2414,2360,2361,2363,2365,3445,2639,2640,3440,3338,3367,3366,2937,2940,2965,2968,2933,3438,2757,3439,2756,2899,2505,2509,2914,2497,2913,2918,2931,3339,3341,3310,3327,3549,3311,3328,2972,2973,3001,2389,2391,3464,3465,3466,3540,3541,3542,2553,2387,2388,2390,2568,2570,2595,2594] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [126,104,129,127,128,130,131,259,150,152,102,151,243,664,666,99,100,101,632,251,255,257,628,1208,1209,1212,1215,1207,1103,1104,1115,701,705,706,741,367,1136,1134,673,698,368,504,647,503,651,670,646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2251,2252,2253,881,882,883,2282,2283,965,967,2225,3639,4082,4084,4087,4090,4089,4111,4139,2284,4147,4109,4112,3622,3628,3629,3631,984,446,938,940,463,461,472,929,932,964,966,931,911,913] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [322,323,302,259,303,125,126,129,127,128,130,131,1214,1215,1115,1074,1075,1076,1092,1093,1293,1233,1234,1235,1285,1286,1287] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1323,1325,1093,1099,1584,721,723,725,1294,1310,1311,1719,1312,1710,1711,1105,1106,1107,1108,1794,1779,1780] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3339,3340,3341,3343,2992,3326,3550,3328,3579,3566,3567,3568,3984,3985,2990,2988,3334,3335,4054,4055,4067,4068] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [532,546,639,640,57,193,194,195,196,197,198,199,200,237,526,523] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2210,2212,2207,967,2223,2224,2218,1471,956,958,1467,1470,1465,1472,2217,1503,2213,2201,1477,1479,930,960,961,954] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3215,3723,3724,3730,3213,3725,3728,3729,4441,3735,4430,3761,4447,4453,4450,4452,4457,4458] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2888,2318,2314,2331,2332,2333,2315,2883,2907,2503,2884,2885,2887,2890] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2945,2946,2732,3381,3383,2745,2919,2921,2920,3425,3424,2758,2759] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        