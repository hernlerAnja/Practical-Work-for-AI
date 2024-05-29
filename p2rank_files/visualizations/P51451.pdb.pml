
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
        
        load "data/P51451.pdb", protein
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
 
        load "data/P51451.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1987,1989,1993,1994,2046,2556,2941,2531,2532,2940,2559,2917,2540,2553,2552,2585,2561,2306,3009,3011,3018,3016,3017,3040,2925,2165,2166,2167,2043,2045,2159,2162,2149,2506,2505,2491,1990,1991,1988,1992,2527] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2166,2167,3037,2019,2021,2023,3038,2182,2218,2025,3036,3042,3043,3071,3073,2888,3045,2907,3173,3174,3152,3158,3166,3164,2026,3145,3146,3150,3157,3160,3069,3072,3080,2210,2884,2924,2925,3015,2886,2874,3018,3014,3040,3046,3081,2219,3061,3064] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1127,1385,1375,1377,1380,1382,1386,3996,3960,2720,2683,2684,2685,2715,2716,2718,3962,3964,2713,2698,1094,1369,1065,1098,1087,1093,1069,1090,1092,1067,3975,3930,3933,3959,3961,3969,1091,1060,3974,3991,4001,4012,2721,3925] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1774,1778,1002,529,518,879,950,1771,1773,1783,1012,1010,1020,1015,1036] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [571,570,567,2093,2103,1866,2091,1831,2129,1839,2120,2121] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1839,1841,1844,1849,1855,1857,740,742,743,738,849,851,594,605,846,848,850,852,854,1853,578,747] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2327,2297,2851,2809,2849,2278,3031,3057,2856,3022] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        