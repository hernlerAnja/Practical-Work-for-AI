
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
        
        load "data/7ZYO.pdb", protein
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
 
        load "data/7ZYO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [428,382,383,361,367,368,369,371,373,386,1437,427,363,365,1336,1434,1436,530,531,532,1334,754,886,756,896,909,915,916,912,1300,1313,959,1301,1603,1288,1289,1438,1439,1443,1444,1462,1464,1442,1445,548,1461,1271,1273,402,610,611,1469,1470,390,404,546,547,647,889,891,892,564,412,395,407,399,887,888,1272,1596,934,911,933,362] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1828,1830,1831,1834,1870,1112,1144,1295,1856,1858,1635,1637,1092,1061,1291,1293,1294,956,1318,1319,1320,1345,953,987,991,988,1934,983,985,1021,1872,1874] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1287,1602,1603,1289,1302,1303,1305,1306,1294,1296,1304,1939,1608,1622,1624,1295,1858,1636,1637,1932,1933,1931] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [201,182,1516,1518,1537,1538,173,180,202,190,209,185,1484,1485] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1745,1759,1760,1763,1207,1786,1751,1754,75,1181,65,2676,47,2670,2673,2675,2622,2653,48,52] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        