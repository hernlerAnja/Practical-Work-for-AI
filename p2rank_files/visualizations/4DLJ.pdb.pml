
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
        
        load "data/4DLJ.pdb", protein
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
 
        load "data/4DLJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2180,1403,2193,2191,2198,1450,1444,1445,1867,1447,1449,1451,1452,2205,2206,1446,1448,1854,2182,1396,1397,1730,2183,1727,1427,1428,1429,1430,1866,1899,1878,1729,1929,1701,1806,1807,1833,2184,1832,1855,1858,1762,1763,1936,1938,1960,1441] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1158,1160,1313,1316,651,563,599,600,1104,1105,1106,1142,1306,1307,1312,565,1147,564,566,1155,643,574] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [271,273,378,381,272,234,232,1319,810,380,652,826,828,832,366,845,847,1318,1310,1314,1311,852,851] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1500,1117,1118,1113,2242,1111,2247,1083,1085,2251,1081,1121,2236,2239,2240,2241,1507,1490] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1027,1062,2379,2380,2381,2382,1061,1025,999,1001,1035,2332,2338,2335,2334,637,1037,629,1063] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [153,154,22,23,679,680,684,692,2631,21,4,171,2626,689,699,41,702,2645,2649,2665,2666,2624] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [653,655,671,654,657,660,2671,2672,835,837,838,622,626,613,614,621,1294,1295,641,611,597] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1248,1269,1250,903,901,902,1242,972,974,1008] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1629,1639,2009,1644,1650,1781,2047,2048,1779,2008,1587,1620,2058,1618,1619,2045,1646,1658,1660,1743,1771,1628] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        