
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
        
        load "data/1CF4.pdb", protein
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
 
        load "data/1CF4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [161,171,177,3405,3407,3408,3409,162,163,165,192,1239,187,1240,1491,1492,1538,1539,1540,1541,1550,151,152,3449,3450,164,3448,1542,3451,139,141,1608,1609,1604,1606,216,217,1062,3477,1189,3406,3425,474,491,3514,3431,521,525,526,527,3543,3379,3389,3390,3394,3395,3396,3393,1238,1246,1247,1248,1249,1266,1269,1271,1486,1488,1465,1466,1410,1409,1349,1350,1395,1411,1314,1296,1754,1778,1780,1793,1779,1794,1795,181,246,247,250,251,263,416,418,479,471,379,381,458,475,477,237,513,301,380,1299,1552,1362,1364,2493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [238,820,281,282,3045,3048,795,794,633,634,780,212,213,232,233,236,302,3127,559,601,817,818,597,96,821,206,572,524,526,698,280,3111,3113,3112,664,3125] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1238,1247,1250,1251,1253,1407,1408,1484,1486,1482,1410,1409,1223,1411,1255,1510,2266,2268,1224,1225,1700,1701,1702,1703,1504,1505,1555,1738,2215,2218,1739,1362,1364] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [375,378,366,3128,3126,302,511,559,560,561,3167,3165,380,512,521] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2460,2192,2193,2441,2399,2401,2231,2418] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1207,106,103,93,97,92,72,73,2700,2699,2707,2712,1167,2758] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        