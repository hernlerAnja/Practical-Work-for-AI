
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
        
        load "data/5UIU.pdb", protein
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
 
        load "data/5UIU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1185,1209,1284,1184,1192,1285,1286,1290,1293,1173,841,840,880,888,1157,1174,1426,1420,1414,1415,789,796,783,788,808,809,1208,234,236,238,239,245,246,281,264,267,266,265,249,250,253,423,424,425,226,227,232,233,381,383,255,257,260,261,262,263,185,228,230,231,279,280,367,761,763,764,782,817,1427,802,816,850] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3063,3065,3059,3060,2581,2668,3062,3064,2532,2582,2682,2684,2529,2530,2531,2526,2528,2534,2535,3189,2519,3505,3580,3581,3480,3103,3109,3110,3113,3117,3118,3504,3151,3141,3181,3582,3583,2603,3070,3086,2601,3084,3089,2486,3090,3097,3091,3469,3481,2540,3488,3586,3589,2537,2556,2565,2567,2539,2546,2547,2568,2550,2554,2558,2561,2551,2563,2564,3470,3722,3723,3453,3716,2725,2726] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1244,1246,927,959,961,963,1238,988,990,3531,910,922,923,3526,926,3099,2906,2907,2899,2904,2954,3093,3519,3520,3566,3567,3518,3100,3522,2649,2650,2653,2654,1971,1977,1978,1980,1972,946,949,2950,2951,2952,3073,2953,3072,3068,3080,3077,1250,904,905,906,3535,903,1248,1249,2915,2918,2921,3552,3553,2934] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [796,797,798,799,777,779,781,776,771,3283,3307,353,354,302,349,343,348,2920,2921,2922,2929,1230,1231,1232,1233,2913,1226,2930,1234,3553,3285,1222,2912,3326,3350,3352,3355,3386,3387,3388,3330,3327,3328,3329,3309,3310,4518,4551,4493,4492,337,3304] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [946,947,948,950,2280,943,980,981,982,934,2279,1011,2647,2648,2649,1976,3073,2967,2969,2970,2966,2632,2634,2631,2635,1993,2012,2269,2275,2011,2310,2330,2308,2625,2662,2624] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        