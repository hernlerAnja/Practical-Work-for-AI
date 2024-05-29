
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
        
        load "data/1UWH.pdb", protein
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
 
        load "data/1UWH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [527,529,530,643,1149,1148,1098,1100,1101,2590,2592,2593,2594,2595,647,244,239,241,245,248,230,238,650,671,2626,485,496,497,498,2740,2627,506,888,1133,505,909,2327,2335,2338,2341,887,886,3195,3229,3230,3246,1106,1122,1108,1109,3206,1126,889,1132,2744,3197,3198,2747,3221,3223,3207,2765,2766,2768,2345,877,878,2342,2986,3224,668,1110,2975,2602,2603,2983,2984,2985,3006] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2758,2773,2752,2225,2222,2228,3176,3178,3180,3268,3271,3272,3274,3276,3269,3270,2735,2755,2759,2751,2753,2274,2357,2275,2369,2371,3289,2618,2619,3261,3262,3267,2780,2784,2785,3151,3152,3153,2731,2730,2514] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [128,131,177,178,1173,260,272,633,634,274,125,124,130,1162,1164,1175,1171,1172,1174,1177,1179,1165,1056,522,658,661,654,656,655,129,683,687,1079,676,1081,1083,688] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [410,414,434,435,441,442,443,513,1153,1159,1166,1168,1160,1162,470,417,950,949,987,1002,1004,1005,1006,992,998,1000,1003] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2538,2540,2567,2530,2531,2514,2511,2509,2532,2610,3046,3047,3084,3089,3253,3099,3101,3103,3095,3102,3265,3097,3256,3257,3259,3263,3250] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [381,292,353,380,1210,351,153,154,1201,275,276,416,1184,285,290,271,382,387,618,620,1206,1207,1208] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2450,2479,2482,2387,2389,2484,2368,2699,2700,2382,2513,2477,2475,2478,2372,2251,2370,2371,2250,2376,3304,3307] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [233,3027,235,4076,4078,4079,4080,3062,234,236,213,214,227,237,4106,206,210,208,219,70,221,74,72,4134] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [56,61,587,570,571,80,81,83,79,612,284,91,97] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [16,452,561,562,563,564,422,423,388,390,578,393,397,399,395,425,450] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2125,2122,25] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        