
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
        
        load "data/7UY3.pdb", protein
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
 
        load "data/7UY3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1981,2071,2073,1565,1571,1579,1593,1982,1052,2055,2058,2067,2068,2069,2070,2072,2051,2054,1957,1596,1600,1210,1211,1102,1103,1104,1212,1050,1048,1049,1429,1350,1351,1352,1547,1546,1551,1197,1563,1428,1430,1568,1322,1532,1195,1196] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2055,2058,2059,2062,2085,2044,2045,2048,2051,2050,2052,1908,1910,1843,1844,1896,1904,2108,1898,2147,2165,2166,2167,2084,2148,1429,1350,1351,1352,1887,1343,1889,1376,1420,1421,1424,1427,1428,1423,2149,2151,1322] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1212,1213,2074,2075,1082,1084,1262,1263,2082,2152,2078,2080,2081,2086,2115,1210,1211,1217,1066,1069,1086,1089,1104,1093,1077,1079,1073,1074,1075,2069,1323,1290,2154,1293,1295,1288,1285] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [2026,1998,1999,2001,216,217,848,1402,2040,2041,1404,1405,1560,1575,1557,1454,1553,1556,853,1180,1453,180,181,185,171,172,209,173,175,1415,1406,1991,1994,1997] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        