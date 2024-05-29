
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
        
        load "data/3OJ2.pdb", protein
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
 
        load "data/3OJ2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1170,2041,3858,2039,2040,1174,1767,1768,3836,3898,3884,3943,3886,3948,3955,3854,3856,4501,3965,3835,3897,3929,1745,1747,3927,3934,3945] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2226,110,2228,2220,2224,116,980,981,982,983,2200,2201,2199,2196,709,710,1003,112,2269,2313,2315,2318,2252,2254,2256,2268,2304,2299,688,687,689] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3204,3206,3468,3456,3464,3185,3423,3181,321,323,327,333,320,33,336,3447,337,3434,3424,3426,3427,3429,3431,338,3422,40,43,46,47,3476,3477,3457,35] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1385,4806,1391,1396,1394,1395,5094,5048,5049,5050,1378,5060,5052,5053,5055,5057,5073,1381,1100,1101,1104,1105,5090,5102,5082,1093,4811,4832] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4548,3916,3918,3920,2983,2985,3914,3915,2954,2955,2956,2960,2965,2966,2968,1755,1757,3930,4555,4567,1756,2963,4552] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2321,2322,2323,5204,5321,5339,5203,5338,2625,2627,2628,2599,2629,2307,5316,5305,2664,2665,5319,2582,2597,2649,2682] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3953,3952,4224,4290,4291,3937,4305,3577,3578,3712,3695,3713,3690,3693,4208,4308] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1178,1931,1963,1964,2033,2032,1176,1177,1927,1928,1918,1919,1920,1922,1939] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4792,1083,1129,1130,2086,2087,2085,4789,1702,1777,1389,1127,1388,1086,4807] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        