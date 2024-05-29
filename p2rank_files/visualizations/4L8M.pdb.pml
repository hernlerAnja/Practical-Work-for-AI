
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
        
        load "data/4L8M.pdb", protein
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
 
        load "data/4L8M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1245,1323,1324,1325,672,867,871,670,671,1334,1337,1338,1341,1356,1326,1355,1374,881,890,915,875,876,877,878,879,880,1354,390,285,376,378,386,830,847,852,237,284,865,848,593,866,392,558,232,235,236,1222,888] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1467,1469,2262,2255,2257,1468,2269,2270,1529,1460,2248,2244,1458,1461,1463,1464,1471,2245,1515,1516,1929,1931,1792,1494,2002,1513,1512,1793,1897,1896,1919,1923,2247,1827,1870] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1326,1330,556,552,583,585,586,594,671,592,619,1168,1115,663,1151,620,1333,1156] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1223,1224,907,1193,1210,1211,1402,256,252,1361,1329,1345,1346,1347,1348,1352,1358] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [159,17,18,36,722,698,2729,2730,700,176,699,178,336,704,2688,712,709,719] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1008,1010,1044,2402,1034,1036,1037,2398,1071,2446,2443,1070,1045,1046,657,648,1072] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [923,1256,1283,949,950,1017,981,983,922] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1703,1710,1692,1713,2122,1683,1684,1693,1695,1843,1722,1724,1807,1845,2111,2112,2109,2072,2073,1833,1834] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        