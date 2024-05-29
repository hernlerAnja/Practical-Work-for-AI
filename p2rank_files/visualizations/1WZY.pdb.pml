
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
        
        load "data/1WZY.pdb", protein
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
 
        load "data/1WZY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [784,785,786,1216,1290,236,237,186,808,336,791,803,804,183,184,1292,464,465,1293,1296,1297,1298,1299,1288,1289,1291,500,501,351,352,353,369,469,473,368,370,201,215,217,220,461,1214,1215,835,1190,828,864,822,823,812,814,821,1200] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2167,2204,2206,1908,1909,1910,1911,1877,1880,2193,2195,1777,1778,1773,1775,1745,1714,2318,1779,1790,1878,1786,2319,1788,1668,1889,1890,1885] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1391,1585,1392,1617,1362,1388,1363,1393,1396,1399,1579,2004,2006,1632,1615,1616,1543,2352,2351,2360,2362,1990,2361,1988] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [991,872,909,923,901,902,904,951,952,953,954,955,992,1252,1228,827,871,1236,817] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [595,1044,1045,1046,2546,2549,1010,1011,603,1018,1019,1020,602,1257,1259,1008,2504,2506,2501,978] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1524,1561,1821,1827,1829,1519,1521,1530,1554,1551,1552,1557,1482,1523,1448,1440,1441,1439,1455,1562,1856,1857] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1456,2663,2658,1318,1152,1321,1458,455,490,491,1334,1607,1336,2657,1609] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        