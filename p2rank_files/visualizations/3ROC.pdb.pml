
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
        
        load "data/3ROC.pdb", protein
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
 
        load "data/3ROC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [834,838,372,657,828,832,580,662,578,670,243,245,386,384,544,579,370,371,380,815,816,817,823,234,239,279,233,227,228,229,232,278,231,277,853,230,851,861,862,1324,1326,1247,658,857,858,1224,1345,874,877,867,868,870,863,864,865,1334,1335,1328,1329,1336,1357] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1435,1464,1465,1479,1480,1482,1483,1484,1486,1890,1481,1888,1889,1896,1900,1902,1901,1903,1462,1934,1438,1440,1441,2233,1485,1487,1868,2215,2226,2228,1867,1892,2241,1431,1432,1434,2217,2218,1841,1475,1476] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [678,841,843,2707,661,660,663,666,620,628,617,619,627,612,1310,1311,647,659,603,609,613] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [642,643,1079,1078,2417,1017,1051,1053,2373,2370,1041,1043,2367,2369,2414,1077,1015,631] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [908,909,937,1285,938,940,955,986,987,989,990,1024,1253,1258] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1129,2281,2277,1097,1127,1534,1536,1531,1099,2286,1542,2274,2276,2275] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        