
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
        
        load "data/4UV7.pdb", protein
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
 
        load "data/4UV7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [302,303,306,1928,1931,1927,1929,1930,692,693,501,504,694,679,1915,2065,1659,1661,500,1645,1932,1935,290,488,491,305,2070] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2405,2606,2656,2573,2576,2608,2612,2655,2639,2575,2383,2384,2385,2387,2391,2615,4995,4997,2408,2377,2378,2368,2379] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [77,242,205,91,178,206,88,331,330,112,180,349,214] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [291,30,50,290,491,1919,1941,1942,23,27,306,1928,1931,504,679,1923,1925] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1164,1167,1158,1159,1163,1356,1357,1355,955,970,1636,953,954,1637,1638,1151,1424,1426,1427,1512,1515,1529,1415,1416] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3724,3725,3690,3691,3697,3726,2907,2916,3171,3670,3161,3190,3189,3173,2931] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1785,4282,4283,4286,4287,4303,4304,1843,1783,1845,4244,4246,1820,4225,4258,4257,4260,4272] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1914,1915,2050,2058,2060,2055,2056,1660,1661,1729,1731,1758,1736,1892,1732,1735] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3798,3800,3782,3783,3803,3711,3802,3730,3824,3751,3746,3801,3736,3741] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3028,3018,3019,3027,3024,3020,2518,2515,2516,2517,2797,2798,2796,2329,2331,3032,3033] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6724,6606,6607,6547,6550,6567,6568,6566,6890,6897,6608,6709,6710,6628,6754,6752,6717,6712] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2647,2625,2634,2635,2636,6971,6995,6985,6989,6453,6454] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5008,5014,6989,6990,6991,6992,6993,6994,6996,5019,5022,5071,5016,2625,2639,6995] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        