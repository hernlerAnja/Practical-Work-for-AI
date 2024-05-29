
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
        
        load "data/5MO4.pdb", protein
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
 
        load "data/5MO4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2408,2409,2500,2498,1634,1636,1637,1964,1947,1630,1490,1496,1489,1517,2023,1985,2013,1516,1620,1621,1622,1463,1982,1988,1984,1996,1464,1465,1466,1493,1495,1485,2016,2002,2003,2012,2044,2047,1834,1758,1759,1963,2484,2493,1733,2487,1638,1757] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2187,1232,1214,1218,1219,1225,2433,2434,2435,2454,1229,1228,2455,1818,2210,1819,2216,2214,2215,1809,1810,1254,2185,608,2183,2208,574,598,3267,534,539,543,523,607,1206,1209,1210,549,550,545,2236,2237] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3006,3007,2167,3356,2765,2767,2998,2785,2786,2105,2130,3383,2760,2762,2764,2142,2143,2146,3327,3357,2138,2175,2201,2170,2163,2164,2165,2135,2728,2731,2730,3009,3020,3041,3040,3008,2768] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1237,1239,1241,1581,1584,95,1261,1278,1284,1282,1236,1245,1256,1259,1260,1859,1593,1602,1603,1972,1973,404,74,76,78,281,1262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1319,1341,1343,1339,1330,1327,1344,1793,1266,1276,1302,246,247,248,256,268,1289,1777,1315,1325,1313,1792,1763,1794] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1827,2339,2337,1785,1731,1757,1750,2484,2488,2489,2491,2320,2321,1834,1831,1758] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2418,1971,1972,1973,1991,2455,2471,1977,2426,1998,1236,1245,1250,1233,1237,2421,2425,1230,1231,1254,1842] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2058,2092,2094,2124,2125,2415,2056,2007,2008,2009,2010,2438,2420,2430,2446,2126,2445,2447] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1246,387,389,390,1247,409,56,58,46,520,1212,508,461,462,1209,1210,1211,1213,1228] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1093,1094,1060,1063,1065,1167,1191,1192,1159,667,669,1059,490,497,499] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        