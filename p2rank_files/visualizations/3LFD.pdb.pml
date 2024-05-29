
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
        
        load "data/3LFD.pdb", protein
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
 
        load "data/3LFD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1379,1380,1383,1422,1372,1406,1466,2169,2174,1441,1452,1467,2181,1703,1705,1706,1424,1407,1420,1421,1423,1426,1843,1914,1782,1912,1830,1831,1738,1902,1904,1875,2156,1809,2158,2159,2160,2162,2167,1808,1833,1702,1739] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1290,1288,498,535,1115,536,1284,544,613,569,571,507,508,542,502,1119,1131,1274,1078,1114] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1282,1301,1300,1302,1283,838,622,1199,1200,1203,817,821,822,820,830,831,832,247,248,249,345,229,508,543,356,783,779,780,781,354,350,797,341,342,802,798,340,232,815,1193,1194] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1483,1477,2212,2215,2217,2223,2218,2227,1464,1081,1083,1476,1082,1089,1090,1055,1057,1093,1085,2222,1473,1468,1472] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1267,584,623,583,592,573,581,1266,824,624,567,625,626,627,630,641,796,799,803,802,2661,2644,318,804,805,806] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [607,598,1035,2356,2358,1007,973,1009,1248,999,1033,2310,2355,2333,2336,971,2314,1250] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [153,154,171,649,22,23,2599,659,672,662,39,650,2622,2618,2638,648,173,654] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        