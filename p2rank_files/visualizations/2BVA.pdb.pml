
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
        
        load "data/2BVA.pdb", protein
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
 
        load "data/2BVA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2408,2260,2262,2384,2271,2761,2385,2436,2272,2257,2265,2270,2418,2419,2693,116,2675,115,2253,2233,2762,2230,2661,2662,2663,2665,2667,2648,2664,2666] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2498,2499,2500,2455,2456,2457,2345,2795,2441,2791,2344,2655,2754,2769,2770,2768,2767,2774,2755,2535,2528,3261,3256,3243,3244,3249,3250,3254,3242,3247,3162,3240,3241,3163,3248,2524,2525,2526,2527] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [542,2215,530,629,172,173,628,171,2214,162,160,158,273,304,319,295,272,534,560] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [503,516,520,637,508,498,399,1123,1125,1109,452,428,496,504,1108,426,396,425] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3140,3424,3700,3702,3127,3141,3423,2835,3672,3701,2865,3629] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [107,108,110,543,2208,2209,2676,2216,2675,438,2567,2660,433,436,527,542] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [323,338,1114,339,340,1116,1115,231,503,637,635,399,1109,1110,641,661,653,655,1108,1029,1030,233,504,505,506] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1291,1496,702,1007,1008,1539,1568,1569,732,1523] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [820,2031,821,2027,818,842,871,847,479,490,491,492,2045,1082,1083,1085,2064,1072,1069,1079,1067,2039,2040,2044] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [198,200,629,172,173,628,330,331,134,607,609,611,612,613,614,135,608] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1464,1696,1699,1700,1710,1557,1544,1545,1683,1689,1701,1651,1646,1648,1555,1652,1640,1676,1296,1433,1270,1436] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1390,912,914,1930,1422,1424,888,910,911,916,1398,886,890,1935,1940,1931,1936,1922,1925,1928] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [406,600,601,598,367,371,366,372,350,404,373,69,70,40,42] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2985,2960,3584,2987,3605,3637] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [694,1038,2063,716,2083,2094] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2463,2743,2744,2746,2358,2297,2242,2707,2708,2709,2357,2293,2295] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        