
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
        
        load "data/5W5V.pdb", protein
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
 
        load "data/5W5V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1823,1808,2796,2803,2800,2801,2802,2806,1850,2669,3096,3097,3098,3131,3132,3133,2662,2665,3122,2815,787,2231,2234,2233,2666,2668,1817,1814,1819,1796,1801,1802,3070,3069,3080,1783,2217,2214,2218,2208,2210,2794,2213,2216,2215,2664,2219] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [636,616,628,633,461,630,1045,637,638,653,1046,1047,1156,1161,612,1023,117,118,119,121,122,147,148,257,149,274] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1158,1155,1174,1165,612,386,382,383,384,476,472,459,611,273,274,1163,596,272,360,362,479,291,292,1168,1178,323] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [811,1371,1872,1902,844,1893,843,2027,2061,2083,2082,1840] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [194,196,483,603,495,53,54,512,41,42,44,484,250,252,233,486,488] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [926,888,889,890,975,976,925,892,1996,1997,1999,1283,1995] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1938,1926,1927,1932,1935,1934,1940,1941,1944,1233,1225,1227,1594,1602,1322,1328,1291,1919,1972] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1773,1774,1777,1778,1779,1383,1385,1422,1423,1458,1410,1751,1752,1760,1654,1728,1665] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3595,4771,4774,3561,3439,3475,3594,4748,4769,4770,3622,3414,4746,4750] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3084,3103,3107,3143,4412,3111,3867,3921,3085,4413,3918,3928] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2841,2844,2845,3052,3055,2818,2820,2826,2833,4383,4384,3046,3048,3051,3024,3022] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1339,1344,1341,1361,1363,869,1372] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        