
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
        
        load "data/3IW6.pdb", protein
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
 
        load "data/3IW6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [641,643,819,824,850,564,369,801,356,813,357,355,802,800,806,808,817,655,1347,1348,1349,1350,843,855,856,264,263,230,231,232,845,849,853,854,1341,1342,1343,373,1326,1331,371,372,804,1319,1239,857,858,859,860,862,866,868,893,1216,1340,1318] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2224,2225,2226,1875,2222,1873,2235,1874,2247,1896,1897,1461,1480,1482,1484,1486,1490,1492,1427,1430,1438,1435,1436,2239,1434,1533,2240,2248,1772,1803,1805,1462,1769,1771,1804,1848,1849,1978,1980,1909,2002,1968,1970,1506,1507,1515,1526] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [825,827,851,829,840,831,835,1303,833,663,2726,2710,2711,2716,818,644,647,645,646,648,588,594,597,598,651,613,615,612,617,1286,1254,1302,632,602,604,605] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1323,1161,1163,1155,1150,519,556,1321,1310,1314,1320,1114,1167,1324,1113,590,591,1307,634,557,565,642,639] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1121,1118,1125,1126,1119,1089,1091,2289,2293,1538,1539,1542,2281,2282,2283,1532,1549] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2684,675,2663,683,690,693,41,154,669,670,671,171,2704,2705,22,23,2688] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1043,1033,1035,2374,2377,2380,2376,1069,1007,1009,620,2424,1045,627,628,1071] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        