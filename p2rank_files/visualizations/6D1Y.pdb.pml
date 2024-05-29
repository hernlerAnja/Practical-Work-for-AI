
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
        
        load "data/6D1Y.pdb", protein
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
 
        load "data/6D1Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1194,1196,24,29,31,30,13,15,18,19,3,5,8,14,20,21,470,471,472,1,2,318,319,320,321,322,324,325,600,602,484,533,483,485,559,531,561,534,632,628,631,838,835,837,819,654,1353,1356,1358,1359,1372,1211,1213,1347,1350,1360,1383,1384,1388,1373,1374,1375,1232,1390,1394,1229,1207,1395,1396,1398,1157,1158,707,701,1344,700,705] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [925,288,1368,343,345,1416,1381,294,1354,1357,897,899,1370,1361,1256,1426,1413,1415,1378,1384,1385,1389,1376,1371,289,291,292,456,856,1285,1284,860,863,890] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [646,647,1172,1174,1175,119,87,110,105,98,54,1171] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1099,1100,1074,693,1091,1092,1093,2257,2258,2291,2288,1102,691,1119,1075,1072,2309] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [691,681,682,1140,1118,1119,673,674,1137,693,2256,2257,2258,2291,1139] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1818,1821,1822,915,916,954,955,1807,1423,1425,1452,1453,1543,1765,1442] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2128,1981,2125,2126,1977,1964,1841,1986,1987,1697,1727] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        