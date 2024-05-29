
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
        
        load "data/2IFG.pdb", protein
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
 
        load "data/2IFG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5922,5920,5085,5077,5078,5082,6613,6316,6317,5912,5931,5932,4667,4668,5076,4897,4655,4644,4652,4639,4640,5894,6259,4658,6276,6277,6278,6288,6299,6304,6302,5893,5907,5908,6130,6134,4657,4675,5089,4677,5280,4916,4918,4886,4933,5058,6128,6129,6283,6976,6979,5921,6967,6972,6975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1984,1992,1995,1997,1998,2006,2008,2415,2007,2226,2416,2258,1978,1980,2429,2418,2421,2422,2423,2237,2017,2620,2015,2635,5458,6986,6987,6780,6988,6779,6766,6765,6770,5430,5441,5444,5446,5459,2424,2425,6784,6789,5454,5755,1996,5401,6752,6992,6751,5419,2398,6121,6118,6109,6114,6117] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [6070,6568,5965,6336,5966,6067,6069,6549,5317,5318,6571,6573,5316,6060,6056,6038,6334,5558,6057,5108,5109,5115,5549] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [5715,2654,2655,2657,2658,2659,2449,6922,6925,6918,6911,6914,6915,6416,2448,5474,5476,5478,6406,6407,2455,5472,5473,6823,6824,6927,5712,5477,5711,5713,5714] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [3105,2893,2918,2917,2938,3132,3148,2803,2742,2868,2823,2825,2858,3133,3075,3077,3058,3056,3057,3065,3066,2832,2834,2821,3017,3050,3060,3061,2802,3018,2990,2991,2871,2873,2872] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [3646,3645,3701,3656,3658,3659,3661,3444,3618,3456,3457,4468,4471,3418,3447,3421,4460,3416,4465,3612,4459,4464,3881,4463] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [213,397,233,258,257,396,390,143,165,278,82,161,172,174,417,398,399,234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [986,951,753,756,758,958,949,952,985,759,1800,1805,788,796,797,784,785,787,998,1001,1041,996,983,1808,1811,1222,1221] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [4862,4857,4822,4824,5113,4907,5553,5554,5124,5546,5552,5555,4882,5561,5155,4819,4847] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [3105,2917,3132,3103,3269,3273,3275,3133,3077,3058,3059,3056,3262,3062,3050,3060] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4907,5553,5554,5560,5123,5124,5546,4896,4881,4882,5561,4862,4857,4905,5087,5090,4893,6086,6087,5080,5950,5072] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [417,613,398,426,427,473,615,399,400,402,234,446,445,233,257,396,390] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [2453,6412,2162,2164,2464,2202,2247,2197] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [6949,6956,6961,6962,6963,6788,6940,6366,6622,6605] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6820,6821,6824,6928,5709,6901,5630,5681,6904,5698,5726,5702,5704,5961,6047,6046] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3625,3758,3624,3626,3627,3629,3630,3592,3593,3595,3637,3631,3756,3754,3755,3818,3821,3811,3812,3817,3825,3571,3838] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [5747,5763,6105,6103,6104,5508,5764,6091,5519,5524,6082] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [134,135,26,24,31,32,1,5,83,197,189,164,155] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5635,6503,6493,6499,6504,5631,6047,6046,6901,5630,5647,5645] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1012,1158,1161,1096,1094,1095,1102,1103,1151,1152,1165,976,977,967,969,933,911,935,1178] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [744,734,735,745,749,928,733,1792,1793,541,543] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [2686,2691,2795,2791,2760,2822,2825,2824,2794] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        