
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
        
        load "data/2FSL.pdb", protein
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
 
        load "data/2FSL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1430,1435,1882,1413,1414,1428,1429,1431,1432,1434,1837,1712,1879,2163,1382,1383,1386,1387,1389,2165,1379,1380,2166,2174,2176,2181,2188,2189,1713,1850,1881,1921,1919,1906,1909,1911,1789,1814,1816,2167,1815,1838,1744,1745,1746,1440,1448,1449,1467] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1136,1138,1139,1298,568,569,1125,1130,531,602,603,646,651,1089,1140,1142,1143,1144,1285,1289,1290,1295,1296,1301,654,1300,1302,566,577,571] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [274,276,369,240,275,853,854,848,850,653,830,831,368,835,855,576,577,541,1300,1302,385,383,813,377,367,381,1293,1299,1294] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [675,2667,2668,2669,2670,659,656,657,658,663,2649,2650,600,839,841,840,625,644,617,606,614,1278] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [982,1008,1018,1019,2320,2315,984,1010,2317,2362,2363,1044,1045,639,631,1046,2366,1020,1258] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [162,702,705,26,27,682,2627,2643,687,2602,681,683,692,695,179,181,2604] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1062,2229,1064,1066,1094,1100,1101,1104,1483,2230,2234,2225,2222,2223,2224] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [876,877,870,893,1221,1225,1252,992,880,881,955,957,991,923,1588,924,878] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [837,838,841,346,840,836,856,845,1277,1278,1256,1257,1260,1229,857,1226] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        