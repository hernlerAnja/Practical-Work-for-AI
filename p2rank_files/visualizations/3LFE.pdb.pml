
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
        
        load "data/3LFE.pdb", protein
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
 
        load "data/3LFE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1314,1201,1318,1319,1320,1321,1322,1323,1304,521,634,1301,1305,1308,635,556,557,815,830,834,1221,1224,836,633,811,1286,844,845,847,843,838,839,840,842,794,810,361,349,348,254,256,226,255,227,228,229,231,232,233,365,796,363,364,828,1214,1215,1220,851] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1404,1405,1406,1408,1397,1449,2194,2198,2199,1447,1489,2205,2207,1466,1467,1730,1731,1453,1452,1431,1432,1470,2181,1807,1834,2183,2185,2184,1832,2192,1833,2206,1856,1858,1727,1755,1762,1764,1763,1900,1899,1939,1937,1868,1855,1961,1927,1929] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [521,634,1299,1305,1308,1309,1310,519,555,557,626,517,549,547,583,582,1311,511,1148,1152,1140,1146,1099,1135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1495,1502,1508,1492,2242,2240,2241,2243,2247,2248,2252,1497,1104,1106,1501,1102,1110,1111,1114,1076,1072] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1287,624,636,637,638,639,640,1288,597,596,594,580,586,590,819,821,642,655,643,2669,2670,2686] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1028,2339,1018,1020,2335,1055,992,994,1029,1030,1270,608,611,1056,2383,620] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [22,23,685,672,675,41,2663,2664,170,661,662,663,667,2647,2643] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1361,1363,1373,1375,1328,1331,870,1598,869,868,1642] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        