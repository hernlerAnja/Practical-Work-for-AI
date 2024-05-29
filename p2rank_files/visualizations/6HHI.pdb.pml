
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
        
        load "data/6HHI.pdb", protein
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
 
        load "data/6HHI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [622,625,668,669,620,621,627,1847,1848,1849,122,684,652,653,654,658,663,666,2022,2029,2032,118,119,117,2120,670,673,2034,1825,420,1820,1821,1802,634,636,637,638,639,1275,631,632,633,1803,1805,1804,1832,1838,1839,1856,1857,1859,2016,2017,2004,1998,1845,1846,132,133,1858,2018,2020,2023,1901,1993,1771,1772,1830,1836,1322,1319,1321,635,2002,1326,2001,1761,1331,1273,1277,1287] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [115,118,119,117,2120,113,666,2029,2032,102,673,695,670,674,150,151,2037,2036,2043,2044,2048,2050,106,107,2033,2034,677,584,2023,132,133] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1980,1981,1300,1284,1473,1474,1472,1298,1470,1487,1477,1478,1932,3011,1941,1950,1930,1488,1498,3110,3111,3112,3113] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [999,3165,3150,3160,3163,1513,1535,3205,3206,1516,3203,1015,998,1016,1087,1485] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2008,2020,2023,2040,2122,2042,1859,2007,2016,2017,1875,1889,1876,2158,1901,1900] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [365,366,370,2760,2249,2250,2236,403,2253,2235,2264,2268,2799,2751,2752,2750,2755,2756,2257] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1012,2009,1995,1888,2011,1013,1015,1016,1514,1515,1516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [121,98,122,2214,416,296,297,299,428,430,2244,2246,2224] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        