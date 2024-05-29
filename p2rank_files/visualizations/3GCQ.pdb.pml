
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
        
        load "data/3GCQ.pdb", protein
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
 
        load "data/3GCQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [642,1313,848,563,564,801,803,818,368,817,1327,1328,1330,1331,1332,842,261,263,233,262,356,236,835,822,841,837,1310,1312,528,1325,370,372,239,240,1317,1323] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1413,1445,1820,1950,2198,1777,1743,1744,1776,1974,1846,1847,1466,1881,1952,1465,1910,1913,1940,1821,1424,2194,1414,2197,2196,1442,1411,1412,1416,1417,1420] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1159,1160,1304,1103,1102,589,590,1144,556,1162,1307,1308,1314,1300,1301,633,564,553,641,518,555,517,1318,1320,1317,1149,1155,1157,526,528] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1424,2207,2211,2194,2205,2212,2219,2220,1414,1871,1846,1847,1466,1462,1463,1465,1868,1869,1421,1487,1498,1502,1422,1416,1417,1420,1483,1485,1460] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [674,2656,2637,2635,158,669,670,679,682,689,692,23,22,39,41,175,177,314,2676,2677,21,2660,2675] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [826,1296,1297,828,827,644,587,593,662,2682,650,645,647,603,604,601,612] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1514,2253,2255,2256,2254,2265,1108,1110,1078,1080,1505] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1032,1022,996,998,1034,2352,1024,1058,1059,1060,2396,2393,618,627,2346,2348] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        