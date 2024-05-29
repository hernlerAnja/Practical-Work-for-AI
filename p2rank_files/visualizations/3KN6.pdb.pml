
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
        
        load "data/3KN6.pdb", protein
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
 
        load "data/3KN6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3439,3335,3348,3437,3440,3445,2406,2411,2414,2462,2463,2452,2458,2451,2404,2405,2793,2934,3441,3442,2580,2581,2582,2583,2690,2449,2417,2424,3446,3448,3307,3324,2584,3339,2955,2952,2408,2568,2931,2932,2938,2951,3364,2409] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [686,699,700,703,316,330,331,332,438,1194,1195,1196,679,680,681,682,465,667,1096,1185,1188,1189,1190,1193,1197,466,704,1111,1112,1187,542,153,165,1087,1083,152,154,159,210,211,162,163,164,197,172,157,156,328,329] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1040,1044,1045,1216,1217,1218,1281,1279,1052,1053,1054,1220,2195,2196,2197,2194,2159,2191,2193,2234,1320,1358,2188,1298,1321,1322,2223,2224,2225,2186] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2431,2427,2449,2430,2417,2424,3448,3447,3472,3473,3474,3461,3462,3470,2584,2656,2634,2599,2631,2583] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1220,1221,1222,331,332,1195,1196,1209,1210,402,403,404,1211,437,1218,172,175,179,180,178,197,382,347] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3296,3297,3531,3532,3533,3574,3550,3553,4471,4473,4476,4479,4480,4481,4482,4478,4508,4518,4507,3293,3468,3292,3610] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4472,4510,3599,3844,3597,4501,4117,4058,4066,4074,4075,4511,4512,3567,3568,4115,4116,3850,4502,3852,4076] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1221,1222,1195,1196,1209,1095,1096,1055,165,1087,1071,1072,172,175] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        