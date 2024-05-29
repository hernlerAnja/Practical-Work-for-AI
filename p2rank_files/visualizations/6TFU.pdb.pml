
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
        
        load "data/6TFU.pdb", protein
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
 
        load "data/6TFU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [514,907,2470,2472,885,874,875,2469,2455,2461,2466,2517,2067,2068,1110,847,848,2450,876,1936,1937,2050,503,1092,1119,1120,1121,1118,1116,1117,3125,2501,2623,2511,2515,2648,1098,1099,2518,2519,2514,2629,2628,500,2476,2473] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2669,2671,2675,2676,3034,3063,3064,2668,3139,3140,3148,3141,3142,3149,3157,3147,2179,2341,2339,2216,2177,2180,2182,2217,2215,2183,2176,2350,2354,2356,2603,2604,2358,2606,2446,2443,3160,3162,3163,3164,3165,3167,3159,2627,2340,2620,2621,2513,2522,2528,2507,2508,2622,2646,2641,2644] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [317,1060,1076,1152,1160,316,313,191,192,193,175,640,641,1075,1151,638,299,300,309,1046,685,662,693,686,689,694,717,140,141,147,142,144,657,1153,1154,1159,1161,622,315,624,525,526,527,1171,531,532,540,541,544,546,1170,461,1164,463,464] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [503,1092,1120,1137,3124,3125,491,494,500,2485,489,3108,2482,2476] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3108,533,3087,3106,535,536,537,554,529,532,491,494,500,2485,489,479,484,3086,3105,3080,646,649,1137,3124,3125] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2127,2259,2262,2277,2081,2283,2297,1097,1106,1104,1105,727,729,823,785,824,2078,2059,2082,2085] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [473,487,488,490,21,22,23,2889,2857,2864,2856,3098,2867,2829,2830] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [486,490,498,2468,505,2487,2480,2916,2885,2886,2884,2918,2909,2945,2495,2887] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [987,988,1167,985,992,1172,1173,432,431,455,456,1165] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        