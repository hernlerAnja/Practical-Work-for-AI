
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
        
        load "data/3UVR.pdb", protein
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
 
        load "data/3UVR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1472,1475,1477,1885,1886,1455,1957,1876,1473,1474,1476,1873,1874,1918,1748,1746,1724,1945,1947,1755,2164,1421,2168,2175,2177,2182,2190,2189,1851,1749,1744,1750,1917,1955,1940,1950,1951,1941,1953,1970,1825,1852,2167,1780,1782,1781,1452,1453,1456,1470,1471,1716,1424,1428,1419,1429,1490,1491,1432,1509,1498] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [649,826,827,373,365,831,573,228,271,229,230,231,844,845,846,272,1336,1338,1351,537,572,810,377,379,381,1335,1334,1337,1240,863,867,869,893,1217,650,651,1321,1318,1319,1320,860,861,854,856,857,858,859,1324,1330,1331,1332] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1326,1328,1325,1324,565,562,564,525,1162,1164,1166,1177,1151,1156,1178,650,1314,1315,1321,1168,598,642,1113,1114,1115,599,535,536,538,537,531,534,573] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1532,1521,1524,1122,2226,2230,1120,2223,1515,1092,1094,2231,2235,2220,2224,2225,1118,1126,1127,1130] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [834,836,671,2661,2660,655,653,654,606,659,1303,1304,612,620,621,624,613,603,610,640,596,602] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [678,170,172,677,679,2634,16,6,17,18,323,704,2624,683,2613,2615,715,718,7,8,723,691,34,36,688,698,701,2655,2653,2654] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [625,628,1072,1070,1071,2366,636,1010,1044,1045,1046,1286,2322,1034,1036,2318,1008] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2159,2160,1805,1985,2195,2173,1827,1828,1852,1812,1816,2167,2176,1849,2011,1806,2123,2161,2165,2169,2155,2149] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        