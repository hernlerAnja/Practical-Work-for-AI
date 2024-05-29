
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
        
        load "data/7VTO.pdb", protein
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
 
        load "data/7VTO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2776,2761,2216,2217,2220,2222,2265,2266,2376,2735,2736,2752,2758,2359,2740,2747,2264,2783,3107,3134,3135,3204,3212,3203,2604,3211] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [75,536,529,53,55,57,98,97,507,514,205,206,208,968,973,397,489,967,189,190,191,486,898,899,493,871,974,976,882] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [224,80,79,452,207,208,474,290,291,292,975,989,265,267,266,256,300,3262,3259,3263,974,976,3276,3280,3278,1000,1001,1002,991,229,231,233,3620,258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3257,3227,3253,3267,3224,3259,1130,1131,3272,3273,3618,3271,3270,1124,3619,3620,3652,3356,3650,3651,1466,1467,1468,1476,3374,3375,3324,3233,3621,1138,3626,3627,3628] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2499,2524,2527,2530,2521,2498,3213,3215,3216,3218,3219,3222,3042,3003,2554,2598,2994,2555,2556,2528,2602,3221,3223,3043,3027] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [998,1000,1002,1124,1118,1120,1115,3619,231,233,3610,3612,3620,258,3257,3253,3267,3259,1130,3278,3618,3270,3626,3627,3628,1109,3621,3625] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2374,2375,2376,2736,2248,2393,2473,2474,2720,2721,2505,2470,3211,3205,3206,2496,2530,2495] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1261,1262,1804,1805,1815,771,772,774,1260,1263,1268,1810,1811,1270] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        