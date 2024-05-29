
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
        
        load "data/2JDR.pdb", protein
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
 
        load "data/2JDR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1106,1118,1213,1214,735,1135,1133,1134,738,110,712,2397,106,107,108,2400,2403,2405,2407,2406,1215,1216,1219,1220,1222,552,691,709,713,141,142,144,112,113,116,146,165,687,164,166,274,289,290,291,686,140,1094,2659,1093,1107,135,2636,2637,2412,2414,2411,2438,2440,2442,2654,2643,2653,2633,143,145,119,2441,134,1108] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [134,139,369,371,137,136,143,385,409,386,387,1077,1243,2659,1245,2657,2661,2662,2671,2675,291,306,418,441,414,140,1220,1221,1222,1235,407,405,413] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1298,1299,1303,1486,1489,1297,1485,1311,1290,1291,1296,1496,1504,1494,1991,1992,1474,1475,2038,1999,2002,2042] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2603,1160,1158,1159,692,695,696,697,700,249,267,521,524,1198,1199,2246,1151,1148,1168,1152,1157] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2412,2413,2414,2635,766,738,754,756,792,791,759,761,764] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        