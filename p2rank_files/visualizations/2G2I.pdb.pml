
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
        
        load "data/2G2I.pdb", protein
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
 
        load "data/2G2I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1135,1136,1137,705,708,553,554,683,684,688,311,312,702,704,480,1211,1212,1213,1216,455,203,326,328,201,172,174,175,202,171,177,1108,1217,1218,1219,320,324,733,736,740,743,767,732] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2382,3391,3301,3397,2507,2503,2505,2506,2634,2919,3287,3296,3392,2922,2360,2357,2353,2355,2359,2380,2381,3314,3315,3316,2491,2844,2862,3390,2847,2915,2911,2912,2881,2883,2867,2733,2863,2884,2887] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [868,887,4333,893,894,897,899,925,2161,2163,1902,1913,1903,1906,889,891,1588,1622,1624,1625,1628,1627,1592,1912,1881,869,870,4329,1887,4330,4331,4085,1886,866,1875,1888,1866,1873,1874,1877,1880,1645,4081,4083,4065,4084,4340,2154,2150,2158] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2704,3139,3140,2702,3111,4281,4284,836,865,4283,4315,4317,4318,835,837,3162,3200,3169,3167,840,3161,3117,1165,2718,2719,3119,3362,2709,2710,2711,3088,845,843,846,847,848,850,3113] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3801,3070,3803,3807,4052,4055,4056,4091,3771,3768,3806,4045,3767,3068,3073,3048,3049,4067,4092,3104] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1181,1182,911,909,939,940,3338,3341,3343,938,529,530,539,540,3024,3022,3026,3029,3352,3354,3353,3063] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3015,3016,3019,3022,3028,3014,3021,523,525,961,959,983,1021,531,532,990,988,2104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [776,778,729,848,849,850,818,803,812,809,814,808,727] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        