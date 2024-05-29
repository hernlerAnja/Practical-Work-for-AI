
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
        
        load "data/O75676.pdb", protein
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
 
        load "data/O75676.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3475,4247,4366,4365,4355,4362,3473,3347,4358,3296,3345,3290,3293,3312,3315,3317,4223,3318,3309,3334,3301,3303,3308,3297,3299,4390,4206,4246,4391,4392,4222,4528,4529,4556,4545,4354,3827,3689,3833,3458,4381,4379,3585,3491,3523,3526,3545,3548,3325,3327,3321,3291,3880,4239,4235,4262,4263,3846,3849,3850,3851] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1442,1443,2912,1433,1440,1441,1438,1439,1436,1463,1464,1248,1249,2910,2901,122,102,688,685,711,709,712,2903,769,902,903,886,785,781,1449,1422,491,493,1427,1421] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [299,300,2632,1345,1419,1420,1427,928,1344,303,2634,1330,1428,305,353,355,356,492,306,309,311,313,2668,316,317,2667,301,1319,952,1317,1318,1304,475,908,770,924,1321,5731] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4695,4723,5533,5535,4946,5525,5556,5557,5558,4563] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3051,3065,3088,3109,3112,3038,3049,3497,3058,3059,3786,2969,3516,3519,3776,3775,3773] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1722,1723,1726,1493,1738,2281,2284,1735,1729,1713,2235,2237,2244,1731,1732] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5768,5769,5728,5731,5726,970,5727,1003,2657,2640,2628,978,2638,974,979,2636] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1971,1969,1600,1616,1599,1601,1607,5669,5690,1321,5702,5698,5652] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4301,4305,4311,4312,4030,4035,4011,4036,4041,3952,3953,4010,3916,4012,4014,4272,4314,4319,4321,4327,4315,4037,4029] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1214,1218,1732,1734,2306,2309,2305,2288,2293,1765,2279,1735,1729,2281,2284] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        