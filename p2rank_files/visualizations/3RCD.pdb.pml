
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
        
        load "data/3RCD.pdb", protein
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
 
        load "data/3RCD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5514,5128,5132,5515,5115,4570,4572,5125,6557,6558,6560,6562,6556,6561,6559,5061,5077,5079,4753,4754,4755,4756,5095,4764,4619,4620,4621,4758,5131,5155,5157,5154,5156,5083,5499,5593,5594,5595,5600,5592,5485,5065,4986,4772,4787,5064,4770,4768,4966,4980,4584,4568,4569,4878,5616,4877,5597,4875,4876,5611,5612,4910,4908,4883] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [187,188,189,321,322,323,324,326,138,140,1165,1163,1168,340,336,338,152,153,136,137,1173,446,1184,645,647,663,1179,534,1160,1180,1161,1162,478,554,332,629,444,451,445,355,632,633,548,476,443,1067,1053,1082,696,700,1083,693,2125,2126,2128,2129,2130,2124,2127,699,723,725,724,683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3308,2955,3337,3338,3416,2924,3322,3417,3418,3424,3422,3423,2398,2392,2393,2395,4375,4376,4377,4374,2948,2923,2978,2979,2980,2956,2444,2591,2593,2594,2595,2884,2885,2887,2900,2902,3415,2807,2706,3432,3434,3427,3428,2699,2701,2674,2675,2443,2576,2577,2578,2579,2918] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [6874,6875,6876,7025,7849,7850,7854,7855,7856,7010,6825,6827,7387,7388,7740,7754,8808,8807,8809,7026,7027,6824,6830,7769,7770,7847,7848,7350,7352,7338,7380,7355,7009,7023,7316,7317,7319,7008,7011,7239,7332,7334,7864,7866,7859,7860,7107,7138,7131,7133,7106,7108] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4899,4904,4914,4920,4922,5408,5406,5407,5374,5375,5384,5427,4908,5611,5612,4966,4906,4970,4975,4976,4961,4927,4928] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1179,529,534,1180,538,976,952,995,467,472,476,482,474,543,943,495,496,544,942,975] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2400,2406,2436,2437,7540,7541,7542,2455,7507,7510,7505,2410,2618,2619,7807,7804,7517,7518,7535,7536,7570,8672,8673,2386,2387,2388,7577,7579,7209,7576,2398,2385,2397,2399,2401,2405,7803,7601] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3777,3639,3868,3869,3907,3918,4060,4061,4057,4058,4059,3837,3636,3465] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [8068,8489,8490,8071,8300,7897,8301,8339,8209,8491,8269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2137,2139,2141,689,1111,1112,688,690] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5121,5120,5122,6569,6571,6573,5543,5544] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        