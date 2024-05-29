
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
        
        load "data/4WAG.pdb", protein
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
 
        load "data/4WAG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [349,619,1521,613,618,608,321,323,314,326,317,2127,2128,2129,1197,669,632,633,634,635,1178,626,346,380,344,345,377,643,585,351,353,387,1931,356,667,666,668,695,637,640,1898,2133,2146,386,696,1923,1922,1956,2125,2126,2130,1214,1211,1215,1216,1229,1234,1510,1233,1235,1507,1508,1500,1501,1502] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2822,2746,2747,2825,2723,1398,1399,1341,1343,1344,1346,1355,2117,2119,2824,2228,1890,2846,2847,2826,2827,2833,2848,2830,2832,2858,1347,2261,2222,2225,2247,1811,1812,1826,2205,1827,2209,2204,2216,1828,1847,1850,1862,1846,1883,1878,2219,1419] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2631,2634,3641,3645,3639,3642,3643,2665,2666,2636,2638,2608,2967,3669,2959,2963,2964,3662,3663,3664,3665,3666,2670,2626,2627,2628,2630] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [330,370,371,85,93,332,334,328,331,86,354,355,356,357,333,321,1988,1987,2027,1953,1956,1958,1965,3271,3272,1957,358,360] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [672,650,593,674,676,703,412,704,435,437,439,557,559,566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3258,3262,3260,3261,3264,3289,3292,3319,3320,126,127,167,8,7,3293,3295,3294,3296,107,108,155,3482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2846,2847,2833,1882,2848,2887,3387,2858,2857,2859,2832,1850] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3404,3380,3363,3364,1866,1875,1904,1906,1907,3332,3333,419,3336,720,722,3360] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2225,2230,2233,2236,1605,2242,1598,1599,1602,1626,1627,1437,1419,1438,1331,2234,1606,1609,1623,1625] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1938,2656,1972,2646,3279,3311] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        