
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
        
        load "data/2V7A.pdb", protein
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
 
        load "data/2V7A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [304,195,194,141,145,146,147,148,149,150,155,546,1204,1205,1130,681,471,318,447,677,319,320,725,726,729,733,1128,1129,716,736,138,139,142,703,698,695,697,701,1112,1101,1110,1111,1115,1209,1210,1212,1211,1206] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2346,2347,2352,2349,2392,2343,2345,2391,2336,2335,2501,2338,2890,2892,2894,2339,2356,3408,3402,3406,2743,2874,2514,2515,2516,2517,2873,2878,3325,2923,2926,3326,2895,2898,2899,3327,3401,2900,3307,3309,2930,3298,2933] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2640,2643,2516,2517,2370,2602,3422,3409,2359,2356,2360,2347,2352,2349,2392,2611,2361,2365,2376,2368,2614,2616] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [860,862,863,882,884,880,881,892,1622,1624,1913,1875,1887,1888,1625,1628,1592,1912,2128] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1224,1226,1227,1225,162,174,406,407,1233,1235,1234,1212,163,1079,320,159,171,173,405] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [720,767,769,771,722,723,802,807,843,1167,850,805] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1069,1235,1234,1364,1250,1303,1308,1330,407,1366,1319,1322,1323,1346] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2964,2966,2968,2918,2919,2920,2961,2999,3002,3348,3362,3364,3037,3047,3004] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3819,3078,3079,3115,4109,3821,3825,3822,3081,3824,3077,3083,3089,3059,4084,4085,4071,4072,4073,4074,4110] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [319,320,159,171,419,195,150,155,179,1212,163] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        