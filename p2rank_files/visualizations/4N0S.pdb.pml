
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
        
        load "data/4N0S.pdb", protein
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
 
        load "data/4N0S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2333,891,374,390,914,389,387,364,365,366,370,431,380,661,404,706,682,2364,2365,2398,889,970,2631,2632,2633,2659,2660,2665,974,888,910,663,665,972,973,2613,2614,708,2410,893,2670,2671,2672] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [4814,4802,4831,4833,4832,4019,4801,3272,3274,2759,2760,2803,3309,3273,3112,3111,3115,4779,4815,4816,3183,3184,4041,4026,4043,4785,4797,3975,2806,3195,3196,2811,2816,2822,3164] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [364,431,430,328,351,1672,1725,1639,2397,2396,1575,632,1591,1619,1622,663,1578,2443,2612,2613,2614,2444] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2363,2365,2982,3046,2384,2385,2393,2397,2398,1702,1704,1699,3021,3024,3026,3588,1785,3547,3048,3490,1762] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2019,2020,2036,2037,1958,1960,1185,2094,2092,1171,1186,2038,5117,5119,5197,5114] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1854,1910,1912,2521,1909,1911,1746,1817,1818,1820,1833,1866] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4776,3916,3979,4780,3929,4847,3881,3900,4763,4767,4768,4681,4683,4684,4685,3882,4746,4371] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        