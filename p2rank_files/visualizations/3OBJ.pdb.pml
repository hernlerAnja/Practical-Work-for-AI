
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
        
        load "data/3OBJ.pdb", protein
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
 
        load "data/3OBJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1403,1407,1408,1453,1455,1456,1469,1450,1452,1398,1400,1434,1734,1836,1871,2186,1810,1811,1837,1862,2209,1858,1859,1767,1766,1962,1938,1903,1902,1926,1933,1930,1932,1936,2184,2187,2197,2195,1411,1401,2201,2202] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [517,1300,1304,543,545,505,553,630,578,1141,1143,1145,1306,1146,1148,1290,1294,1305,1293,1135,1130,1093,1094,579,1144,622,1287] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [628,629,631,1299,1314,1316,552,635,819,831,1219,826,829,837,1281,815,811,812,805,790,357,345,806,808,250,251,252,233,230,822,518,1303,1309,1311,1313,359,361,792,1279,849,841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [658,152,153,170,659,2653,17,2,18,2628,663,2630,668,671,678,5,681,34,36] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1498,1511,2246,2250,2243,2244,2245,2251,2255,1505,1500,1503,1101,1099,1105,1106,1109,1069,1071] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1025,987,1013,989,1050,1051,1015,1016,2387,616,1265,604,607,615,2338,2342] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [620,1283,816,817,590,593,582,583,586,632,633,634,2675,650,636,639,592] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        