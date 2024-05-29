
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
        
        load "data/6UNA.pdb", protein
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
 
        load "data/6UNA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1213,1313,1234,1311,1322,1314,867,870,858,859,863,1315,1316,1321,644,1344,530,527,565,339,824,825,822,829,847,849,839,841,844,855,857,210,216,215,354,356,255,243,207,254] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3980,3982,3536,3882,3903,3528,3498,3983,3494,3314,3491,3493,3199,3995,2896,3034,3036,3984,3889,3532,3538,3526,3527,2884,2889,2890,2934,2935,2886,2888,3508,3510,3019,2891,2885] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [222,243,380,248,382,242,244,360,2759,218,375,369,100,84,85,86,364,365,2757,362,363] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4009,3157,3156,4011,3999,4000,4008,3988,3991,3993,3158,3159,3160,2912,3198,3155,2913,2914,2915,2917,2918,2916,3995,3197,3199,3195] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2898,2766,2924,2928,2780,3060,3043,3044,3040,3062,70,2764,2765,2767,2770,3045] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4386,4387,4385,4076,4103,4108,4112,4037,4038,4039,4035,4114,4408,4409,4074,4105,4023,4022] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1388,916,915,1352,1351,1208,1207,1622,906,1210,1209,1399,1400,1664,1211,869,880,881,882] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1069,1070,1072,1073,613,611,2405,2408,622,1068,1093,1094,2409,2390] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        