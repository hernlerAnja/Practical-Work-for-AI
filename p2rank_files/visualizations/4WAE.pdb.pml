
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
        
        load "data/4WAE.pdb", protein
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
 
        load "data/4WAE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1205,633,634,635,632,628,618,619,626,1529,608,615,318,319,323,326,1210,2133,2134,2135,2136,2137,1962,1963,1964,1185,1186,1188,1197,1203,1187,1189,1214,1219,1223,1224,1225,1242,1228,1237,1241,1243,1515,1510,1250,1222,386,387,667,669,377,666,668,695,696,637,1930,1931,2138,2141,1906,1907,2140,2152,2154,2157,350,321,346,349,344,345,643,585,351,353,354,356] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2830,2754,2832,2833,2731,2841,2753,2755,2269,2255,1820,1352,1354,1355,1424,1427,2123,2212,2224,2227,2230,2233,1836,1406,1835,2127,2125,2213,2840] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2972,2975,3677,3678,2616,2971,3648,3649,2644,3647,3650,3651,2646,3653,2967,2968,3674,2636,2634,2635,2638,2639,2642,2673,2678] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1971,1973,85,93,330,333,328,331,370,3279,99,100,3280,86,354,355,356,357,358,321,1964,1995,1996,1972,2035,2026] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1858,1886,1890,2856,3395,3396,1895,1898,2840,2854,1859,1862,3389,2855,2866,2865,2867,2895,2839,2838,2853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [591,592,650,651,652,590,674,593,594,599,810,559,704,819,676,677,680,561,565,566,563] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [845,877,879,881,2164,2167,843,846,847,848,659,880,682,686,688,816,817,819,680] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1836,1378,1851,1854,1858,1898,2840,2854,1848,1855,2839,2838,2841,2853] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1183,1208,2205,878,1201] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        