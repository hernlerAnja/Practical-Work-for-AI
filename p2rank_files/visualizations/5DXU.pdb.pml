
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
        
        load "data/5DXU.pdb", protein
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
 
        load "data/5DXU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5856,5259,5260,5866,5954,5648,5869,5872,5873,5270,5269,5271,5268,4226,4233,4512,4232,4513,5709,5710,5711,4267,5682,5683,5650,5652,5653,5679,4588,4589,4542,4544,4546,5674,5849] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [6496,6512,6514,6430,6515,5391,5459,5458,6520,6521,6522,5404,5405,6523,5969,5961,5963,5966,5967,5994,6497,6431,6001,6009,6030,6403,5992,5861,5858,5860,5863,6516,5646,6517,5561,5562,5390,5957,5389,5437,5580,5388,5582,5945,5946,5950] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2639,4080,4061,4063,4076,4079,4077,4052,4099,4100,4078,4384,4387,4389,4393,4394,4346,4347,4348,4309,4349,4330,4331,4332,4340,4353,4354,4089,4023,4019,4017,4027,4378,4362,2629,2851,2627,2628,2875,4307] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2901,2929,2931,957,2854,2841,2844,2811,3102,2947,2902,960,4352,4361,4363,2818,2848,3110,3112,943,944,945,3120,4681,3100] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [7810,7811,7842,7843,7816,7814,7817,4653,4654,4655,4647,4643,3140,2980,4660,4661,2972,2978,3128,3127,2985,2987,2988,2789,7781,7782,7819] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [4835,5242,4502,4799,4801,1185,2016,2018,1222,4800,2017,1721,1722,1233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [6302,6639,6657,6640,6642,6688,6376,6506,6320,6377,6378,6423,6507] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4323,4325,3087,7070,3000,3071,2977,2980,4660,4661,2972,2975,2978,2985,2988,3090,3094,3096,2786,2789,4322,3082] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4871,4873,4891,4892,4839,4900,4901,4924,4605,842,4578,4606,5893,845,4601,856,834,5895,5898,5901,5925,5926] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1833,5735,5851,5852,1272,1274,5773,1829,1860,1862,1865,5834,5831,5810,5811,5828,1273,1281,5742,5708] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [6330,6332,7342,7343,7305,6606,6607,6608,7307,7344,7345,6614,6619,7203,7205,7197,7302,7303,7306] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4780,4790,4792,4796,1123,2042,1182,4806,4783,4802,1087,1088,4778,1215,4784,1113,1111] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [866,867,7877,897,7876,7878,7875,3132,894,896,7904,4627,4673,3133,931,893,3134] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2970,2982,2988,2771,2777,2963,3174,3128,3170,7809,8587] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1887,1889,1858,1881,1885,5811,1877,1879,1860,1803,1856,5808,1289,1296,1273,1270,1802,1804] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1168,1634,1539,1650,1631,1166,1158,1195,1756,1758,1663,1664,1511,1515,1753,1764] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4895,5937,4917,5232,5554,5209,5306,5205,4887] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6807,6809,7385,7386,6695,6729,6766,7384,7421,6756,7424,6730,6698,6667,6669] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        