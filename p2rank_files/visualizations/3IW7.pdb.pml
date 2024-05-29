
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
        
        load "data/3IW7.pdb", protein
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
 
        load "data/3IW7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1456,1474,1476,1894,1895,1901,1882,1896,1924,1927,1906,1459,1733,1431,1432,1478,1480,1424,1458,1473,1475,1477,1479,2208,1425,1433,1435,2211,2221,2225,2226,1519,2219,2232,2233,2234,1758,1753,1755,1759,2212,1834,1860,1861,1885,1883,1789,1790,1791,1964,1966,1954,1956,1957,1988,1989,1455,1493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1243,1322,866,870,872,896,1353,1335,1352,1331,652,654,1323,849,853,854,862,863,864,857,858,859,860,861,274,368,234,235,236,275,1354,811,812,367,828,830,366,384,813,383,376,380,575,834,847] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1327,1340,1341,1342,530,567,1324,1325,1328,1330,576,645,568,565,601,602,1167,1165,1159,1154,1173,1170,1172,1168,1118,1116,1117] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1123,1125,2270,2274,1528,1121,1129,1130,1133,1522,1524,1095,2434,2279,1091,2275,1535,2264,2267,2268,2269] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1049,1013,1287,630,1074,1075,2410,1047,1011,2366,1037,1039,2362,1073,2407,638,639,1289,627] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1307,616,624,613,615,599,605,655,656,838,674,840,2696,2697,657,658,659,661,662,829] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [681,682,691,694,701,707,2674,686,2651,2649,158,22,39,41,11,23,157,13,704,175,177] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        