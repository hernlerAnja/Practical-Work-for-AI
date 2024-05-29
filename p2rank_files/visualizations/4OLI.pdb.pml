
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
        
        load "data/4OLI.pdb", protein
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
 
        load "data/4OLI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [673,674,675,676,680,497,553,2396,2398,2316,2199,2315,2178,2179,2180,573,284,574,2186,278,280,285,518,520,1211,1212,2370,2369,695,2381,2383,2336,2368,2362,506,537,507,510] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2814,2818,2819,3158,2845,2228,2229,2230,2282,2284,2233,2234,2240,2626,3187,3188,2765,2283,2424,3172,2241,3167,3249,3250,2425,2510,2222,2226,2811,2804,2805,2843,2225,2223,2782,2788,2410,2798,2791,2792,2810] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [725,1102,724,140,689,692,1226,1073,1074,1085,321,667,1234,685,199,201,318,305,200,139,304,143,141,144,716,1071] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1558,1380,1381,1382,1609,1338,740,779,1595,1050,1063,1062,1374,1068,1072,1073,1076,1349,1351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2785,482,497,555,557,480,483,474,561,2207,2208,27,30,32,2206,26,15,16,17,18,484,2222,2226,2811,2804,2805,2214,2223,2798,2809,2810,2784,2786] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2172,2189,2307,2308,2309,2416,2137,2138,2140,2698,2272,2431,2438,2740,2743,2683,2685,2687,2689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1073,1085,1086,162,322,159,1049,1238,1351,167,1349,168,1063] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3135,3159,3172,3173,3161,3162,3163,3437,3149,3155,3470,3696,3469,3783,3430,3433,3434] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3056,3587,3589,3590,3591,3057,3585,3586,3588,4203,4205,3085,3087,3593,3594,3597,3618] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3279,3404,3405,3406,3410,2440,3401,2501,3292,3385,2468,3293,3275,3271,2263,2264,2252] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3479,3481,3568,3432,3445,3869,3870,3383,3402,3508,3514,3544,3546] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2779,2774,3202,3203,3204,1005,3236,3212,3211,2595,2634,2635,3227,1004] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        