
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
        
        load "data/6S9W.pdb", protein
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
 
        load "data/6S9W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [645,646,649,693,690,692,2021,131,2022,2023,119,122,444,1994,1995,1999,433,436,441,1975,1976,2175,2176,2178,2012,2013,2073,2030,2031,2033,2075,2006,2019,2020,133,2032,1496,1945,1946,2004,2010,655,2177,656,657,659,658,660,662,1444,1433,1977,1978,1979,1980,1509,652,651,661,663,1500,1493,1495,677,2179,2190,2191,2192,2193,2194,2196,2197,132,676,678,2206,2207,2203,694,698,115,118,697,117,2208,1082,2211,2299,2224,701,2214,2074] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [427,2428,2429,2430,2432,308,2415,383,384,385,403,405,387,356,406,407,408,2939,2940,412,415,421,425,426,418,310,368,360,265,276,419,274,380,249,293,295,451,453,2412,2418,2419,2414,292,294,2436,2443,2447,2978,2931,2929,2930,2934] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2179,2181,2190,2191,2192,2194,2196,2197,132,2297,2216,2301,2063,2074,2050,2337,2033,2075,2032,2073] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1659,2091,1658,3348,1058,3344,3346,1041,1043,1059,1130,3330,3329,3339,3341,3352,1682,1687,3379,3380,3382,3383,3384,3385,1690] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2062,2074,2183,1689,1690,1055,1657,2185,1659,1058,1056,1059,2169] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [97,98,224,711,709,2023,2395,122,693,2425,2423,295,452,454,299,440,441] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [142,2692,2694,2705,2690,2691,181,2275,2665,2663,2661,2728,2379,2382,2378] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        