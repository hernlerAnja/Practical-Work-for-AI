
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
        
        load "data/3O8U.pdb", protein
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
 
        load "data/3O8U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1304,1307,1319,1303,1302,1321,1322,1323,852,854,1301,1305,630,633,634,636,1308,846,1224,831,834,848,845,1284,1286,836,816,794,795,812,811,257,362,364,349,350,230,829,523] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [521,522,1135,515,516,547,549,550,509,510,1312,1298,1299,1305,1309,635,636,1308,558,583,584,1146,1148,1152,1154,1150,1140,1099,1097,1098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1401,1405,1406,1453,1454,1940,1938,1451,2207,1448,1450,1471,1856,1867,1398,1432,1729,1730,1732,1962,1963,1834,1835,2186,1808,1859,1861,1939,1857,1763,1764,1765,1931,2182,1399,2195,2200,1490,2208,2184,2185,2188,2193,1468] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1498,1501,1106,2248,1074,1104,1076,1110,1111,1114,2238,2241,2242,2243,2244,2249,2253,1493] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [625,597,598,1288,595,1287,819,838,638,581,2673,2674,817,818,655,639,640,811] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [676,36,2647,2648,664,668,663,18,17,34,170,2626,2628,683,686,2651] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1197,1332,1362,1364,1374,1376,1599,1643,1203,1198,1329,1202,871,869,865,867,868,1195] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [992,994,1268,2340,2342,2336,2385,613,1020,1055,1056,1030] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        