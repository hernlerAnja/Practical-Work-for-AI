
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
        
        load "data/3V5J.pdb", protein
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
 
        load "data/3V5J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2383,2386,2852,430,431,2238,2851,2291,2406,2391,2405,2800,2833,2834,2835,2807,2808,2803,2806,1005,1006,1030,1014,441,1028,1029,442,2063,2293,2068,2065,2069,2061,2388,604,590,1002,585,582,1046,1047,2819,233,2239,2249,2250,485,236,226,229,231,224] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2373,2374,2375,2789,2790,2791,1982,2382,2085,2376,2378,2865,2872,2100,2101,2102,2873,2396,2399,2402,1951,2426,2762,2430,2434,2435,2427,2372,1981,1983,1953,1948,1950,1946,1947,2404] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [114,109,110,111,112,115,116,598,601,602,603,990,593,595,626,597,113,625,571,572,574,1060,989,266,268,269,573,575,150,253,267,149,151,581,1059,629,633,634,961,975,270,1067,655] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [426,822,824,846,1771,883,1845,1846,1843,1844,1851,2030,2286,1860,2029,1780,1749] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2234,2625,197,478,2645,2648,9,10,23,14,6,2683,2684,3610,2647,3575,3578] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1899,1916,1918,2352,1875,2311,2324,2325,2329,2330,2335,2338,2326,1914,2109] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [79,80,81,551,38,524,525,503,37,276,277,536,534,537] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1259,1492,1653,1655,1400,1654,1656,1657] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        