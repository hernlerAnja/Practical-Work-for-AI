
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
        
        load "data/5MTX.pdb", protein
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
 
        load "data/5MTX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1397,1396,1438,1440,1443,1445,1442,1444,1458,1466,1439,1441,1462,1389,1423,1424,1715,1716,1718,1719,1694,1818,1852,1817,1842,1840,1752,1796,1795,1923,1750,1751,1851,1884,1921,1883,1911,1913,1914,1400,2152,1743,2149,2162,2167,2173,2174,2175,1477,1484,2160,2151,2153] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1293,350,810,255,256,257,823,218,216,217,632,633,634,558,806,805,556,825,829,830,835,837,833,1301,226,520,521,522,557,1300,366,362,364,1292,1213,1190,846,848,838,839,840,842,1295,1305,1294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1277,812,814,816,1276,813,815,654,2665,2666,635,636,581,587,642,604,608,596,623,593] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [981,1007,1017,1018,1019,983,618,1009,1045,1043,1044,2351,619,610,2303,2307,2301] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2659,662,661,157,159,17,18,666,2620,6,674,671,681,684,36] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2215,2205,2208,2211,2209,2210,2216,2220,1063,1065,1492,1091,1093,1095] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        