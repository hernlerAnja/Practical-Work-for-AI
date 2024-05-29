
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
        
        load "data/5OTZ.pdb", protein
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
 
        load "data/5OTZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1448,1449,1452,1453,1447,428,546,547,889,891,892,1444,1455,383,395,382,386,410,412,754,887,888,1446,756,426,427,363,365,530,531,532,1342,1344,368,369,371,373,909,915,918,916,912,1303,1305,1323,1311,1346,1272,1618,1271,1273,1288,1289,1456,548,647,648,890,1454,1474,1471,1472,611,1479,1480,399,402,366,934,911,932,933,362] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1294,1295,1844,1847,1850,1846,1852,1112,1144,1872,1651,1653,1931,1874,1064,1092,1061,1291,1293,1328,1329,1348,1355,956,958,987,983,1021,951,954,985,993,1880,1882,988,1881,1059] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [201,202,1526,1528,1547,173,185,180,182,190,209,1548,1494] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1761,1775,1776,1779,1207,1802,1767,75,63,65,1181,2693,2702,2692,64,2690,2691,2687,2681,2639,2670,48] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2059,2058,2061,1942,1949,2081,2082,2083,2094,2433,1921,1922] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [866,815,538,307,285,281,282,329,331,306,799] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        