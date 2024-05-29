
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
        
        load "data/5LWN.pdb", protein
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
 
        load "data/5LWN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [134,135,183,185,1246,1247,1248,1245,1241,1242,1249,472,1240,710,711,171,174,175,326,324,325,170,173,343,128,127,129,131,133,184,132,729,1164,733,737,715,310,139,140,146,172,147,169,1263,1269,1270,1271,1261,1104,1262,391,392,425,426,389,421,424,1419,155,156,150,154,165,167,162,393,1127,1132,1149,768,770,1143,1145,763,798,1165,760,749,1436,1437] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1447,1449,1450,2017,2018,2019,1653,2156,2158,2159,1968,1969,1620,1623,1935,1807,1936,1452,1777,1838,2012,1837,1995,2002,2003,2161,1836,1960,1441,1474] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [788,1752,1772,1773,1785,1786,1453,1466,1468,1469,1780,787,1689,1734,1736,1737,1738,1134,1136,1464,1467,1435] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1569,1571,1567,1568,2224,2229,2227,2228,2244,2245,1000,1008,2236,2238,1006,2240,1576,1583,1585,1589,1034,1035,1036,1037,1038,1573] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1263,1097,1271,1265,458,384,424,423,165,167,396,1419,155,157,1383,1409] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        