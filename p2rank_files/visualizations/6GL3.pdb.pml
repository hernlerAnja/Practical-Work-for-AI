
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
        
        load "data/6GL3.pdb", protein
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
 
        load "data/6GL3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [535,607,532,520,848,519,536,539,540,1443,1446,1451,1454,1967,1455,624,626,818,625,846,847,1468,1471,1477,1481,1482,792,796,1453,795,2043,2045,2046,1944,1968,1951,1047,1425,1032,534,606,1033,585,586,548,1437,1440,1441,1048,1049,1426,2047,2054,1067] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [4955,1120,4956,4959,2503,4963,3587,3589,3617,4936,3586,3585,1372,1088,1089,1090,1087,1092,3880,3881,3885,3886,3889,3868,3869,1388,4930,4932,4924,1370,4972,1384,2499,2525,2531,3867,2497,2500,2501,2491] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1064,1065,1066,559,1067,555,557,563,1048,1049,1109,2053,2054,572,586,548,567,2067,2068,2069,2077,2078,2079,2080,558,1951,545,1911,1068,1071] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3010,3009,3521,3191,2855,2856,2857,2986,2988,3209,2957,2958,3078,3104,3103,3210,3915,3173,3537,2887] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [5243,5245,4800,5219,4771,4295] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4504,4425,4426,4503,3834,3922,3927,3920,3923,3161,3529,3530,3608,3545,3546,3162,4402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2810,1857,1859,1887,2806,2127,2130,2131,2126,1855,1829,2808,2830,2832,2836] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        