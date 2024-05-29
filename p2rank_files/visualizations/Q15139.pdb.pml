
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
        
        load "data/Q15139.pdb", protein
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
 
        load "data/Q15139.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5122,3134,5514,5515,5079,1295,1167,1168,1235,3110,3111,5491,5475,5487,5488,5476,5500,5609,5611,1259,1260,1261,1269,1258,3129,3132,3141,4514,4519,4513,4516,5093,5097,4517,1165,3122,3124,4533,4535,4540,4529,4530,4532,5615,5617,5618,5619,4687,5613,4686,5073,5074,5612,4842,1234,1240,1256,1257,4524,4526,4528,4520,4522,4569,4570,4670,5118,5113,3099,3107,5112,5769,5763,5770,5773,5777,5780,5775,5776,5768,1267,5645,5761,5459,5644,4870,5620] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4989,4991,4437,4627,4628,4629,4438,4378,4401,4376,4377,4325,4970,4972,4309,4311,4314,4320,4321,4323,4373,4375,4963,4965,4608,4609] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [661,971,972,973,584,586,587,619,621,623,624,361,363,957,956,722,562,646,620,622] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [6486,6487,6733,6730,6760,6761,6762,6544,6800,6543,5307,6490,6719,6532,6549,6581,6582,6584,6587,6724,6728,6617] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2319,2340,2342,2167,2320,2334,2166,2321,2441,2443,2456,2457,2051,2052,2444] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [661,972,1034,1036,1038,1040,1041,1037,1039,645,1035,642,644,646,1049] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3303,3773,3774,3874,3800,3359,3725,3733,3724,3720,3301,3339] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [5386,5390,5897,5900,6452,6455,6458,6465,6466,6449,5895,5896] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        