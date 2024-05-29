
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
        
        load "data/5CNO.pdb", protein
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
 
        load "data/5CNO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2603,3172,3178,2609,2610,2612,2604,3171,2653,2655,2808,2605,2606,2607,3142,3144,3147,2654,2791,2804,3203,3179,3544,3546,3547,2614,2615,2618,2619,2622,2626,2634,3718,3661,3557,3558,3548,3520,3521,3543,3653,3654,3652,3012,3013,3014,3660,3124,3125,3130,3126,3127,3131,3108,3110,2950,3032,3573,3572] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1117,1196,1197,1087,1101,715,718,722,723,747,155,156,1203,1204,1205,208,359,360,361,165,166,167,194,1198,1199,1206,1209,1228,1213,557,558,1116,674,688,691,344,157,159,671,675,681,652,654,669,670,353,357,651,207,206,556,491,494,574,576,490,699,1092,1090,1091,1063,1065,1064,187,175,179,180,168,171,172,1284,1285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2575,2648,2665,2666,2817,1007,4959,485,504,505,1008,4962,484,481,486,1001,1002,2647,1003,1028,1029,2814,2816,3087,2646] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3767,3718,3723,3720,3721,1985,1986,1997,4038,4039,4048,3194,4030,4037,4045,3751,3752,3754,1984,3195,3546,3547,2615,2619,1963,1964,3746,3732,3733,3735,3738,3766,3987,3548] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [582,584,662,580,338,339,253,254,247,249,252,248,581,43,44,65,663,104,45] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3038,3040,3118,3123,3128,2701,2700,2490,2491,2511,3037,2493,2693,2694,2696,2697,2698,2699,2512,2551,2786,2785,2771] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [935,937,938,999,967,961,2013,939,940,941,2012,2591,2592,4901,2382,2596,2597,528,4902,969,1982,2603,2609,2601] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3214,3601,3602,4760,3315,3314,4676,4691,4692,4696,3311,3313,3611,3213,3310,3312,3283,3284,3279,3273,3249,3251] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [817,795,793,854,855,856,857,858,859,2205,2206,756,758,796,1145,1146,1156,827,2207] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [519,4932,4936,4938,4939,671,675,2358,2354,1133,678,679,1182,557,558,674,521,524,549,563,562,509,565,566,584,585] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1232,1260,1062,1063,189,190,1050,1233,1051,1053,1277,1408,1385,1386,1284,1285,1407,1406] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4351,4353,4181,4356,3917,3920,4143,4059,4186,4191,4142,3951] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2397,2384,2389,2391,2269,2396,2307,1151,1152,1153,2306,2232,2235,2268,2370,2378,2340,2373,2374,1161,1139,2309] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1468,1607,1740,1734,1739,1883,1885,1465,1499] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        