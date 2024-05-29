
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
        
        load "data/6A32.pdb", protein
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
 
        load "data/6A32.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [956,1556,840,957,959,1557,953,961,859,858,842,792,793,2668,2670,2663,2666,847,855,294,500,536,2691,2692,2693,557,509,510,2698,2699,2700,2701,1516,964,968,562,965,811,1539,1540,2632,2629,2656,2660,2661,1511,1512,1515,1538] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1497,1498,977,973,951,579,1589,1590,1003,1002,395,397,398,394,400,833,834,950,976,982,1004,1006,1010,1011,1012,1575,1567,1570,1572,595,725,1586,1587,1588,63,1561,757,758,832,934,848,756,1576,40,722,61] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1885,1876,1879,1883,1884,1892,1893,114,131,137,113,1914,1381,2431,2436,1352,2447,2451,1379,1382,2434,1380,91,1403,90,1354] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2677,804,2615,2639,2640,2641,2642,2643,1333,1334,2638,2636,1367,802,1356,1365,791,2616,1387] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [46,49,36,73,74,1724,1725,1729,32,1868,1869,1870,1850,1436,1851,1744,1431,1432,1751] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1592,46,48,49,1632,1634,1631,1633,1733,1726,1720,1716,1725,13,24,27,4,29,32,5,8,9,19,1594,1611,1445,1685,1616,1615] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1469,1470,1471,1674,1997,2043,2044,2045,1028,1027,1065,2034,2040,2038,1672,1673,1779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1541,2603,2633,1311,1524,1313,1528,2567,2569,2563,2594,1274,2570] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        