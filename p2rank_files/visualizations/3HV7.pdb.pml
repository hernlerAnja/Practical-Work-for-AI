
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
        
        load "data/3HV7.pdb", protein
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
 
        load "data/3HV7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1271,637,558,635,817,837,832,835,1275,1288,1290,1287,1289,523,257,359,349,351,795,813,796,794,258,363,364,365,231,229,830,1268,1253,1195,1270,1274,1172,846,849,853,1186,847,845] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1428,1429,1431,1432,1437,1426,1707,1709,1710,1410,1411,1876,1681,1684,1376,1377,2163,1385,1387,2160,1379,1380,1384,1383,1464,1471,2178,2173,1453,1468,1469,2185,1445,1734,1813,2166,2171,1812,1835,1837,2162,1742,1743,1786,1906,1908,1916,1941,1918,1878,1834,1847] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1266,1272,1276,1277,1265,1279,549,551,628,584,585,1119,1070,1122,1111,1069,1106,1124,521,522,523,520,548,510,511,636,559,557] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1254,821,1255,823,582,592,812,638,639,640,641,642,656,2651,2652,645,599,596,598,588] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [687,2606,677,36,153,674,684,34,152,170,172,17,18,663,664,665,669,2629,2604] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [622,999,1001,963,965,2318,991,2314,2362,2359,2360,1025,1026,1027,614,2312] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [888,1201,887,904,905,973,1229,936,938,1206] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1294,480,481,1283,524,367,242,385,388,389,384,491,245] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        