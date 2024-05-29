
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
        
        load "data/6ATT.pdb", protein
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
 
        load "data/6ATT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [21,22,2018,19,20,30,34,35,3557,3552,3553,3342,269,270,271,276,36,210,3540,3537,3539,3538,3547,3555,2017,2069,2100,2102,2169,2170,3330,3329,3125,3152,3331,3332,3335,3563,3340,3101,3102,3103,3099,2079,3324,2088,2076] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2397,2233,2611,2613,2615,2888,2889,2176,2422,2423,2424,3118,2614,2616,2376,2380,2379,2399,2398,2172,2166,2177,3116,2199,2209,2212,2357,2370,2431,2433,2181,2182,2187,2359,2358,2226] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [115,104,101,107,112,84,60,85,3163,3164,117,3133,3135,3144,3355,3186,3203,3142,111,3202,142,62,147,149,171,140,173] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1728,1762,1799,1727,1713,1719,1722,1723,1726,2026,2033,2027,1784,1785,1763,1764,1765,1783,2032,16,258,433,437,446,434,23,256,257,1693,1707] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2639,2475,2480,2482,2483,2657,2921,2658,2413,2414,2455,2408,2903,2407,2409,2905,3117,3122,3137,3134,89,3143,3136] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [6816,1616,6282,6285,6286,6289,1568,6273,6275,6293,1575,1590,1668,1591,1667,1600,1609,1596,6259,6283,6278,6268,1573,1614,1615] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        