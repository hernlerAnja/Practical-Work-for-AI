
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
        
        load "data/6F3E.pdb", protein
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
 
        load "data/6F3E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2395,2396,2401,2394,2397,2398,2399,2448,2911,2915,2920,2917,2402,2403,2404,2405,2407,2408,2414,2415,2417,2948,2949,2973,3311,3312,3336,2934,2940,2941,2928,2921,2416,2418,2450,3419,2551,2552,2419,2901,2449,2536,2890,2891,2892,2893,2894,3319,3412,3413,3411,2922,3335,2774,2775,2776,3301,2673,2895,2896,2352,3020,3012,2982] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [749,250,257,258,260,238,243,244,245,246,292,394,1195,390,392,788,748,724,725,1087,1088,1187,1188,1095,237,239,240,241,290,291,378,668,670,671,672,666,669,667,693,687,689,691,796,194,758,716,717,1112,697,1111,586,696,704] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3807,3853,3798,3799,3800,3921,4029,4042,4040,3827,1594,3852,1595,1596,3861,3873,3785,4079,4070,4037,3792,1581,1580,1597,1599] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1552,1561,1553,1554,1581,1783,1794,1796,1606,1607,1615,1627,1546,3806,3826,3827,3807,3841,3842,3843,3845,1824] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4078,2994,2997,3792,4077,4079,2996,3800,1832,1833,1546,770,772,773,1561,1554] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2877,2631,2635,2632,2672,3432,3433,2552,2569,2428] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [393,482,1196,1208,653,411,441,1209,445,442,268,271] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        