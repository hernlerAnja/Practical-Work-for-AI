
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
        
        load "data/3COK.pdb", protein
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
 
        load "data/3COK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [310,191,192,157,181,145,146,149,156,139,326,309,788,138,143,144,150,160,727,1144,1145,1146,141,730,752,142,725,564,708,293,706,713,755,759,1231,763,1120,761,458,459,1227,1228,1243,1244,174,176,423,424,175,164,1226,490,492] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3061,2985,2597,2298,2299,2297,2531,2147,2130,2027,2028,1970,1971,1973,1974,2546,2300,2296,3062,3065,3066,3067,3068,3081,2163,2145,2146,1987,1981,1986,2018,2029,1969,1975,1976,1977,1978,1979,2260,2262,2263,2264,2265,1996,2008,2010,2012,1994,2006,2328,2330,2402,2983,2984,3060,2551,2563,2565,2568,2590] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [529,1213,528,536,537,540,541,542,522,523,2335,2336,2415,525,1846,1850,1841,1842,1854,2438,1848,2423,526,2337,572,573,591,717,716,718,552,2448,2450] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2371,2373,2379,2380,2823,2851,2853,470,497,498,499,505,506,507,508,2824,2826,612,472,610,475,2843,2841,2847,2848] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [13,2362,15,19,585,2363,5,6,2375,2378,595,600,610,605,573,583,2360,2364,497,498,499,2374,2379,2380,2411,2409,2410,3047] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [718,719,1160,722,1166,739,741,271,273,276,277,590,592,715,711,1161,1836,1837,1838,1840,1842,1867] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3030,1,2,3,5,32,3014,2553,2556,3046,3047,2557,2560,2999,3000,3005,2108,2579,2113,2114,2118] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [520,2311,2337,2343,2344,2345,2346,533,535,534,541,542,2335,2336,2313,2306,2448,2450] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1061,1067,1074,1078,1297,1077,1100,1307,1032,1293,1756,995,1028,1026] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        