
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
        
        load "data/6NPU.pdb", protein
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
 
        load "data/6NPU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3279,3297,3274,3207,3208,3299,3301,2632,2633,2584,2556,2557,2558,2742,2762,2779,2758,2757,3138,3280,3283,3292,3295,3136,3286,3287,3290,2530,2533,2548,2549,2550,2526,2528,3132,2810,2817,2797,2806,2807,2782,2790,2304,2454,2455,2307,2330,2331,2440,2774,2776,2276,2278,2443,2448,2452,2739,2439,2438,2441,2841,2310,2279,2280,2299,2309,2778,2626,3076,3077,3115,3116,3114,3124,3130] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [659,683,684,1087,1088,687,1179,1181,177,1162,510,511,1172,1174,1177,175,1163,1166,667,674,167,694,715,178,168,179,656,646,652,654,655,146,309,174,199,639,634,635,436,221,147,148,149,325,200,323,411,435,434,173,317,616,321,619,129] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [462,1014,1016,1018,953,459,1163,1166,1167,1168,427,994,1004,996,995,1012,1170,508,510,504,411,435,434,408,409,436] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3586,3552,2961,2962,2967,2963,3589,3591,2965,2940,2941,3592,3830,2999,3556,3877,4092,3851,3852,3876,2973,2971,2968,2943,3839,2944,3838,3841] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1568,1534,1571,876,1536,818,840,842,820,844,845,850,821,1820,1821,1573,1834,1833,1859,1574,1858] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [653,4108,3870,221,147,654,655,296,4077,4050,119,120,219,220,130,669,667,4080,4083,4074,3906,4046,4047,4048,4082,3869] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [911,912,931,932,933,934,2050,2051,885,4196,4220,4221,2048,4232,2085,487,479,481,4192,4197] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1125,3839,1126,1110,1115,3847,798,799,801,1107,3850,3851,1123,729,679,681,727] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [268,281,282,3035,4068,3055,3056,3057,259,4103,267,3062,2601,2603,2609,3065,3058,3059] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1035,1198,1256,1299,1034,1027,1295,1322,1359,1022,1436,1313,1310,1312,1314,1315,1435,1437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [710,747,1351,1247,1352,1246,1242,1607,1610,1611,1618,1337,1226] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        