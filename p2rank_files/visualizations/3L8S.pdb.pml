
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
        
        load "data/3L8S.pdb", protein
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
 
        load "data/3L8S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1428,1451,1453,1431,1432,1445,1448,1868,1446,1447,1449,1450,1452,1855,1869,1730,1880,1897,1900,2175,2186,2188,2200,2201,1404,1405,1408,1485,2193,1492,1466,2177,1398,2178,1397,1731,1728,1834,1833,1856,1858,1807,1764,1808,1762,1763,1933,1931,1920,1922,1474] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1311,1300,1310,1317,1318,1320,1319,1221,1301,632,1302,1309,831,830,827,812,833,257,258,259,229,234,352,232,789,790,795,806,808,351,518,553,791,368,364,366,825,848,850,1198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1296,1302,1306,546,580,631,1289,623,545,1143,1146,1147,1149,1095,1094,1096,1132,1151,1297,1145,1137] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2236,2231,2234,2242,2246,1529,2237,1502,1508,1497,1099,1107,1108,1101,1103,1501,1073,1105,1495,2241] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [153,154,672,22,23,41,4,39,171,679,682,685,2618,669,658,660,664,2641,2637,2638,2616,2656,2657,2658,173,659] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1284,1285,816,818,594,602,591,636,633,634,635,577,640,2664,2663,2669,817,652,637] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1015,1017,1051,1052,2329,989,991,1025,2333,608,2377,617,1026,1027,616,1053] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        