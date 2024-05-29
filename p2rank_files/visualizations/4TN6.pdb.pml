
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
        
        load "data/4TN6.pdb", protein
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
 
        load "data/4TN6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1034,667,666,1064,654,1065,280,396,430,1170,1162,170,171,172,279,272,278,263,276,610,261,262,622,624,625,646,641,643,125,119,121,1035] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2801,2869,3532,3530,3533,3534,2993,2994,3535,3435,3541,3017,3025,3033,3063,3436,3012,3014,3018,3019,3020,3000,2634,2490,2542,2543,2493,2494,2497,2499,2500,2651,2504,2649,2489,2492] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2849,2851,2845,3282,3284,3286,2840,3218,3248,3249,4516,4517,3220,3276,4518,3275,3247,1809,1838,1839,1846,2848,2842,3283,1724,1811,1812,1813,1814,1771,1772,1774,1720,1807,1770,1801,1804] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3197,4666,4583,3185,4668,1839,3224,4653,4667,3215,3218,3216,4645,4647,4557,1802,1803,1804,1805,4586,4580,4581,4554,4550,4640,4642,4650] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1376,1379,1792,1794,1372,1791,1793,1795,4640,4641,4642,4650,1805,1761,1764,4645,1789,1790,4651,4665,4667,4658,1830,1463,4668] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [139,141,146,147,149,151,280,1169,1170,360,1023,1022,1035,1007,1193,1191,1192] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [660,700,2377,1070,1071,1111,661,1077,1085,2362,699,2364] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        