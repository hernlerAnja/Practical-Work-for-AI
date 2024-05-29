
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
        
        load "data/3QKL.pdb", protein
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
 
        load "data/3QKL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1140,1218,1220,732,1141,737,738,740,2411,552,715,276,2414,170,114,169,2413,553,693,711,122,123,129,130,111,117,2421,2447,2449,2451,120,121,118,119,116,689,1221,1225,1240,441,688,290,1226,1228,291,292,293,308,1227,144,145,146,148,150,154,309,385,387,388,408,386,389,1241,1242,417,2395,2405,2415,2420,2422,1224,1113,1124,1083,1099,1100,2642,2653,2655,2657,2658,2659,2647,2652,2656,1244,1249,1251,2661,2660,1112,739,756,758,760,2636,2634,2635,761,764,803,793,794] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [951,954,955,2233,2235,2209,2231,953,977,978,981,983,2191,2197,2109,2110,976,2190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1477,1998,1513,1997,2043,2044,2048,2005,2008,1509,1503,1505,1483,1494,1495,1320,1306,1308] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1346,411,1341,1342,1345,1266,1245,1247,1255,1365,400,432,399,1243,401,409] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1382,1724,1762,2666,1722,2669,2667,2683,1357,2664,2665,1760] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        