
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
        
        load "data/2RF9.pdb", protein
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
 
        load "data/2RF9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1004,653,994,995,1025,996,998,1009,1114,1116,999,150,154,155,159,1000,649,654,678,646,134,146,147,140,973,1234,1126,1221,1222,1127,1024,612,617,622,175,176,308,309,133,135,136,137,1110,1111,1115,1113,138,139,598,600,292,605] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1737,1738,1740,1697,4382,4194,4195,4192,4186,4187,4188,4182,4178,4363,4367,4369,4370,4357,4374,4387,4390,4383,4199,4207,1741,3775,3776,3741,4215,3697,4208,4212,1774,1775,1764,1766,1767,1776,4236,3798,4411,4413,4353,3766] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3138,3118,3119,2345,3120,3139,2186,2189,2233,2234,2235,2187,2344,2202,2199,3150,2215,2217,3028,3029,3025,3015,3018,2666,3013,3014,2992,3019,2625,2630,2632,2635,2617,2621,2622,2624,2637,3043,3042,2662,3044,2658,2659,2328] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [892,422,423,443,427,428,424,444,924,426,902,893] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2531,2534,2535,2533,2274,2094,2107,2271,2273,2098,2266,2609,2093] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1269,1246,1607,1414,1681,1635,1552] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3983,3985,4008,4006,3965,2809,2806,3755,3501] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2601,2602,2528,3128,2424,2425,2428,2445,2404,2423] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        