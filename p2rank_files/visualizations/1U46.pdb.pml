
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
        
        load "data/1U46.pdb", protein
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
 
        load "data/1U46.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3699,3701,3703,1701,1653,1654,3735,3737,3738,3695,3696,1579,3667,3669,3668,1591,3694,3692,1740,1743,1731,1725,1726,1727,1705,1746,1751,1546,1480,1720,1569,1571,1540,1541,1542,1517,3675] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2193,2194,2195,2621,2172,2315,2638,2622,2175,2168,2169,2170,2173,2174,3002,3109,3110,3113,3032,3033,2329,2327,2323,2661,2664,2668,2693,2640,2643,2427,3123,2504] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [149,148,150,125,127,128,270,597,598,614,284,124,130,129,637,1028,1029,1030,602,616,619,1103,1105,1110,1104,644,640,999,1008] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3261,3404,3406,3403,1550,1547,3377,3425,3300,3346,3371,3381,3317,3319,3321,3375,1580,3247,3280,3297,3293,3294,3295] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2700,3059,3060,2712,2763,2817,2782,2818,2699,2701,2739,2741,2676,2698,3040,3057] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1418,1421,1662,1266,1453,1865,1868,1718,1567,1570,1626,1661,1713] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [703,725,726,727,3221,3216,3219,3415,3960,3961,3959,3969,3367,3431,3432,3363,3364] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3626,3480,3777,3926,3325,3477,3512,3778] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1241,1258,1260,1236,1344,1367,1238,1244,1287,1312,1318] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        