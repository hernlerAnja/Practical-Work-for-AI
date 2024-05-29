
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
        
        load "data/2UW9.pdb", protein
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
 
        load "data/2UW9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [117,151,152,153,154,160,164,165,166,113,114,115,116,107,108,2438,288,290,291,306,307,441,1220,1221,1222,147,274,687,691,110,703,118,119,125,126,2440,129,133,134,136,140,142,144,2653,2657,2656,1234,1238,407,408,413,414,1235,1236,1245,389,390,409,411,418,349,351,1118,1214,736,737,738,1106,1107,2637,754,735,1134,2387,2397,2407,2411,2412,2413,2414,762,764,2403,758,759,791,1218,1219,1077,1243,551,1212,1213,1133,1135,713,709,2405,756,757,2634,2636,2610,792,1094,2654,2659,2648,2643,2658] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1489,1298,1299,1486,1485,1311,2002,1494,1291,1496,1297,1474,1992,1468,1471,1500,1504,2001,2038,2042] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1199,693,694,695,700,1198,1151,1157,1158,1159,2245,2246,521,524,1168,2601,2603,692] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [895,900,2267,2260,925,2175,2263,866,2167,2165,897] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        