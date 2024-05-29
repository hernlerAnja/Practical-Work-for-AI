
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
        
        load "data/3ODZ.pdb", protein
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
 
        load "data/3ODZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1419,1425,1428,1474,1418,2206,2205,1452,1881,1960,1842,1845,1846,1847,1828,1855,2208,2202,1752,1784,1751,1829,1785,1473,1491,2220,1470,1471,1493,1467,1469,1468,1867,2226,2227,2213,2215,2228,1426,1429,1487,1495,1506] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [362,364,349,358,794,257,350,634,811,812,816,240,256,824,829,1225,831,835,839,795,797,1301,1336,1211,1312,1339,1340,1302,1304,1305,1206,1202,1334,1335] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1240,1271,817,1288,1289,818,819,837,821,2692,637,638,640,643,644,649,650,654,656,2693,326,581,587,595,598] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [934,935,1001,1002,887,917,1230,1003,963,965,1263,992,1262,1231,885,1232] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2686,26,683,686,662,663,664,179,181,676,162,673,25,27,43,308,4,2670,2666,668,2645,2647] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2356,1019,1021,2357,2359,2361,993,995,1056,2401,2402,2403,2405,1029,621,1030,1031,620,1057,2347,2354,2379] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1447,1453,1959,1918,1921,1750,1751,1725,1946,1948,1950,1714,1713,1721,1724,1440,1441,1442,1446,1716] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        