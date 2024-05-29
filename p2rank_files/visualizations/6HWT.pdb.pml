
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
        
        load "data/6HWT.pdb", protein
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
 
        load "data/6HWT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [267,268,369,373,376,1382,230,546,580,817,818,820,822,377,1369,581,670,361,858,862,856,834,838,824,825,843,360,1363,1364,1366,1368,1373,1375,1357,1365,1367,657,869,1378,1381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1459,1460,1463,1456,1466,1467,2245,1457,2248,2256,2258,2263,2269,2270,2271,1792,1794,1795,1512,1517,1964,1961,1493,1495,1496,1510,1511,1513,1514,1516,1919,1991,1993,1932,2003,2001,2025,1898,2247,1871,1872,1897,1920,1827,1828,1464,1538,1530,1549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1136,1137,1173,571,572,573,606,607,1190,1345,1351,1355,1186,1178,1338,658,650,1184] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1334,1333,1316,620,621,629,633,660,604,610,618,663,847,662,679,661,664,667,2736,2737,849,848] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1030,1032,2402,1058,2399,2448,1066,1068,1056,1067,643,1094,1092,1093,1317,632,633] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [170,153,699,17,18,36,317,318,696,709,2691,172,685,686,687,2714,2730,2710,691,2689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1564,1112,1142,1148,1152,1144,2307,2316,2311,1114,2312,2301,2304,2306,2305] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        