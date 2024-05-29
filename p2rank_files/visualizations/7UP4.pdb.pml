
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
        
        load "data/7UP4.pdb", protein
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
 
        load "data/7UP4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1188,1194,1196,1189,1190,1195,1197,1112,686,681,542,438,156,157,698,316,152,153,154,159,210,211,162,165,331,332,682,330,1083,1111,1095,1187] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2332,2338,2339,2340,2509,2510,2511,3376,2389,3264,3276,3370,3371,3374,3375,3377,2887,3293,2721,3292,3369,3366,3368,2335,2495,2333,2862,2863,2336,2390,2910,2879,2884,2886,2867,2344,2376] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4409,3488,4411,4442,4445,4438,3511,3513,3781,3995,4003,4012,4054,3482,4437,4439] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [165,331,332,172,382,330,437,404,401,1194,1196,1195,1209,1211,1220,1222,1221,197,175,179,178,347,348,379,378] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2376,2526,2351,2354,2357,3400,3402,3390,3391,3392,2583,2344,2358,2561,3401,3403,2510,2511,3376,3377,2616,2527] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2947,2948,2949,2950,3079,3303,3304,3320,3323,3077,3048,3015,3044,3066,3068,2985,2986,2958] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1303,1326,1328,1813,2168,2169,2170,1772,1297,1543,1769,2163] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [763,1139,1142,804,805,863,864,766,767,765,896,898,1121,1123,886,834,772,777] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2163,2178,1040,1054,2140,1041,1043,1044,1045,1339,1302,1303,2167,2169,1278,1279] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3614,3620,4318,4314,4315,4323,3618,3617,4346,3644,3646,3705,3708,3643,3692,3704,4316] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        