
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
        
        load "data/3O96.pdb", protein
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
 
        load "data/3O96.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [422,1839,1845,1840,1791,1792,1841,1822,1823,1824,1826,1865,1850,1341,1342,1782,627,636,624,638,1295,639,640,641,1263,1852,1876,1877,1879,1855,1857,1878,2008,2013,2005,1339,1346,1293,1294,671,419,429,431,432,433,2186,2187,686,687,688,689,102,103,302,229,418,2180,300,305,2170,138,139,1868,1869,1867,2130,2184,126,128,124,2132,104,125,127,2160,2154,2156,2163,2164,2177,668,670,675,2051,2063,623,654,655,656,633,634,2024,630,629,2036,2037,2018,2021,2022,2023,1485,635,637,1355,1359,2068] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1781,1749,1777,1779,1316,1747,1751,1817,1299,2805,1772,2886,2930,2928,2932,2904,2884,2885,2896,1814] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2179,2189,405,2190,393,2178,2692,2172,2696,2700,2197,2199,2201,2743,390,404,406,2193,2208,2204,2737,2738,2739] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1711,1544,2993,1670,1671,2994,1639,1571] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [445,688,689,591,593,594,611] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        