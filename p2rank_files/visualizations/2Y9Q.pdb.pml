
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
        
        load "data/2Y9Q.pdb", protein
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
 
        load "data/2Y9Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [185,187,188,194,195,233,350,183,231,179,182,232,861,180,196,198,202,210,212,215,463,207,368,1231,1321,1323,1206,1213,1232,1322,351,352,783,784,805,818,819,820,821,803,804,812,335,464,1178,1326,1327,1328,1329,1330,1195,500,501,1343,1487,1490,1491,460,1346,832,1207,1208,825,860,1504,1497,1493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1504,1202,1502,1503,1538,1540,1496,1497,847,849,851,1207,1208,1528,1801,1802,1754] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1160,1349,1353,1445,1364,1365,488,489,454,1469,1470,425,451,461,462,423,426,428,1363,1637,1639,1443,1426,1427,1614,1367,1410,1412,2723,1440,1431,1439,455,1634,1635,1385,1373,1409,1408] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1620,1610,2019,2037,2401,2017,2020,2011,1627,1647,1648,2389,2400,2390,1569,1570,1629] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1282,1283,1284,1285,2995,587,1028,1301,1302,592,3002,2994,590,589] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1804,1807,1788,1799,1806,1776,1791,2237,2235,1775,1808,1942,2222,2223,2226] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        