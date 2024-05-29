
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
        
        load "data/8DFQ.pdb", protein
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
 
        load "data/8DFQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4053,4055,4057,4058,4472,4473,4474,4054,4056,4469,4403,4432,4435,3767,4470,4468,4379,4397,4400,4115,4052,4363,4113,4114,4118,4753,4791,4516,4518,4519,4481,4482,3790,3733,3788,3802,3803,3813,3818,3819,4362,4364] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5585,5901,5872,5874,5738,5736,5734,6002,6004,6005,6001,6003,6151,6152,5583,5584,5586,5589,5710,5869,6108,6109,6118,5999,6000,6122,5592,5600,5476,6034,5470,6096,5530,5483,5486,5875,5877,5816,5814,5815,5817,5893,5953,5956,6188,5571,5544,5914] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [9822,9823,9824,9825,9826,9827,9355,9356,9361,9098,9683,9686,9733,9734,9777,9122,10024,10053,9121,9014,9123,10052,9653,9651,9652,9668,9689,9396,9358,9360,9781,9778,9780,9782,9414,9417,9408,9411,9432] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [11881,11816,2889,2891,11866,11880,2571,2110,2108,1774,2089,2936,2938,2086,2131,2132,11869,2068,2553,2930,2931,2567,2577,11814,11817,11818,11819,11820,1773,2927,2919,2923,2924] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [8299,7937,7942,7927,13608,13609,13607,13594,13595,7472,7474,6403,7493,7913,8267,8269,7535,7930,7931,7536,7514,7510,13542,13545,13546,13547,13548,7144,7145,13597,8220,8255,8258,8261,8262,8222,13544] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [591,594,635,793,515,634,512,794,830,187,190,539,193,206,510,130,132,560,104,205,196,207,364] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [14010,14063,13087,13091,13074,13088,13093,13038,13142,14011,14009,14025] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [11847,11892,11849,11344,12279,11394,11851,11852] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3103,3105,3233,3071,3072,2687,2688,2707,2708,2711,2713,3235,3236,3237,2788] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [8403,8402,8119,8436,8564,8566,8568,8518,8521,8052,8053,8049,8051] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3045,2647,2648,2649,2667,2802,3269,2504,2639,2821,2822,3005,3006] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [8008,8151,8153,8020,7884,8001,7998,7999,8007,8600,7856,8372,8376,8357,8336,8337,7882,8333,8334,8356] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3957,4343,3884,4306,4344,4552,4554,4186,4184,4187,4326,3985,4179,4180,4181,3958,4308] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        