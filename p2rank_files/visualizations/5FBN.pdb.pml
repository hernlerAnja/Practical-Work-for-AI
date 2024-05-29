
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
        
        load "data/5FBN.pdb", protein
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
 
        load "data/5FBN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3219,3221,3223,3245,3209,3246,2820,3320,3325,3326,3348,3347,3349,2806,2807,2810,2818,2400,2294,2295,2296,2413,2415,2416,2417,2748,2409,2510,2512,2788,2796,2242,2243,2251,2256,2259,2238,2239,2240,2848,2852,2762,2763,3318,2767,2747,2571,2650,2651,2542,2543,2563,2564,3319,3337,3335,3330,2673,2785,2789] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1109,1110,131,136,664,683,1111,686,694,665,293,1184,139,294,1191,1185,1190,1182,1183,524,1200,1201,1202,1214,1213,1212,437,1195,171,172,173,277,290,122,123,655,120,292,621,119,638,639,643,661,525,623,386,446,622,384,417,1086,1088,1074,1084,696,721] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [215,217,218,219,220,250,251,252,254,255,256,213,2594,2592,2593,18,29,31,536,531,532,534,529,530,533,535,261] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1618,1623,1627,1631,1529,1532,1763,1769,1771,1773,1766,1708,1709,1646,1647,1648,1747,1756,1762,1606,1607,1612,1608,1778,1787,1772,1625,1589] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2864,2942,2974,2978,2973,2999,3000,3282,3009,3011,3272,3273,2805,3279,3280,2919,2921,2916,2862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2656,2657,2658,2659,2660,2661,2662,2655,2151,2153,2373,2384,2375,2374,2377,2338,2339,2340,2341,2342,2343,2379,2378] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1138,1145,1147,785,787,730,731,732,1137,1144,839,810,840,843] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3164,3354,3355,3413,3403,3405,3186,3412,3435,3458,3451,3406,3539,3541,3570,3569,3568,3162,3567,3577,3165,3167] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        