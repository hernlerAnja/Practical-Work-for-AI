
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
        
        load "data/7M0Z.pdb", protein
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
 
        load "data/7M0Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [168,169,267,268,1163,1164,1165,1158,170,264,615,629,630,1078,513,1077,1079,659,652,252,634,647,650,657,654,136,141,1037,1038,1048,1059,1051,1049,1050,1052,2669,2670,703,679,683,684,711,713,128,3612,3611,129,133,3613,123,117,120,651,124,125,126,672,3597,3599,1335,3596,2647,2652,2666,2662,702,3593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3522,3584,3502,3507,3510,3527,3513,3515,2802,3555,3550,3552,3553,3557,3556,3529,2779,3532,2643,2984,2625,2983,2803,3369,3503,3499,3500,3501,3504,3505,3506,2627,2997,2995,3516,3517,2873,2875,2880,3519,3561,3355,3518,3699,3562,3367,3354,3366,1724,3368,3581,3582,3602,3580,3559,3579,3585,1710,3586,2487,2488,2489,2490,1712,1714,3622,1713,1703,1704,1705,1717,3667,3668,3384,3385,3649,3635] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2464,3039,3040,3021,3002,3018,3022,2466,2467,3396,3420,3421,3422,3042,3046,2626,2627,2998,2508,2509,2510,2607,3405,3506,2478,2469,2470,2472,2477,3047,2463,2468,2471,3397,3398,3070,3071,2489,2490,2493,2495,2496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2840,2865,3007,3484,3006,3003,3008,3011,2591,2826,2878,2291,2902,2254,2264,2286,2289,2255,2282,2283,2284,2316,2269,2270,2830,2837,2835,2290,2292,2315,3467,2256,3452,3437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3594,3567,1645,1647,739,1631,3575,3572,3573,1641,1669,1671,1672,1633,3569,3570,2665,2675,2677,2672,737,738,736,734,703,2684,2707,3547,2686,3542,3544,2706] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [267,1164,1158,264,615,629,630,513,511,530,532,1187,510,1175,1176,1159] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3355,3699,3359,3562,1696,3698,3724,3730,3737,3728,1702,1705,1732,3694,3723,1693] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [258,276,71,89,53,585,72,73,75,563] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        