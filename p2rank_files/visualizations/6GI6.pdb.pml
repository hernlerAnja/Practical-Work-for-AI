
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
        
        load "data/6GI6.pdb", protein
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
 
        load "data/6GI6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [251,129,131,150,151,152,130,101,98,92,93,94,95,96,497,1114,1115,239,653,658,677,671,673,675,125,126,128,253,254,255,1098,1192,1076,121,122,369,1186,370,498,1184,1185,639,654,1857,110,114,115,104,107,1087,1088,1089,1090,1091,724,726,728,1086,704,708,709,737,680,701,690,1074,1075,1082,1357,1358,1387,1389,1655,1372,1374,1375,1781,1376,1865,1849,1782,1851,1852,1353,1337,1338,1336,1059,1344,1351] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1560,1528,1530,1048,1049,1532,1426,1465,1425,1423,1299,1300,1302,1481,1333,1342,1347,1348,1318,1044,1559,1392,1396,1382] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1536,1543,2248,1541,1542,2254,2257,2258,2259,948,2269,1548,1550,1513,1514,1515,2264,2265,1537,1574,937,1538,1540,936] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1129,685,1131,469,1171,459,467,470,686,660,661,663,486,499] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1147,1148,1150,846,1135,1121,857,746,747,748,796,820,823,824,785] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1501,1239,1241,1253,958,1504,1506,1017,936,951,955,1513,1514,1515,1542] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        