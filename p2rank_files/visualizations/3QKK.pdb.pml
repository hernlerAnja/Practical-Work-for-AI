
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
        
        load "data/3QKK.pdb", protein
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
 
        load "data/3QKK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [740,1113,2706,2707,2708,738,739,756,1099,1100,2714,1114,758,759,1112,1124,1219,737,1228,1225,1240,1226,1227,137,138,146,145,148,1241,387,388,406,408,385,386,389,1083,1249,1250,2729,2730,2727,2728,2732,2733,1251,2742,2422,761,764,766,803,2420,2421,793,794,693,276,1220,715,1140,1141,2413,117,118,119,168,169,110,111,112,2411,120,122,123,2447,2449,552,553,688,689,1218,293,440,441,291,292,157,170,309,308,129,140,144,156,417,438,2395,2405,2415,695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2189,2190,2191,2109,2110,2209,2231,1021,951,953,954,955,2197,981,976,2233,2232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [522,2254,2256,2255,1174,697,1205,1154,1157,1166,558] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1505,1299,1300,1305,1306,1308,1503,2044,2047,2048,1483,1320,1484,1494,1495,1498,1997,1998,2000,2005] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1382,1760,1762,1722,1724,1359,2736,2737,2739,2741,1733,1357,2755] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        