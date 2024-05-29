
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
        
        load "data/4GCJ.pdb", protein
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
 
        load "data/4GCJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1125,1072,1217,1218,1219,1213,1214,1221,546,1228,1098,1100,1124,1074,1076,1078,1220,1377,1224,1233,1236,1241,1243,1239,479,477,476,1242,150,155,154,157,161,164,166,1264,1261,1096,1112,1113,1115,1116,1117,1327,1329,1356,1341,1342,1368,1369,130,131,132,185,1141,186,287,1212,686,1140,551,304,688,672,690,691,689,571,321,1274,456,457,139,140,146,147,128,134,135,710,711,732,739,743,746,722,730,731,723,715,1060,1424,1375,1376] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [74,91,96,49,52,53,75,98,294,662,664,44,45,644,99,97] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1446,1938,1480,1483,1940,1948,2282,2272,2273,2274,2280,1497,1518,1450,1523,1522,1447,1936,1907,1909,1893,1902,2281,1931,2266] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1290,1295,1299,1300,326,329,1283,328,1301,179,1317,313,330,124] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1831,2048,2049,2050,2244,2246,1882,1883,1884,2255,2227,2079,2080,2202,2205,2240,1832,1834,2257,2233,2248,2242] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1528,1529,2306,2312,2315,2317,2322,1532,1535,2295,1001,2321,2327,999,1530] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [81,36,41,78,80,231,39,268,679,576,584,587,267,578] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [760,1106,1107,1108,1629,761,762,763,1345,1369,1370,1114,1115,1116,1117,1398,1397,1410,1678] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        