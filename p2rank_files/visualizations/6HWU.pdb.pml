
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
        
        load "data/6HWU.pdb", protein
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
 
        load "data/6HWU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1394,1396,2189,1727,1403,2185,2191,2198,1449,2202,2203,2196,2210,2211,1445,1446,1448,1751,1427,1428,1726,1931,1933,1859,1904,1901,2186,2188,1811,1812,1760,1838,1872,1837,1860,1862,1870,1758,1759,1941,1943,1965,1400,1401,1402,1397,1443,1462,1442,1481] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [809,810,827,373,377,363,364,365,572,662,270,271,231,380,381,379,272,233,246,242,243,825,844,1303,1310,1316,1302,1304,1301,1308,1311,1312,857,850] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1293,562,564,565,1286,1290,1291,1292,1280,650,1273,571,573,598,599,642,1135,1131,1133,1276,1080,1116,1079,1127,1129,1121,1132,1134] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [836,834,1269,613,652,653,654,655,596,602,605,606,610,1268,656,659,671,837,2676,2677] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [624,626,628,1037,1035,1036,2388,2384,1009,975,1011,973,999,1001,2337,2339,2342,636,625] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [170,17,18,172,688,698,691,36,704,701,34,2654,2670,677,678,679,683,2631,2629] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1878,1871,1873,1883,1879,1447,1449,1444,1445,1446,1448,1432,1443,1438,1442,1451,1424] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        