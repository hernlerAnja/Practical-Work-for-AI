
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
        
        load "data/3E7O.pdb", protein
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
 
        load "data/3E7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1004,1034,1037,1038,2441,1006,580,1036,2523,2524,2525,2526,2527,2528,2529,2534,2559,1057,1059,2573,1058,1061,589,2531,588,2566,2569,2570,2574,578,1066,2577,1093,2554,586,2438,2496,2439,2448] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [210,234,247,248,249,796,350,351,352,204,336,203,197,198,199,201,202,812,1274,793,795,1275,611,613,1272,819,800,818,814,227,229,1281,842,1175,1199,1276,839,864,831,832,835,1182,1283,1282] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4013,3350,3352,3557,4014,2959,3553,3556,3534,3535,3075,3539,3551,3578,3914,4015,3938,3581,3603,3569,3570,3571,3574,2961,2986,2988,2987,2956,2957,3089,3090,3091,2964,2966,2967,2955] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3796,3798,3319,3773,3795,3797,3776,3777,3745,3327,3328,3744,5185,3805,5184,5181,5155,5157,5164,5138,5161,5165,3775,3800,5068,5069,5071,5072] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1464,1169,1170,1171,854,1462,1430,856,1176,855,1663,1704,889,1449,1451] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4064,4077,4319,4278,3619,3618,3628,3629,4306,4079,3591,3594,3595,3909,3593,3899,3916,3915] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1236,1220,1211,1217,1218,1222,871,1207,870,872,914,915,898,949,950] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3247,3108,3090,3091,3207,3203,3205,3212,3213,2970,3112,3109,4023,4020,4021] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3725,3726,3688,3689,3975,3609,3610,3636,3653,3654,3944,3946,3950,3957,3961,3959,3971,3573] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        