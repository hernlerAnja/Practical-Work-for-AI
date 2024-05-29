
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
        
        load "data/3OOM.pdb", protein
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
 
        load "data/3OOM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1104,1092,1095,1193,1194,1197,1200,248,362,1192,232,1120,1121,673,664,651,632,490,646,1065,1082,1373,1378,1379,1374,1358,1359,1365,1357,1094,1096,1097,705,706,731,734,692,698,701,115,116,141,87,117,118,120,139,140,82,114,111,244,246,247,240,83,84,85,666,106,107,110,291,292,293] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1417,1446,1447,1515,1516,1494,1495,1929,1366,1367,1419,1480,1444,1051,1054,1055,1316,1317,1568,1570,1050,1599,1354,1339,1363,1369,1370,1315,1318] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1393,1396,1409,1907,1823,1832,1397,1899,1893,1894,721,1088,1410,723,725,1697,1824,1892,1080,1082,1379,1380,1093,1095,1089] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2319,949,1552,1578,1579,1580,1616,2302,2308,2314,939,1574,1581,937,1576,936,1586,1588,2311,2313,2323,2326] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [678,1133,1136,1137,451,478,491,459,492,654,676,679,656] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [743,744,745,777,778,793,817,819,820,854,821,782,1158,844,1156] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        