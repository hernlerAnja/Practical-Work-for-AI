
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
        
        load "data/4IWQ.pdb", protein
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
 
        load "data/4IWQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [303,710,709,692,694,570,481,574,577,483,304,305,1261,321,323,444,458,448,1306,158,159,160,557,1273,510,484,480,1251,1266,1276,1277,1279,1282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1145,127,133,134,179,288,178,180,303,1253,710,707,708,136,138,145,304,305,1261,728,736,726,731,714,734,740,750,751,128,130,131,1144,1121,1143,1254,759,1119,1259,1260] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2388,2368,2369,3285,3287,2819,2820,2821,2822,2823,3276,3251,3252,2362,2364,2378,885,1941,1942,1947,1948,1953,1936,1940,2955,2966,2969,3234,1923,3221,3222,2960,1954,1957,1959,1963] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [972,985,986,987,988,992,993,996,1016,1022,1018,989,991,1053,1059,1063,1064,1065,1449,1069,1447,1448,2180,2188,2190,2148,1026,1023,1024,1457,1427,2149,2152] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1803,1804,1805,1914,1917,2984,1919,1794,1918,1525,1793,1598,1553,1562,1563,1892,1891] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1342,774,776,1116,1353,1109,1110,1343,1569,1570,1571,1535,1536,1355] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1341,1342,1344,774,776,1353,1343,1564,1569,1570,1571,1557,1559,1535,1536,1355] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [282,283,62,225,226,227,53,593,610,584,586,582,252] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3352,3354,2330,2331,4762,4725,3322,2328,4732] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3394,3385,3388,3418,3979,3389,4760] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        