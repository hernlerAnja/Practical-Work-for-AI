
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
        
        load "data/3LPB.pdb", protein
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
 
        load "data/3LPB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [305,118,120,121,662,170,172,1104,1185,1192,171,643,645,646,650,1103,543,671,695,668,707,1105,696,699,737,117,129,123,124,1074,1083,1084,1085,1088,1190,1191,1193,128,133,134,159,135,136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2986,2988,3016,2974,2975,2976,2978,2389,2395,2388,2390,2392,2393,2394,2943,2950,2958,3375,3361,3370,3391,3392,2822,2929,2947,2439,2566,2438,2440,2397,2399,2396,2398,2400,2404,2582,3472,3477,3478,3479,3471,2581] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3337,3503,3493,2582,3478,3479,3480,2420,2422,2413,2415,2417,2424,2715,2689,2425,2581,2599,2401,2405,2408,2400,2404,2440,2397,2399,2396,2398,3375,3502,3366,3495,2682,2679,2653] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [821,825,826,828,830,1954,2251,2252,2253,2250,1953,3781,3566,3768,3769,3567,3568,4393,4386,4391,4392,4396,817,1972,836,838,2247,820,818,4410,4421,4425,4459,4460,4426,4429,4430,4431,3777,2249,3260,3261,3259,3770,3774,3775,3776,3570,2241,4448,3232,3234,3224,4438,4442,4446,4447] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [140,152,154,382,380,1348,1216,1349,1351,1208,1231,1232,156,438,401,402,405,406,404,376,403,1220,336,411,320] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1696,4186,4187,4188,4328,4325,4326,4327,4348,1937,1938,4364,4366,4360,4365,4367,4371,1695,1672,1673,1674] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1898,1903,1904,1741,2046,2048] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3814,4351,4350,4352,4354,4199,4204,4355,3999,4000,3811,4353] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        