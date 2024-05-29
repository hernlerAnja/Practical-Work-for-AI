
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
        
        load "data/3ELJ.pdb", protein
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
 
        load "data/3ELJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1260,1261,1262,1269,1270,210,214,215,218,219,252,254,366,253,209,368,1363,1364,1366,1367,854,1284,900,888,890,891,893,874,205,207,875,203,208,872,876,351,487,488,489,490,491,541,1375,1390,453,222,226,1422,1470,1452,1454,1455,1460,234,227,460,1389,1392,1247,1248,1249,1471,1475,1476,1232,1398,1469] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1742,1744,2227,2212,2210,2213,2443,1937,1774,1777,1778,1924,1928,1787,1789,1926,2216,1766,1760,1775] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1291,1021,1025,930,955,929,972,954,1323,1064,1327,1063,1296,1308,1290,1292] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1257,1255,1256,1509,1511,1476,1477,913,914,1254,1768,1770,1710,912,937,1261,1262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1933,1945,1950,1953,1934,1941,2456,2457,2459,2446,2452,1966,2491,2493,2450,2460,2464,2190,2440,2451] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2481,1579,2016,2468,2470,2472,1604,2455,1992,1542,1543,1541,1582,1583,1585,1580,1596,1601,1602,1603,1586] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        