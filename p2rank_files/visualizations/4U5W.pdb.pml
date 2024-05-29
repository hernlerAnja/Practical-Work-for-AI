
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
        
        load "data/4U5W.pdb", protein
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
 
        load "data/4U5W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4329,4330,1269,1270,4289,4327,4328,1426,1427,1419,1423,1421,4352,4356,4393,4394,4395,4362,4357,4360,1754,47,48,49,52,56,396,1429,4332,61,65,74,72,4279,73,4294,4284,41,44,2332,2336,4305,4331,2326,2329,2330,3645,4306,4298,4299,2310] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4255,1397,1398,1399,92,1124,1125,70,79,81,83,1275,1277,1132,1393,1394,1395,1396,4261,4262,1255,1257,1274,436,89,106,107,124,126,1104,1105,1106] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3316,298,300,2665,3319,328,329,330,331,3315,2319,2702,2704,2320,2321,2322,2713,2308,2303,2314,2285,2288,3312,326,327,454,360,357,363,2312,2313,455,456,2662,2663,337] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [372,375,414,1079,1083,2621,2616,2618,2619,2620,2746,2588,2590,2617,2650,2651,2653,2646,412,423,1094,1096,32,33,34,1059,1062,24,1075,1078,1069] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [254,224,225,2597,2598,3029,304,307,308,2515,2543,297,2511,2513,2482,2522,306,226,232,338,339,2631,2634,2636,2630,2628,2626,2629,2596,346,197] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3502,3501,3611,3613,3615,3482,3484,3369,3609,3610,3612,3362,3614,3342,3361,3341,2369,2726,2728,2394,2418,3343,2377,2395,2367,3503,3504,2379,2380] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2684,2685,2686,2361,2737,2739,2359,2362,1583,2337,1755,22,13,16,19,1746,1751,1573,1579,2344,1762,2355] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2565,3008,2983,2844,2807,2813,2942,2791,2793,2841,2802,2611,2612,2580,2564,2787,2790] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [74,71,73,77,78,75,4189,4206,4204,4281,440,444,447,4211,4212,4205,449] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4393,4362,4364,4389,4391,4396,4397,1248,1249,1293,1296,1251,1419,1421,1261,1270,4412,4390] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [275,660,773,553,512,555,754,559,274,321,504,497,500,501,290] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        