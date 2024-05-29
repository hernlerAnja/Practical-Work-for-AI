
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
        
        load "data/4Z3V.pdb", protein
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
 
        load "data/4Z3V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [351,1266,228,229,230,348,765,769,164,165,166,168,169,206,762,174,177,794,171,176,184,185,216,188,194,1155,1156,1158,1169,770,1183,1257,1259,1264,1265,1184,1260,1288,761,717,718,334,349,350,740,744,743,751] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1796,1802,1804,1806,1782,1784,1786,1801,1803,1805,1921,1924,1928,1930,1931,1945,1951,1956,1957,1958,1959,1960,1763,1920,1905,1914,1866,1867,1929,1736,1737,1738,1774,1775,1777,1757,1758,1759,1769,1778,1677,1680,1717,1713,1948,1716,1714,1715] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1220,1210,1211,1217,1218,805,803,861,863,920,921,924,883,857,980,917,919,957,945,946] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1276,1260,1288,504,1277,1259,1264,1265,581,718,350,598] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1294,1362,1293,1372,1374,1375,1377,1432,1433,1119,1120,1295,1118,1121,1122,1301,1424,1563,1560,1562,1564,1565] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [328,606,605,74,275,277,276,318,307,308,309,607,608,609,610,611,612] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1410,1367,1413,1156,1158,1159,1160,1431,786,1464,1428,1419,1463] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        