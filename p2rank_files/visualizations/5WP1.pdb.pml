
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
        
        load "data/5WP1.pdb", protein
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
 
        load "data/5WP1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2669,2622,2666,3126,4682,4663,4664,4680,4681,4646,4650,4651,4665,3888,3889,3890,3064,2979,2980,3032,3051,3052,3899,2688,3048,3050,4628,4634,3901,3844,3161,2983,3124,3125] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [847,849,850,851,924,2476,2494,2495,787,791,863,792,550,551,552,1095,1442,1122,1404,1405,764,765,766,786,271,272,273,285,591,592,593,265,274,275,2477,2496] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [271,318,317,229,230,316,265,244,245,252,243,242,550,551,552,1441,519,1438,1454,1482,2476,1535,1588,2308,1516,1517,1501,1502,1514,1515,1485,2477,2260,2475,2307,1486] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1565,1567,2249,2892,2915,2916,3342,1648,2894,2225,2227,2229,2257,2262,2850] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1609,1680,1681,1716,1683,1771,1844,1845,1773,1774,1775,2385,2387,1711,1696,1729,1772] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4625,3734,3735,3737,4595,4533,4612,4616,4617,4530,4532,4534,4219,3733,4218,4220,3768,3781,4629,3752,3848,4696] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1900,1883,1884,1822,1824,4997,4994,1901,1063,1062,1956,1902,2405,1048,1958,5077] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        