
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
        
        load "data/5EX3.pdb", protein
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
 
        load "data/5EX3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3465,1904,3474,3477,1902,1903,1901,2641,1927,1999,1928,1499,1508,1509,2944,2946,2968,3436,3432,3434,1482,3466,1467,2381,2346,2348,2349,2350,1514,1517,1522,2690,2374,2375,2376,1518,3002,1526,1529,2663,2662,2664,2312,2314,2287,2289,2864,2977,1918,1919,2638,1916,1917,2640,1957,1959,1958,2292,2610,2612] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2058,2059,104,105,106,1603,1624,1611,1620,1622,118,121,122,1024,1025,970,971,1005,125,1443,1597,1436,1022,1023,1040,1018,1019,1039,2042,2039,2061,2063,1886,1887,1434,3455] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1659,1660,1871,1875,1643,1912,1647,1653,1657,1679,2921,2930,1672,1782,3469,2932,3468,1681,3467,1867,1874,2910,2912] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1529,1528,1530,316,784,322,781,2381,1466,3435,3433,3437,3440,3441,1541] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [746,754,723,744,745,776,1183,1185,1188,764,767,1223,1215,1217,1213] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        