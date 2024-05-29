
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
        
        load "data/5EUQ.pdb", protein
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
 
        load "data/5EUQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4429,3993,4936,3966,3968,3969,3970,3988,3992,4463,4935,4028,4044,4939,4933,4944,3991,3989,3990,4032,3996,3998,4000,4058,4263,4056,4057,4266,4267,4268,3943,4312,4178,4179,4101,4962,4278,4961,4955,4956,4957,4958] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3173,3174,2643,2645,2646,2697,2654,2665,2698,3189,3190,3208,3207,3618,3622,4107,4108,4109,4184,4185,4186,4085,4187,4188,4189,4192,4193,4194,4195,3578,3581,2717,2736,3158,3159,3612,3584,3587,3592,3609,3615,3616,2631,2630,2614,2642,2666,3623,3647,2928,2929,2930,2931,2932,3596,2737,3598,3604,2936,2925,2987,2919,2988,2989,3476,3478,3479,3481,3251,3253,3252,3566,3567,3590] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1615,1850,1851,1884,1885,1898,2820,2534,2800,1643,1612,1613,1646,1909,1903,1902,1622,1610,1611,1617,1619,1652,1653,3495,3501,3488,1933,1934,1899,1935,3260,3261,1962,3508,3490,2510,2515,2516,1901,2496,2519,2476,2477,2806,2809,2517,2528,2532,2533,3285,3284,3487] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1462,1456,1458,1461,854,855,856,121,116,118,119,120,869,870,849,853,877,257,275,276,243,245,261,1464,1093,1095,142,146,147,154,1089,1084,129,130,133,847,113,138,140,453,1457,1490] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1355,1362,1623,1625,1626,1636,1637,1624,3320,3326,1621,1622,1596,1620,3327,4562,4564,3349,3350,3314,3312,3313,1361,1348] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3617,3657,3652,3747,3748,3746,3682,3683,3684,3645,3654,4113,4115,4121,3784,3785,3786,4127,3601] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1306,1492,1494,1496,867,870,866,1524,1525,1517,1526,1553] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        