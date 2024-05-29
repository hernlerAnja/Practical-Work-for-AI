
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
        
        load "data/7NH5.pdb", protein
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
 
        load "data/7NH5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1833,1836,1993,1994,1980,1979,1982,1834,1835,131,133,1853,2097,1809,1814,1816,1807,1294,1748,1749,1812,1822,1978,634,1298,1291,1293,1739,1242,1245,1241,2000,2018,1997,2019,2020,2022,2057,2059,2060,2061,1995,620,624,667,651,652,653,662,665,1825,115,118,120,121,1826,122,2155,668,669,686,672,683,684,685,96,97,98,196,224,409,1796,1797,1798,1802,401,2198,2199,2164,1778,1779,405,296,299,418,630,631,632,633,635,636,637,638,1780,1781,1782,1999,2005,2006,2010,2012,2014,673,676,117,151,106,2030,107,1877,1866] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [997,1493,1972,1877,1492,1865,998,1001,1462,1973,1893,1989,1892,1460,1985,1986] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [984,1001,1462,1894,1461,3104,3106,1493,1512,1490,1485,1482,3089,3099,3144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2213,392,2202,2205,2187,2211,365,2703,2190,2191,2192,2201,2209,2216,2220,2738,2740,2742,2741,2695,2696,2693,2694,2698] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1450,1270,1957,1907,1958,1910,2950,1927] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        