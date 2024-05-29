
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
        
        load "data/3GC8.pdb", protein
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
 
        load "data/3GC8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [260,262,263,232,280,254,258,281,1331,397,399,1330,1350,1353,398,251,274,1359,1374,386,826,824,391,395,1207,1191,1228,1208,878,881,1219,1241,867,868,870,871,872,855,233,1328,592,593,669,670,1319,671,841,1320,1321,1323,1322,840,285,381,382,383,284,288,823,861,862,865,857,866,869,845] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3604,3984,4063,4065,4066,3584,3588,3126,3600,3023,3138,3141,3142,2994,3024,3962,3134,3005,3006,3003,2975,3610,3611,3612,3613,3608,3621,3624,3614,3615,3617,3647,3035,3036,2976,3598,3336,3426,3412,3413,3582,3583,3335,3569,3567,3566,3140,4062,4073] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1911,1912,5232,3868,4326,4329,3867,1902,1907,1904,3876,3875,1910,5064,1908,1935,1903,5074,5082,5060,5063,5065,5070,4337,4358,4360,5069,3839,3869,3871,3841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3158,3159,3153,3156,3178,3255,3297,3298,3299,3254,3263,3264,3268,4093,4099,4102,4110,4111,4112,3141,3142,4114] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3819,3398,3399,3821,5208,3391,5204,3785,3786,5158,3783,3793,3795,3758,3760,5162,5164] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [648,1051,1052,1017,1078,656,1040,1042,1015,1050,2418,2422] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        