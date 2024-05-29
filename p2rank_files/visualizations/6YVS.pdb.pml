
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
        
        load "data/6YVS.pdb", protein
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
 
        load "data/6YVS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1221,1234,567,1212,1213,1137,691,698,705,709,1138,139,131,703,708,714,127,133,735,1108,730,734,727,186,319,320,185,187,321,322,129,146,149,153,165,685,305,684,687,157,167,457] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4311,4317,5315,5314,5316,4674,5391,5394,4757,4895,4899,4898,4917,4330,4323,5395,5300,5295,5286,4924,4370,4495,4315,4875,4874,4881,4877,4893,4371,4510,4511,4512,4313,4312] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [6992,7353,7456,7382,7383,7453,6971,6965,6962,6384,6983,6984,6987,6991,6994,6385,6386,6388,6442,6443,6444,6562,6577,6942,6390,6396,6948,6960,6941,6578,6824,7457,7458,7460,6822] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3317,3322,3325,2434,2435,2800,3215,3224,3225,3226,2432,2433,2798,2797,3244,3245,2840,2804,2818,2821,2680,2418,2246,2253,2294,2234,2236,2238,2292,2293,2240,2848,2849,2850,2843] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [7097,7135,7763,7765,4286,7981,7970,7977,7978,7979,4282,7103,7106,7110,7114,7116,7079,7080,7082,4848,4851,7084,4830,4831,7980,4523,4519,4517,4518,4527,4529,4526] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3398,3403,3404,3410,3400,3433,3778,3976,3972,3974,3991,3992,3969,3407,3464,468,491,467,498,502,504,506,466,472,477,446,490,492,489,499,470,3443,3444] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5451,5823,5428,5590,5593,5625,5825,5873,6010,5733,5793,5862,5867,6013] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [7695,8082,8078,8080,8081,7498,7803,7804,7895,7863,7660,7663,7932,7521] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1886,1887,1700,1748,1747,1289,1296,1297,1885,1742,1320,1465,1884,1468,1883] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3363,3668,3816,3817,3525,3952,3953,3955,3954,3956,3386,3737,3560,3355] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        