
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
        
        load "data/2UX0.pdb", protein
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
 
        load "data/2UX0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [369,490,486,487,488,485,535,536,361,362,363,1055,355,1035,1037,461,462,501,268,458,459,460,201,203,211,872,873,756,757,773,891,907,1032,1033,1038,202,266,204,180,181,858,774,584,585,554,552,553,526,527,528] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3719,3717,3727,3692,3726,3677,3679,3678,3393,3401,3375,3391,3372,3960,3961,3962,4051,3548,3556,4223,4225,4243,3655,3650,3651,3652,3653,3458,3654,3562,3555,3374,4083,4084,4226,3394,4100,4221,4220,3456,4197,4065,3943,3944,3945,4055,3718,3744,3745,3772,3773] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2906,2889,2890,3008,3009,3027,2888,3174,2336,2337,2593,2595,3171,3173,2401,2592,2594,2456,2399,2730,2314,2344,2313,2495,2487,2488,2502,2496,3191,2504,2618,2634,2668,2714,2669,2661,1908,2619,2620,2621,2622,2623,2503,2907,2994] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [5651,5754,5756,5757,5758,5755,6197,6337,6338,5499,5500,5562,5564,5659,6355,6213,6309,5474,5783,5781,5782,5784,5780,5830,5831,5796,5660,5665,6055,6070,6071,6072,6164,6179,6054,6196,5480,5507,6178,5823,5753,5619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4459,4786,4787,4467,4836,4779,4737,4739,4740,4742,4736,4738,4741,4026,4521,5162,4458,4460,4519,4712,4608,4714,5292,5293,5310,5290,5264,4576,4616,4617,4622,4623,4625,5010,5028,5029,5011,5012,5113,5127,5128,5146,4436,4438] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1945,1845,1930,1827,1828,1256,1829,1286,1846,1669,1255,1279,1607,1653,1278,1606,1277,1556,1557,1558,1559,1599,1530,1979,2075,2101,2103,1337,1339,1425,1426,1531,1532,1440,1562,1963,2121,2104,1434,1944] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        