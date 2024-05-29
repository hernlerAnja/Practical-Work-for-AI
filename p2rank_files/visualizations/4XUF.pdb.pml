
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
        
        load "data/4XUF.pdb", protein
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
 
        load "data/4XUF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2909,2900,2901,2904,3298,3299,2299,2302,2879,2300,2303,2880,3390,3392,3389,3391,3372,3373,3374,2626,2851,2853,3377,2849,2490,2492,3409,2494,2353,2660,2735,2736,2850,2478,2352,2848,2910] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1202,1199,1201,726,1108,1109,146,150,704,1179,1180,1182,1184,1187,1193,1219,200,199,325,147,149,1188,706,561,683,701,560,452,678,339,337,676,323,324,485,733,736,729,734,735,725] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2624,2625,2626,2627,3377,3378,3379,2729,2660,2659,3369,3370,3374,3366,3368,3362,3363,2652,3210,3212,2651,2683,3220,3381,3215,3226,3208,3214,3219,3170] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1817,1818,1825,1957,1958,1924,1925,1959,1813,1815,1816,3989,1831,1834,1838,1842,1845,1922,1819,1820,1821,4147,4148,4149,4011,4146,3991,4008,4009,4010,4224,4225,4177,4180,4181,4185,4165,4144,4151] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1038,1188,1189,1191,1204,1179,1180,1184,1187,1203,554,978,980,1036,1176,553,1173,979,1024,1025,1030,448,449,451,452,450,476,477,508,485,484] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4026,4035,4112,4114,4115,4123,1820,1821,4148,4149,1799,1801,1991,1995,2002,2006,2032,1987,1990,1954,4084] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3919,3922,3961,3962,1729,1730,1732,1771,1763,1764,3885,3886,3887,1797,1760] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        