
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
        
        load "data/8H7H.pdb", protein
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
 
        load "data/8H7H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [159,160,187,1179,1103,1104,161,162,163,164,165,166,1105,138,732,701,704,711,735,691,1054,1089,1091,1076,1085,1090,1190,1192,311,1193,1195,1196,1197,1198,1199,1200,1034,1035,1178,526,294,296,131,133,134,668,670,673,677,672,676,684,135,186,633,308,304,651,295,656,1051] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2304,2305,2307,2308,2309,3215,2303,2306,2276,2329,2422,2274,2277,2302,2330,2430,2434,2747,2713,2726,2727,2736,2737,2740,3140,3141,2712,2704,2706,2708,2692,2699,2709,3233,3234,2687,3224,2437,3228,3231,3112,3125,3126,3127,3090,3070,3214,3087,3235,3236,2771,2278,2279,2280,2282] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1044,1215,1216,1277,1042,1220,1234,1229,1040,1348,1337,1339,1039,1202,1206,424,1212,1217,4194,417,415,1465,1466,1385,1266,1271,1283,1284,1285,1305,3168,3169,1279,390,3176,3165,3167,2914,2915,1307,1325,383,385,386,387,2849,2868,2869,2880,2888,2881,418,4170,2912,416,4172,1289,1297,1321,2840] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [616,617,597,598,599,330,366,370,371,372,373,335,2579,2581,2586,2587,2588,2994,2595,614,326,4109,4111,4145,2963,2985,2986,2987,2989,2992,3024,4121,378,381,4112,2965,573,580,408,4146] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1597,1563,1599,857,859,1600,1603,1602,893,1567,868,855,856,835,837,838,1856,1862,1863,1887,1850] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2871,2873,2874,2893,2895,3629,3631,3882,3894,3895,3632,3635,2903,2891,2892,2904,3919,3920,3595,3634] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1312,2853,2854,2731,2733,2810,1311,1308,2773,2775,2805,2806,2807,2813,2816,2818,2782,3177,2778,2780,3152,2732,2734,1302,1304,3179] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [409,573,574,4120,408,4146,4181,4180,4121,405,461,575,576,5,41] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3992,3551,3554,3987,3988,3989,3990,3689,3690,3835,3392,3785,3830,3552] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2427,2428,2663,2251,2254,2241,2336,2338,2340,2444,2664,2429] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        