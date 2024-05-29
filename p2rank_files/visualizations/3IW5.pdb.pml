
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
        
        load "data/3IW5.pdb", protein
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
 
        load "data/3IW5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [240,271,1349,1350,270,807,808,379,380,372,376,378,536,809,571,364,845,843,230,231,232,826,830,654,363,1319,648,650,1318,1239,849,850,853,860,866,855,856,857,858,859,862,854,1342,1216,1331,1343,1345,1347,1326,1327] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1427,1470,1472,1431,2204,2217,2221,2222,1514,2215,2229,2230,1421,2207,1454,1420,1754,1751,1753,1475,1455,1473,1885,1878,1923,1729,1728,2206,2208,1830,1857,1855,1856,1881,1879,1787,1786,1960,1962,1891,1889,1984,1985,1950,1952,1953,1490,1496,1497,1488,1489] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [852,1286,1254,620,622,612,651,595,601,609,1302,1303,2708,832,833,834,835,836,825,831,652,653,654,655,657,668,670,658,2692,2693,1282] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1314,1315,1321,1324,562,597,598,1323,526,564,641,649,1155,1114,1150,1112,1113,1165,1167,1161,1163] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1521,1516,1520,1119,1121,1087,2266,1524,1117,1118,1125,1126,1129,2271,1091,1093,2275,2430,1531,2263,2265,2264,1515] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [687,690,700,41,682,2645,2652,2655,13,39,11,703,2647,2656,714,153,154,677,171,23,22,678,2670,2686,2687,2666] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1045,626,1070,1071,1009,1283,1033,1035,2358,2356,1043,1005,1007,2362,635,1285] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        