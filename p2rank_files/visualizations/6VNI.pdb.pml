
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
        
        load "data/6VNI.pdb", protein
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
 
        load "data/6VNI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [718,172,173,174,118,120,121,307,323,717,322,116,117,122,123,124,125,126,1266,1268,144,145,146,1164,142,135,136,139,160,161,740,744,1181,736,743,1180,1260,1261,722,768,771,775,1150,1159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3553,3584,3562,3567,3583,2576,2710,3125,3178,3174,3170,3171,2521,2523,2524,3137,3670,3666,3669,3664,3121,3120,2519,2520,2525,2526,2527,2575,2577,2724,2726,3672,3147,3149,2975,3143,3146] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1052,2536,1049,1050,1072,1364,1593,1594,1595,1596,1597,1600,2217,2219,1360,1361,1587,1588,1075,2534,2537,2750,2752,2751,2260,2241,2252,2734,2735,2251,2256,2257,2271,1048,1051,1026,1025,2262,2533,2515,2569,2514,2516,2570] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2827,3685,3687,3689,2869,3695,3519,2828,3710,3711,3811,2548,2549,3672,2557,2559,2792,2801,2803,2830,3839,3842,3834,3827,2743,2546] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1570,1571,1360,1361,1370,1373,1375,1587,1588,1600,2219,2218,2220,2490,2513,2487,2489] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3074,3080,2811,3073,3081,3063,3067,3069,3070,3079,2740,2736,2289,2766,2767,2768,3054,2810,2240,2241,2733,2734,2735,2739,2250,2256,2291,3097,2232,2255,2751,2168,2253,2319,2318,2288,2731] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [154,156,142,149,158,159,426,1308,1425,1426,390,1423,1424,1427,340,394,392,424,145,1284,1292,323,466,322] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4312,3826,3829,3841,3939,3943,3933,3856,3906,3964,3965,3960,3870] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1823,2040,2041,1472,1822,1633,2030,1993,2035,2183,2186,2185] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4033,4036,4433,4438,4225,4226,3875,4066,4587,4588,4586,4585,4584] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        