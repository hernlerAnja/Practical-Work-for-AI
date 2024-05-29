
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
        
        load "data/3LFC.pdb", protein
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
 
        load "data/3LFC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1197,1299,1314,1315,1316,1318,1317,1319,1216,1217,1220,1300,847,848,854,637,638,1297,1301,636,833,837,839,836,1303,1304,258,259,240,257,236,368,524,799,364,366,367,559,795,796,797,801,360,352,831,813,351,818,1210] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1400,1427,1447,1401,1443,1445,1446,1448,2177,1402,1404,2180,1403,2183,2195,1486,1487,1488,2203,2188,2201,2202,1724,1726,1727,1425,1449,1428,1863,1864,1893,1896,1702,1804,2179,2181,1803,1830,1852,1854,1758,1759,1760,1933,1935,1957,1923,1925,1424,1473,1462,1470] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [514,551,1307,1304,1305,558,560,629,552,1132,586,1288,637,522,520,1093,1095,1145,1094,1147,1149,1144,1136,1142,1131] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1050,1051,1052,2376,2379,2377,988,990,1026,1016,2331,2354,2357,2335,1014,623,614,613,615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1100,1106,1107,1110,1497,1070,1102,1104,2239,2243,1493,1498,1072,2248,2244,1504,2238,2233,2236,2237] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [600,1284,597,599,1283,627,639,640,583,589,823,2690,824,641,643,646,657,2665,2666,822] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [157,158,675,665,678,22,23,41,688,2620,2639,2643,2660,177,664,666,670] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        