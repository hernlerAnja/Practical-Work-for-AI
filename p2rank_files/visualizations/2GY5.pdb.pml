
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
        
        load "data/2GY5.pdb", protein
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
 
        load "data/2GY5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1883,1717,3154,1709,1710,2888,1728,1733,1771,1880,1732,3201,3184,3185,3139,2870,2813,2814,1725,1712,2785,3152,1774,1773,3153,3151,2792,2793,2794,1881,1882,1884,1885,13,11,12,1,2829,2871,1878] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [52,53,151,152,66,67,1995,1996,1997,1998,138,511,124,425,426,495,496,439,448,1941,1939] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2128,837,2129,2130,2131,2132,2137,2240,2241,2242,2244,2127,857,844,854,840,846,850,851,2076,2077,2087,2243,2073,2005,2006,2153,81,2139] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1821,1802,1814,1816,1820,2453,2450,2383,2373,2374,2377,2386,2396,2402,2439,2442,2445,2446,2423,2440,2521,2522,2397,2400,2401] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [862,869,872,2259,857,2244,873,874,2080,2073,2057,2060,2062,2063,2064,1648,1649,2257,1659,1645,1646,1647,2233,2235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2036,1726,1727,1673,1675,1676,709,1884,2037,13,704,9,690,691,692,1883,1717,1700,1725,1672,1699] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1061,1062,1064,1333,1334,1348,1387,1066,1380,1378,1418,1088,1063,335,1065,1393,1392,1388,1391,1080] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1525,1526,1518,888,889,890,1482,1655,1658,1659,1653,1643,1661,1665,1625,1623,873,875,872] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1449,1450,2045,1306,1307,2046,1303,1304,1305,731,311,1316,308,732,733] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        