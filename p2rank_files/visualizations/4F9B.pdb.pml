
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
        
        load "data/4F9B.pdb", protein
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
 
        load "data/4F9B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1267,219,1139,1140,1275,1138,1147,1148,226,785,786,784,1166,1167,1265,610,1266,403,1268,386,739,737,740,744,252,213,214,216,218,263,265,207,208,209,211,264,763,760,754,756] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3505,3558,3680,3559,4048,4050,4057,4432,4460,4461,4080,4079,4568,3696,3501,3503,3507,3904,4561,4559,4560,4033,4034,4054,4038,3695,3697,4562] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3009,3011,703,704,705,695,3020,3008,3062,57,58,64,65,68,97,94,694,3089,674,684,685,687,2984,2985,2986,2987,60,61,31,32,33,59,258,410,412,257,276,429,2978,427,222,224,34,35,36,37,203,426,423,436,407,417] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3518,3329,3330,3331,3497,3552,3570,3353,3355,3356,3327,3351,3358,3354,3352,3517,3522,3547,3541,3542,3543,3701,3704,3706,3391,3362,3357,6238,6246,6247,3998,3999,6271,3723,3716,3717,3720,3721,3730] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [219,1140,1275,1147,1148,226,234,229,1127,242,1111,1297,1494,244,403,1274,1126,402,252,421,511,240,236,247] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4420,4421,4441,4405,4568,4592,3541,3546,4434,3520,3523,4569,3530,3534,3528,3537,3529,3539,4591] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3988,3989,3997,3998,3999,6271,6267,6268,6269,6272,6312,6278,6280,6274,6316,3981,6343,3391,3381,3388] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1626,1627,1629,1634,1636,1637,1628,2413,1640,2373,2391,1635,1323,1322,1321,1340,1037] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4040,4061,4533,3882,4039,3903,3904,3905,3906,3907,3898,4546,3893,3883,3909,3862,3863,3864,3865] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        