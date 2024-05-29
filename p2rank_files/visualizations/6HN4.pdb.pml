
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
        
        load "data/6HN4.pdb", protein
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
 
        load "data/6HN4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3398,3399,1631,1632,1637,2050,1822,2048,1815,2051,1641,1657,3560,3393,3394,3396,3562,2056,2058,2284,3344,3349,3358,3395,3397,3418,3419,3437,3315,3420,3338,3322] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [5169,5196,1376,1387,5170,1429,1392,1401,1431,5221,1157,1158,1159,1372,1357,1366,1373,1393,1394,5220,5222,1395,5146,5148,5149,1176,1180,1206,5366,1232,1231,1172,5416,5383,5382,5418,5379,5420,5377,5419,5391,5386,5421,5209,5162,5166,5417,1250] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2325,2326,2336,2376,1870,2109,2124,2126,2128,2108,2110,2571,2572,2395,2125,2127,2129,2390,2391,2392,2393,2396] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2442,2620,2638,2639,2443,2445,2446,2447,364,365,366,357,345,352,356,350,2830,333,2624,3052,3054,3050,2647,2889,2649,2650] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [619,779,780,783,785,788,786,792,781,2612,2613,324,612,613,614,616,325,326,333,2625,2827,2828,2829,2868,351,2869,2871,2870,341,342,343,796,603,2823,2850,2851,795,2852,2853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3108,3259,3163,2512,3092,3169,3090,3097,3149,3140,2712,2713,2711,2507,2508,2509,2511,2517,3257,3103,3106,3107] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2118,2171,2218,1878,2147,2146,1973,1877,1733,1759] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [894,896,999,1572,1576,909,911,1445,1570,1591,1589] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        