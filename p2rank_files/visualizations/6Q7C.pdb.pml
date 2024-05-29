
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
        
        load "data/6Q7C.pdb", protein
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
 
        load "data/6Q7C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1278,1280,1281,1282,585,1259,1279,1260,1264,1267,1268,1273,1276,1277,1176,1177,743,1092,526,1035,495,574,584,214,337,339,213,324,333,475,476,478,474,501,502,503,721,702,720,725,322,323,471,1275,341,1269,1271,1075,1076,1138,780,784,777,749,762,776,171,173,174,737,739,741,170] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1224,1230,1235,1211,551,553,1234,939,561,560,974,975,938,966,937,995,970,971,936] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2098,1040,1041,1473,1474,1476,1484,1486,1064,2105,1480,1482,1488,1489,1492,1475,2051,2102,1048,2090,2093,2095,2096,2097,2109] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1473,1474,1476,1484,1488,1489,1492,1475,1456,1457,2051,2052,2059,2095,2096,2097] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1616,1639,1641,1864,1583,1691,1692,1694,2308,2282,1855,2284,1640] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1144,800,1312,1313,1359,1670,1360,1654,1644,1650,1652,1658,837] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1332,1401,1402,1365,1377,1399,1375,1378,1379,1525,1522,1752,1758,1759,1760,1757,1755,1340,1784,1786,1788,1798] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1310,1311,1313,1317,1727,1726,1345,1658,1344,1360] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1679,1825,1826,1848,1695,1816,1775,1815,1814,1823,1818,1712,1711,1713,1677,1672,1674] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        