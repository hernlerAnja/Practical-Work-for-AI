
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
        
        load "data/6QE1.pdb", protein
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
 
        load "data/6QE1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [251,353,343,344,345,1295,227,228,229,230,231,552,553,629,631,788,789,790,807,811,826,824,834,835,836,837,252,1291,1293,361,518,357,359,360,1288,1292,1275,1276,1294,1193,1196,1173,847,850,874,843,839,840,841,628,1273,1258,838,1280,1286,1290] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [504,505,544,1281,1282,1284,1280,1118,1120,1112,630,1124,1270,1271,1277,1070,1071,622,1107,542,545,578,515,511,516,518,553] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1372,1376,1373,1404,1420,1423,1414,1417,1418,1419,1422,1421,1702,1400,1872,1845,1847,1851,1378,2171,2166,1425,1379,1369,1779,1909,1840,1827,1838,1839,1841,1911,1806,2155,2156,2164,1805,1828,1830,1736,2153] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [992,993,1028,2352,2356,1026,1027,616,990,1000,1002,964,966,2310,607,2305,2307,2308] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [632,814,816,651,633,634,636,576,586,639,2645,2644,601,582,590,592,593,600,585,1260] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2622,663,2597,659,152,153,671,657,658,668,17,18,170,172] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2212,2214,2213,2215,2219,2220,2224,1469,1480,1076,1078,1472,1046,1048] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        