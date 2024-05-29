
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
        
        load "data/3HV6.pdb", protein
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
 
        load "data/3HV6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1298,1299,1300,1301,1302,1303,856,524,1288,1281,559,560,850,833,837,1204,847,848,836,636,637,1284,818,796,813,814,350,351,352,360,258,234,235,236,364,366,368,259,831,1181,854,1201,1195] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [522,558,560,547,549,550,552,553,548,1278,1279,1285,1289,524,1288,523,512,585,637,1120,1126,1079,1078,1115,586,1131,1133,1290,1291,1130,1275,1128,1272,629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1384,1387,1391,1388,1440,1434,1436,1453,1437,1439,1418,1419,1718,1392,1393,1395,2168,2181,2186,2194,1461,1385,1820,1821,2174,2179,2193,1843,1845,1842,2170,2172,1751,1794,1795,1924,1926] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1914,1916,1948,1924,1926,1884,1750,1751,1794,1795,1418,1419,1887,1715,1717,1718,1687,1693,1689,1692] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1008,998,1000,972,974,2326,2328,2370,2367,1034,1035,623,1010,622,614,1036,2320,2322] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [685,688,675,13,11,678,41,175,22,23,670,2612,2614,665,666] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1215,1221,1223,1242,944,946,1210,888,889,981,914] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [821,1268,823,600,597,643,583,589,627,639,640,646,2659,2660,657] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1429,1442,1446,1861,1415,1867,1887,1862,1866,1435,1438,1440,1434,1436,1437,1439,1854,1856] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2227,2228,2229,2235,2239,1488,1054,1056,1091,1094,2393,1058,1084,1086,1090] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1767,1769,2035,2033,1731,1627,1632,1634,1638,2046,1607,1617,1648,1608] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        