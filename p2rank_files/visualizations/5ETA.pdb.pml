
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
        
        load "data/5ETA.pdb", protein
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
 
        load "data/5ETA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4613,4657,4658,4787,4789,4614,4650,4816,4580,4581,4777,4779,4812,4809,4811,4281,4282,4299,4749,4750,4247,4302] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4165,4166,4174,3495,4163,4173,3496,4167,4172,4168,4175,3227,3677,4086,3671,3672,3673,3419,3656,3418,3225,3226,3384,3117,3210,3211,3070,3068,3074,3116,3118,3223,3690,3691,3685,3692,3695,3713,3715,4063,3709,3710,4076,4082,4083,3705,3706] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [856,1229,876,879,377,838,857,1337,1333,1334,585,1248,661,839,1329,1331,1332,233,234,235,236,283,391,393,550,240,284,262,264,1338,1339,1340,266,843,875,1249,1252,861,821,375,376,822,584,389,824] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1745,1746,1747,1413,1447,1943,1939,1414,2200,1468,1823,1953,1978,1778,1780,1824] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [680,682,683,340,353,614,618,2705,2688,2689,2694,342,676,677,608,665,666,667,668,670,671,844,845,847,849,1315,1316,652,635,625,633,622,664] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3679,3678,3498,3499,3500,3501,3502,3504,3505,3510,3511,3514,3680,3187,3486,3681,3682,3683,3699,4149,4150,4101,4132] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [11,22,23,690,691,695,2666,41,13,703,700,713,2643,2641,2652,727,716,175] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [5475,5496,3523,3524,3529,5500,5515,5516,2875,2991,2856,3525,3534,3537,3547,3011,3009,2857] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        