
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
        
        load "data/3MV5.pdb", protein
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
 
        load "data/3MV5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [123,129,737,738,739,111,117,2416,2456,168,169,170,110,112,116,1218,1219,1220,732,1140,1141,714,715,276,711,2420,114,2418,553,693,688,689,441,1221,1225,1240,1226,1227,1228,290,292,293,308,130,144,146,148,153,154,309,151,152,388,406,389,417,1241,2401,2411,2428,2421,1124,1083,1249,1112,1100,1113,2635,2640,2645,1114,2629,2627,2628,2646,2650,2651,2652,1251,2654,2648,2649,2653,736,740,764] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [983,1019,1020,981,978,1021,955,2237,2238,2239,2240,951,2241,953,2208,2212,976,2091,2196,2197,2203,2115,2116,2243,2242] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1477,1483,1320,2012,2013,1513,2046,2002,2049,2050,2053,2054,2003,2004,2001,2006,1503,1495,1498,1505,1308,1306,1494,1509] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1247,1255,1073,1264,1266,1344,1346,1365,1342,411,1341,1245,1248,1251,409,401,400,432,1243] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [522,698,1205,1157,2262,1154,1166,1174] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        