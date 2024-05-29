
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
        
        load "data/4J23.pdb", protein
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
 
        load "data/4J23.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [413,414,415,411,387,763,539,540,326,327,328,621,623,625,590,593,400,527,542,441,443,444,300,302,312,363,301,203] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1311,1308,1421,1423,1092,1114,1204,1424,1549,1333,1116,1318,1394,1198,1200,1201,1184,1193,1213,1098,1314] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1250,1251,1252,1253,1255,1256,1235,1236,1224,1076,1220,1223,1225,1299,1277,1249,1587,1013,1078,1057,1261,1589,1591,1258,1263,1290,1289,1050,1051,1053,1891,1897,1900,1902,1885,1887,1901] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1670,76,104,188,189,190,185,130,133,102,74,75,145,1664,1665,1666,2553,2554,174,184,179,129,131] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1894,1895,1874,2283,2301,2204,1640,1642,1050,1053,1049,1947,2207,1622,1624,2599,2600,1576,1035,1038,1605,1620,1621] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [926,958,961,982,1546,1563,915,916,962,912,913,1549,1333,1360,1332] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [304,286,461,460,504,465,474,477,480,283,287,288,293,279,268,273,277,442,358] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2496,2497,2510,2501,2531,2530,2465,2545,2426,2428,2437,2420,2421,2424] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2181,2185,1945,2170,2039,2407,1966,1968,1948,1641,1711,2298] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        