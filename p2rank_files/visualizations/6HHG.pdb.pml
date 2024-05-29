
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
        
        load "data/6HHG.pdb", protein
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
 
        load "data/6HHG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1802,1808,1810,1744,1294,1743,1976,1977,1988,1990,1991,1992,1994,1995,1989,1804,1817,132,133,1828,1829,1830,1831,2130,624,1298,1303,1974,1975,1973,1244,1245,1733,1291,1293,1307,1797,409,611,614,643,657,655,658,2005,2001,2006,1819,1820,120,121,1821,1792,1793,620,621,622,623,625,626,627,628,610,641,642,1774,1773,1246,1247,1775,1776,1777] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1480,1889,1456,1457,3122,3139,987,988,1005,1076,3135,3137,1860,1488,1485,1505,3178,3176,3175,3177,3173,3174,3132,3134,1980,1981,1001,1872,1967,1004,1002,1983] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2012,2013,2014,2090,2097,2094,1847,1848,2130,2100,132,133,1829,1830,1831,1990,1992,1994,1995,1989,1988,1872,1873,2001,643,1861] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1819,2216,2219,2218,120,121,1821,122,2196,417,419,676,673,674,98,296,299,406,409,657,405,658,294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2221,2222,2225,392,2212,2204,2210,2230,2231,2734,2735,365,2207,2208,2233,377,2723,2771,2775,2236,2724,2240,2229,2725] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [117,662,115,2009,118,120,121,1821,119,122,2005,2001,2004,2006,659,663,666,655,2092] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1447,1449,1450,3083,3084,3085,1902,1904,1950,1952,1953,1460,1459,1442,1443,1444,1445,1446,1441] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2172,2521,2484,2485,2497,2483,2486,2458,2487,2084,2086,142,140,141,2068,2066,2171,181] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1505,1507,3178,3176,1506,1514,3171,3174] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        