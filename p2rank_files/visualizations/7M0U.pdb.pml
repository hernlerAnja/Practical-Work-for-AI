
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
        
        load "data/7M0U.pdb", protein
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
 
        load "data/7M0U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [141,3610,2668,2667,2669,128,129,133,1059,3612,268,3611,136,150,1164,1165,1169,1187,1159,168,169,170,267,126,120,123,124,125,529,531,252,264,629,615,630,1049,1048,683,1077,1078,1079,513,1155,1158,1174,1176,657,672,652,654,634,651,1050,1052,714,679,684,711,713,674,1038,1334,3592,3596,1051,2646,2660,2661,2664,2665] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3552,3384,3580,3581,3582,3499,3500,3501,3502,3383,3404,3554,3583,3503,3505,3551,3578,3579,2624,2625,2626,3504,2489,3560,3698,3368,3353,3365,3366,3558,3556,3561,3367,1699,1703,1704,1706,3666,3667,3648,3382,1693,3584,3585,1705,3509,3517,3531,3518,3521,3528,2983,2801,2487,2486,3621,2483,1710,1713,1714,1717,1724,3643,1723,3634] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3046,3070,3419,3420,3038,3039,3041,3045,2626,2507,2508,2509,2997,2463,2465,2466,2477,2492,2473,2474,2476,3069,2494,2495,2461,2462,2467,2468,2469,2470,2471,2472,3071,3396,3404,3395,3505,2606,3421,3020,3001,3017,3021,2996] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2877,3006,3002,3005,2290,2901,3436,3466,3451,2254,2283,2255,2285,2288,2289,2281,2282,2291,2590,2314,2315,2585,2586,3483,2836,2839,2864,2263,2268,2269,2825,3007,3010] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3509,3498,3506,2873,2983,2996,2982,2994,2874,3515,3516,2801,2802,2872,2884,3504,3499] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2705,3541,3572,3574,3571,2706,737,1631,2686,2676,2664,2671,736,2674,2678,1633,1636,1637,3565,3566,3567,3568,3569,3546,703,1647,739,3593,1645,1641] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1574,1555,890,891,892,862,1611] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        