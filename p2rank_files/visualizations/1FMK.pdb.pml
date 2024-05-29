
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
        
        load "data/1FMK.pdb", protein
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
 
        load "data/1FMK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2475,2562,2563,2569,2570,1598,1693,1696,1698,1704,1547,1599,2467,1597,2468,2055,2081,2102,2492,2105,1544,2072,1540,1541,2109,2134,1542,2110,2078,2491,1695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1559,1599,1560,1583,2456,2475,2567,2568,2569,2570,2566,1710,1711,1712,2574,2583,2584,2042,2439,1563,1568,1569,1574,1576,1578,1579,1573,1580,2594,2596,2604,2598,1577] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1900,1901,1902,2319,2317,2318,3343,3344,3345,3377,2373,619,607,608,622,3378,590,591,609,791,1907,1919,2289,2290,2292,2293] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2058,2061,2069,1962,1963,2066,1676,1672,1677,101,1373,115,116,87,446,1349,93,96,97,98,1354,1350,99,1372,1362,1363,1366,1359,1367] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [604,606,633,638,635,636,637,3437,3438,942,939,935,3450,3373,3413,3421,3422,610,672,611,2238,3365,3402,3399,3403,3406,2270,2271,2272] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1339,1345,1352,1336,1340,617,618,621,655,656,584,1334,581,582,560,1911,1909,1910,1363,2065,2083,2085,2549,2550,2069,2504,2507,2508,2535,2520,644,1920,2533,2534] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [71,431,57,69,59,498,499,500,1355,1356,1335,519,56,60,554,556,558,560,562,563,555,544,521,561,512,1334] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1853,1949,2041,2056,2055,1932,1854,1855,2577,2559,2563,2564,2569,2565,2571,1711,2575,2591,2592,2574,2042] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2456,2126,2468,2856,2909,2454,2650,2908,2619,2651] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        