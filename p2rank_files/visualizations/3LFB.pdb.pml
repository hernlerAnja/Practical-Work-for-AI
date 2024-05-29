
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
        
        load "data/3LFB.pdb", protein
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
 
        load "data/3LFB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1203,1321,1323,1324,1325,858,859,1303,1307,1306,640,556,1309,1310,639,641,1216,1222,1223,1226,836,844,851,853,857,846,847,850,348,834,230,347,816,821,346,817,520,356,360,362,363,364,799,800,802,555,229,255,254,232,1214] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1430,1450,1452,1453,1454,1455,1449,1451,1902,1433,1434,1410,2183,1406,2196,1468,1492,1494,2201,2207,2208,2209,1399,1732,1733,1730,1836,2189,1834,1835,1860,2194,1858,2185,2186,2187,1809,1810,1766,1764,1765,1939,1940,1941,1869,1929,1931,1899] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1310,1311,1312,1313,547,510,1301,1307,640,556,632,548,588,589,520,518,519,1151,1152,1153,1100,1099,1101,1148,1150,1137,1142] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1020,1022,617,1056,1058,2385,1030,994,996,626,2341,1272,2337] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [611,630,642,643,1290,603,825,827,2688,2671,644,645,660,649,2672] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [154,668,678,681,673,22,39,41,23,688,691,694,2624,2626,171,669,2649,2646,2665,2666,2645] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2242,1503,2244,2249,2245,2250,2243,2254,1104,1112,1113,1502,1076,1078,1116,2408,1080,1106] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        