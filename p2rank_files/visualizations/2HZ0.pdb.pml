
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
        
        load "data/2HZ0.pdb", protein
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
 
        load "data/2HZ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3200,3275,2623,2625,3201,3294,2804,2807,2814,2577,2619,2576,2616,2803,3276,3280,3283,3132,3130,3128,3069,3070,3125,3126,2538,3108,3109,3119,3120,3110,2313,2314,3279,3285,3291,3293,2437,2438,2548,2550,2739,2518,2519,2520,2521,2522,2546,2515,2537,2422,2754,2759,2755,2776,2297,2299,2300,2771,2773,2775,2779,2787,2736,2434] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [185,291,303,132,127,129,130,133,1180,1181,1195,1196,1177,306,451,526,650,649,427,631,1102,675,674,689,699,661,671,670,654,1103,709,702] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [450,451,526,424,427,1182,478,475,448,443,1169,517,521,477,524,520,968,969,1025,1031,1033,1171,1230,1233,1213,1214,1009] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3560,2954,2956,3563,3566,3814,2958,3565,3847,2955,2992,2961,2966,3848,4060,2960,2936,2937,2964,3526,3530,3824,3825,3812,3813] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1961,1962,1963,1770,1771,1772,1750,1769,1977,1978,1999,2707,2708,2223,2249,1955,2261,2264,2260,1915,1937,1949,1956,1919,1957,2266,2268,2265,2272,2294,2306,2323,2324,2325,2730,2731,2444,2445] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1873,1593,1596,1846,1595,865,1853,1840,836,1852,1839,1560,1592,1590,859,860,855,857,835,863,891] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1079,1088,1051,1052,146,1223,150,1075,1076,1077,1078,143,144,141] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [692,693,694,695,696,1114,689,823,768,775,778,780,815,740,742,744,1139,1141,735,769,772] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        