
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
        
        load "data/5N66.pdb", protein
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
 
        load "data/5N66.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [340,806,821,220,824,832,819,624,626,800,802,1311,247,1313,1314,246,1312,219,355,512,785,783,784,352,354,547,1292,1295,826,1215,838,839,842,835,836,825,1277,1309,1310,1294,845,1192,1296,1299,1304] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1391,1394,1395,1423,1424,1425,1724,1725,1398,1445,1447,1439,1440,1442,1441,1444,1722,1422,1894,1873,1868,1863,1869,1923,1921,2178,1801,1828,1933,1827,1860,1862,1850,1849,1758,1757,1931,1861,1955,2175,2186,2199,2201,1401,2193,2176,2179,1749,1853,1435,1436] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1290,1296,1300,1301,1303,537,539,500,540,1131,1126,1143,1139,625,573,574,1090,617,1286,506,548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1234,1253,907,1226,876,877,992,925,912,954,956,955,957,958] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1009,1011,1012,2327,2329,2332,1045,1046,2378,1019,983,985,2334,611,1021,602,1047,599] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [646,2666,2667,810,811,812,628,629,631,634,1278,1279,596,598,585,588,571] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1641,1644,1774,1776,2042,1654,1738,1767,2003,2004,2043,2040,1766] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        