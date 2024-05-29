
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
        
        load "data/6CQ5.pdb", protein
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
 
        load "data/6CQ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1051,1184,1189,301,1183,1191,661,664,665,666,1073,1074,1075,644,680,681,684,688,689,715,174,175,176,300,640,124,128,129,130,131,127,656,658,126,284] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2232,1808,1811,1813,1817,1818,2408,1819,1820,1844,2218,2796,2803,2805,2808,2809,1790,1794,1795,1796,1802,3049,1777,2814,2817,3082,3051,815,1801,1807,3069,3070,2216,2222,2223,3133,3124,3100,2664,2667,2668,2669,2671,2242,2225,2227,2234,2670,3099] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1179,1181,301,639,1183,1191,1203,1196,440,410,411,504,507,414,413,388,488,487,437,506,623,351,390,348,156,317,319] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1913,1308,1312,1316,1296,1304,1247,1248,1249,1250,1251,1979,1953,1980,1929,1938] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1648,1647,1722,1429,1658,1659,1405,1768,1771,1772,1774,1786,1406,1773,2833,1377,1379,1416,1417,1421,1452,1746,1754,1745] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1300,1301,1302,1303,983,989,999,915,917,944,948,946,952,918,919,920,1311,953,954,2003,2005] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4390,3054,3057,2847,3026,3048,4363,2846,2819,2821,4391,3050,2835,2843] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [774,772,775,1411,1413,1389,1390,1423,727,2995,707,739,2996] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [58,631,510,511,512,514,523,49,540,221,223,279] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [871,1365,1866,1887] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2181,2183,2185,4545,3200,3202] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1389,1219,1221,1046,1047,1230,1232,705,707,1039,1040] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        