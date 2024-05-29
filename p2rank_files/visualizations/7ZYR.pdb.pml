
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
        
        load "data/7ZYR.pdb", protein
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
 
        load "data/7ZYR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1454,388,390,452,1451,1453,555,556,557,1353,1354,453,407,408,393,394,396,398,411,779,911,781,921,940,1338,984,1325,1326,1620,1314,1456,1455,1459,571,572,573,672,1461,1478,1479,1481,1460,1462,1298,427,636,1486,1487,1488,415,429,589,437,420,432,424,644,1297,959,936,958] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1845,1846,1847,1851,1852,1853,1873,1882,1651,1653,1654,1875,1934,1937,1639,1641,1625,1089,1137,1169,1117,1086,1310,1321,1327,1329,1312,1619,1620,1313,1314,1328,1330,1331,1319,1320,981,1343,1344,1345,1362,1016,1018,1883,1013,1929,1932,1046,1084,978,1012,979,1008,1010] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1762,1776,1777,1780,1232,1803,1768,1206,75,2690,2684,2689,2636,2667,48,52] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1533,1535,1554,1555,190,197,199,218,219,207,202,1501,1502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2413,2415,1922,1923,1957,1943,2059,2060,2062,1950,2082,2083,2084,2095] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [641,650,643,885,886,642,619,622,681,257,259,280,651,652,653] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [354,355,840,306,331,332,356,563,564,824,307] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        