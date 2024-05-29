
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
        
        load "data/6N0Q.pdb", protein
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
 
        load "data/6N0Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3143,3144,3145,3193,2550,2686,2533,2536,3177,3176,2538,2546,2932,2931,2545,2922,2951,2953,1113,1117,1118,1119,1124,1125,1141,1150,1128,682,655,656,1167,519,536,2537,657,660,247,253,250,254,255,257,539,2567,2569,2570,2525,514,1151,900,901,902,515,494,502,505,506,507,2691,499,2287,920,922,891,2273,2281,2284,2288,500,3139,2933,3150,3151,3154,3169,2713,2291,2694] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [267,269,138,185,186,669,187,531,1193,1194,1196,1195,1183,1189,1191,1192,646,647,268,629,700,1066,701,134,135,140,285,281,284,426,675,1101,1098,1100,689,671,668,674,691,696,676] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3209,3215,3216,3217,3218,3219,3220,3221,3228,3232,3231,3096,2727,2731,2732,3124,3126,3127,3222,2720,2722,2705,2700,2170,2168,2171,2220,2221,2699,2757,2758,2760,2726,2561,2482,2562,2457,2319,2663,2302,2303,2311,2660,2677,2678,2301,2315,2318] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2559,2483,2562,3203,2553,2993,2994,3046,3048,3197,3031,3042,2454,2457,3036,2319,3044,2473,2474,2450,2475,3206,3210,3204,3213,3209] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [443,1000,1187,1013,1017,1019,522,962,963,1171,1178,1005,1011,450,451,452,1177,1180,1183,1184,423,426] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [236,242,244,245,2974,3965,3966,246,247,2954,219,217,218,220,221,3990,4019,4020,3992,3962,223,228,230,79,222,82,83] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [943,1968,942,2276,2278,2262,2115,2116,2118,1940,1938,1941,1942,1995,1996,2113,2270,2251,923,2255,2280,2253] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        