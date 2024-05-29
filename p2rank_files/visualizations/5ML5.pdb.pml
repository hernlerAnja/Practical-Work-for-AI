
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
        
        load "data/5ML5.pdb", protein
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
 
        load "data/5ML5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1391,1395,1437,1438,1439,1440,1441,1442,1443,1444,1386,1422,1423,1722,1697,1721,1457,1449,1458,1398,1399,1396,1388,1389,1476,1482,2141,2149,1465,1859,1858,1846,1847,1891,1928,1930,1888,1890,1754,1918,1920,1952,2123,2136,1824,1825,2134,2147,1849,2148,1746,1753,1755,2125,2126,2127,1798] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1320,1322,1324,1325,1329,229,266,226,264,265,359,845,840,844,838,843,1314,566,567,1323,810,811,819,821,247,373,374,375,248,531,802,803,804,808,358,367,371,1305,1328] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1112,1499,2179,2182,2184,2183,2185,2189,1492,1488,1493,1484,2190,1084,2194,1110,1116,1117,1120,1080,1082] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1311,1312,558,559,1141,1155,1146,1152,1154,636,1294,644,1307,1301,592,593,1105,1157,1103,1104,1313,1314] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2614,2615,665,830,831,650,646,647,648,649,590,600,653,607,615,596,604,619,634,1289,1290] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [629,630,1034,1036,1035,998,1000,1061,1062,2325,1060,1272,1270,618,622,1024,1026,2277,2281] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2607,2608,2588,2609,168,671,672,166,673,2592,677,2567,2569,682,685,17,18,36,695] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        