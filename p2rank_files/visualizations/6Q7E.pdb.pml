
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
        
        load "data/6Q7E.pdb", protein
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
 
        load "data/6Q7E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [149,150,153,307,214,713,715,215,1252,697,486,316,320,678,322,323,324,461,696,701,305,306,1162,1259,568,1257,1161,719,1253,1254,1256,1241,1244,1250,1258,1255,752,745,748,722,730,1115] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1237,1241,1244,1236,1245,1246,1248,567,568,478,509,1052,1053,557,458,461,697,484,485,486,1012,1065] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [913,914,915,951,952,943,972,916,544,1212,543,533,535,1201,1193,1207,947,948] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1430,1432,1434,1421,1424,1422,1428,1436,1437,1440,1041,1990,1991,1423,2041,2044,2037,2048,1025,990,1018,1017,2032,2034,2035,1995,1998,2036] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1564,1811,1820,1595,1826,2221,2223,1840,1531,1638,1640,1803,2247,1597,1637] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1711,1714,1740,1742,1713,1708,1473,1325,1328,1329,1351,1282,1352,1715,1716,1315,1349,1327,1363,1290,1470,1744,1748,1749,1752,1755] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1770,1771,1779,1781,1782,1772,1731,1773,1774,1775,1776,1777,1791,1797,1804,1641,1657,1658,1659,1618,1623] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        