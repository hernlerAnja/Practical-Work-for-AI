
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
        
        load "data/2YN8.pdb", protein
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
 
        load "data/2YN8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [637,1038,1039,495,116,631,633,113,1110,1111,493,253,254,395,256,421,422,612,613,164,239,1112,1113,659,660,645,663,667,1008,1022,112,118,124,165,163,1116,1117,1119] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2112,2158,2159,2160,2646,2264,2106,2107,2109,2111,2113,2119,2278,2279,2693,2694,2697,2665,2667,2671,2679,2108,3140,3141,2701,3068,3069,3038,3052,2281,2426,3142,3143,3146,3147,3149,2525,2452,2526,2647] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1815,1794,1845,1846,1816,1817,3800,3810,3297,3799,3286,3801,3841,3831,3836,3839,3840,3863,1781,1787,1789,1788,3862,2987,3287,3292,3281,3284,3291,3293,3846,3318,3853,3294,2947,2948,2950,2951,2949,2917] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3872,1895,1806,1842,3842,3871,3829,1723,3843,3820,3807,3814,3815,1688,1872,1869,1871,1905,1698,1841,1696,1662] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [915,1264,1265,913,916,914,1820,1827,1836,1837,1266,1267,1270,1291,1805,1810,1813,1814,1815] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2851,2853,3114,2849,2850,2852,2510,2511,3112,3101,3102,3107,3094,3108,3113,2880,2874] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [818,819,480,1082,1084,1072,1078,1083,1064,1071,1077,815,816,817,479,846,840] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        