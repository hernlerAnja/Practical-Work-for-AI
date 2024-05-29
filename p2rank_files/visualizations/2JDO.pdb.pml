
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
        
        load "data/2JDO.pdb", protein
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
 
        load "data/2JDO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [687,112,113,114,115,116,117,110,164,165,166,106,107,108,2438,2403,289,290,291,441,442,1220,1221,1234,1235,686,552,691,274,703,142,2639,2638,2643,2644,2653,144,389,390,126,118,119,125,2440,148,149,151,150,138,139,147,307,418,137,140,136,407,408,1245,409,411,1118,1213,1222,1093,736,738,1106,1107,2619,737,754,764,2387,2397,2407,2412,2413,2414,1215,1216,1218,1219,1077,1243,1214,1134,1135,1195,1196,712,2405,2406,693,551,1209,1212,1229,1094,2636,2640,2641,2630,2625,2618,2617,2642,759,762] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1299,1486,1474,1485,1311,2002,1291,1297,1468,1500,1504,1489,1494,1991,1992,1999,2038,2042] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [695,1159,557,696,1199,521,524,2246,1151,1168,2580,2583,2585,2582,2578,2581] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [737,754,764,2412,2413,2414,766,768,756,761,791,759,762,757,792] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1713,1715,1753,1755,2647,2648,2649,2650,2651,2652,1348,1373,2646,2666] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        