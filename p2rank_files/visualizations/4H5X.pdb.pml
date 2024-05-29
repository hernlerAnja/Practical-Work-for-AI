
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
        
        load "data/4H5X.pdb", protein
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
 
        load "data/4H5X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3203,2689,2693,2695,3169,3202,3182,3205,3051,3052,3073,3054,3056,3016,3028,3031,3033,3027,2712,2706,2707,2710,2711,3072,2055,2069,2051,2692,2066,2685,2688,2699,2700,3009,2071,2072,2074,3012,2075,2889] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2008,2012,2013,2015,2758,2968,2970,2798,2794,3126,3102,3103,2966,3117,2967,2980,3115] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [964,1306,1305,953,956,957,959,949,952,1287,1289,963,971,974,328,332,343,1238,1245,1254,348,349,351,352,1260,346,1435,1436] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1012,1013,1839,1837,3433,1815,1814,1816,1822,995,982,463,467,1843,1844,1847,1838,470,1823,968,969,1862,291,1011,288,303,316,464,465,978,315,462,466] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1196,1197,1199,1350,1336,1348,1022,1359,279,1209,1335,267,285,292] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2100,2102,2600,2602,2604,2605,2643,2645,2599,2135,2577,2124,2101] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1879,593,594,595,596,1881,1884,1880,633,634,726,614,616,715,716,718,720,638,597,598,599,1036] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1932,1933,1934,3234,3235,3158,3160,3178,3211,3214,3343,3255,1966,3232,3154,3231] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1457,1411,1448,1461,1462,1481,1580,1569,1391,1393,209,211,210,1443,1444] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [409,411,413,840,378,863,864,865,866,867,868] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2175,2662,2661,2201,2217,2621,2623,2624,2204,2202,2062,2658] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        