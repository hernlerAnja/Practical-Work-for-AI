
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
        
        load "data/5VAL.pdb", protein
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
 
        load "data/5VAL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3118,3119,3170,506,507,3121,3122,2664,2668,3153,2523,2909,2908,3154,2522,2899,2907,2928,2929,2930,2527,2663,2657,2660,1108,1113,1114,1119,1120,1123,682,1121,1145,1146,901,902,922,2258,868,891,899,900,2261,2265,2264,3116,3127,3146,3128,2910,2877,2685,2690,3131,2268,655,656,505,1162,1111,2514,2515,657,660,253,250,254,255,257,536,494,538,2544,2546,2547,539,2502,2510,2513,499,514,920,515,500,2250,2565] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [667,134,138,186,669,1188,1189,1191,1193,1190,700,1065,1187,701,651,267,268,269,646,647,452,531,675,1092,691,696,1091,1096,1093,1095,668,674,676,671,425,285,1178,1184,1186,284,185,140,281,187,451,629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2677,2147,2149,2196,2197,2198,2146,2675,2679,2682,2676,3100,3102,3199,3073,3186,3192,3193,3194,3195,3196,3197,3198,2683,3104,2148,2659,2280,2637,2654,2655,2292,2295,2296,2538,2539,2459,2434,2684,2279,2288,2278,2145,3208,3209,2708,2709,2699,2704,2697] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [450,451,423,442,443,1179,1182,444,1000,1005,1011,1019,1013,452,522,1166,1172,1175,1173,963,962,1017] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2431,2434,3013,3019,3021,2536,2460,2539,3180,2530,2970,2971,3025,3174,3183,3181,3187,3027,3190,2448,2453,2454,2458,2487,2449,2451,2452,3008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2090,2091,943,1925,1951,1953,1923,942,1927,978,2255,2092,2093,2094,2095,1926,2239,2247,2253,923,2228,2230,2232,1980,1981,2257] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        