
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
        
        load "data/3V5Q.pdb", protein
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
 
        load "data/3V5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2810,3271,3273,3247,3253,3254,3256,3272,3186,3187,3274,2256,2785,3269,3270,2253,3098,3250,3057,3260,2650,2759,2414,2652,2764,2754,2755,2760,2756,2758,2255,2577,2600,2569,2645,2576,2813,2817,2430,3265,3266,3267,3268,2428,2429,2252,2274,2275,2276,2258,2547,3259,2426,2646,2782] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1139,1138,1147,1148,1149,1150,1152,1133,1134,1135,1151,1144,317,167,150,151,152,153,154,1126,1132,696,1066,692,1065,689,664,447,316,315,416,417,446,637,639,313,314,635,636,638,634,165,166,301,155,522,520,643,657,661] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4186,4187,4189,4194,2963,2966,2967,2969,2971,2957,2989,2992,2996,2637,4165,2990,4133,4135,4168,4170,3018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2051,2053,2079,2080,871,847,849,875,507,869,2016,2018,897,2069,2070,2071,2072,2048,842] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [977,1142,1139,1133,1134,1135,936,1129,1126,1132,516,439,447,417,446,470,515] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1890,1892,1608,1739,1745,1605,1751,1287,1457,1460,1730,1704] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3851,3729,3726,3860,3866,3871,3872,4011,4013,3578,3581,3408] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2435,2717,2420,2287,2218,2286,2734,2174,2175] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        