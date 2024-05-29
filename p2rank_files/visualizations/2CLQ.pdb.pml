
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
        
        load "data/2CLQ.pdb", protein
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
 
        load "data/2CLQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1053,1054,1162,1080,141,675,140,157,1175,1064,1163,146,147,153,306,307,142,186,188,504,636,637,144,187,290,1176,305,656,659,145,1079,660] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3181,3182,3083,3098,3099,2677,2680,2681,2179,3072,2699,2703,2696,2224,2225,2226,2343,2328,2662,2182,2185,2178,2180,2184,3195,2657,2195,2198,3194] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2436,2465,2466,2468,2469,2470,1416,1933,1934,1945,1947,2435,1896,1898,1906,1907,1916,2991,2993,3011,2990,2441,1371,2439,3232,2438,1225,1226,1394,1395,1404,1405,1406,1408,1412,1413,1417,956,1418,1930,954,1414,1415,1939,1940,967,1386,1369,1370,1390,1391,1334,1337,1897,1421] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [157,1175,1063,1064,1163,160,164,306,307,188,1185,1186,1193,1065,1184,1161] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [777,749,750,751,753,754,756,1101,1098,1100,826,827,859,802,861,848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3317,3828,3318,3671,3849,3676,3623,3643,3669,3670,3672,3645,3646,3641,3442,3441,3684,3342,3313,3314,3303] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2878,2880,2773,2775,3122,2772,3117,3120,2765,2768,2770,2845,2846,2821,2767,2796] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        