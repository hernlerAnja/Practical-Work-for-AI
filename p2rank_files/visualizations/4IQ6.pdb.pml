
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
        
        load "data/4IQ6.pdb", protein
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
 
        load "data/4IQ6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4250,4251,4275,4231,4232,4242,1080,1083,1122,1123,1224,1244,1245,1248,1249,1226,1227,4412,4428,4429,1241,1242,1243,1358,1360,4243,1348,1333,1350,1073,197,200,205,206,207,210,213,215,1228,362,431,1115,1099,1111,1112,4226] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3677,3678,3210,3227,3230,3756,2764,3061,2859,3062,3203,2875,2874,2876,2988,3205,2713,2715,3255,3237,3256,3650,3661,3649,3757,3758,3759,3763,3765,2711,2717,2746,2748,2763,2765] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [183,185,233,234,330,665,678,658,660,216,1228,345,347,1219,1220,535,534,1138,215,461,1122,1221,179,692,711,685,1139,1111,1110] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3908,3638,3651,3654,3622,3785,2744,2746,2748,2742,3763,3764,3765,3780,3778,3779,3781,3650,3661,3786,1687,1712,1711,2736,2737,1736,1702,1703,2732,2729] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1683,1721,3913,1694,1695,3880,1450,1453,3878,3881,1376,1413,1414,1720,1452,1448,4222,4260,1363,4228,4233,4234,1415,1442,3987,3950,3951,3952,3874,4259,3985,3989,3979] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1350,4417,4418,4419,4420,4421,4268,4413,4414,4429,4265,4266,4300,4000,4002,4338,4383,4381,4298,4332,4426] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3293,3698,3324,3292,3379,3326,3386,3413,3411,3412,3697,3695,3448,3449] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [910,840,871,873,1157,1159,1160,748,747,872,874,783,785] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2883,2884,3144,3182,2771,2772,2773,2775,2776,2691,2774,2536,2537,2667,2669,2550,2866,3124,3126,2867,2885] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        