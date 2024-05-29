
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
        
        load "data/4XV3.pdb", protein
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
 
        load "data/4XV3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [157,136,137,253,254,255,1128,1131,1132,630,485,486,489,1043,1046,1048,1127,409,410,1135,1143,1145,1146,1147,1149,132,134,128,131,625,629,1042,1044,628,643,156,251,239,600,605,601,586,585,587,502,621,622,623,129,1017,1028,1134,646,650,654,655] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3039,2190,2193,2194,2334,3032,3037,3038,2974,2976,2978,3040,2080,2081,2083,2084,2553,2087,2096,2100,2094,2095,2181,2186,2552,2573,2559,2560,2535,2555,2178,2530,2531,2177,2513,2516,2558,2439,2955,3029,2972,2973,3030,2440,2360,2361,3046] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1114,3019,460,463,465,1098,2448,2445,494,609,610,3002,1097,1072,1066,1064,2411,2403,2416,3003,497,496,2993,2994,2995,2996,2538,2539,2540,3018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2547,2163,2166,2162,2565,2568,2561,2995,2996,2544,464,472,473,873,849,850,851,852,1088,1091,465,1098,1097] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [614,615,636,637,638,617,220,224,227,2803,223,2781,3003,2423,2779,2801,2415,2416,2782,2780,2748,2770,2771,1065,1066,1075,3002,1073] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [27,29,512,18,45,34,12,203,204,2867,2869,2834,215,74,2859] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1853,1858,1861,1863,1324,1303,1300,1880,920,922,919,1290,1288,1289,1291,1293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2365,1981,2369,25,2396,419,5,414] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [938,2142,930,928,929,937,902,904,939,1997,2001,2010,2030,2031,1990] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [464,457,2467,458,2148,2159,2162] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        