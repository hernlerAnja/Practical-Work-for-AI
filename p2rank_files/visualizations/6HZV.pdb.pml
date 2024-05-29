
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
        
        load "data/6HZV.pdb", protein
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
 
        load "data/6HZV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2273,2274,2846,2853,2857,2860,711,715,750,697,702,703,704,708,1105,1104,2838,2835,2829,2831,2833,689,686,112,121,127,125,122,176,1074,1083,1088,1188,1180,1181,1182,1185,1186,1187,1189,128,129,130,132,178,139,140,108,680,682,124,177,668,303,317,663,664,441,472,474,1195,473,778,779,780,2892,738,740,744,745,2889,2927,2928,2929,743,716,133,3223,3237,2864,3254,3329,3330,3253,3344,2817,2865,792,2270,2276,2261,2269,2271,2275,2257,2289,2277,2279,2281,2282,2288,2327,2466,2326,2325,2812,2452,2813,3331,3334,2590,3335,3338,2468,2621,2622,3337] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4446,4447,4448,4449,4453,4454,4455,4456,4457,5036,5037,5040,5043,5033,4452,3889,5026,5425,5044,5045,5411,5442,4459,4460,4467,5522,5523,5525,3888,3899,5077,5080,5067,4992,4993,5019,4871,4872,4873,5441,5517,4503,4505,5518,5519,4800,4646,4768,4451,4630,4504,5009,5011,5013,5018,4997,5015] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [7162,7576,7577,7152,7158,7161,6658,7136,6784,6603,6605,6606,7154,6657,6659,7183,7187,7180,6601,6602,6609,6610,6613,6614,6607,6608,7188,7546,7658,7560,7660,6621,6620,7652,6922,7653,7654,7657,7215,7212,7140,7026,7135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [8230,8196,8222,8273,8278,8410,8412,8413,7989,7990,7992,8229,8022,8141,8142,8158,8159,7827,8279,8280,7824] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5654,5633,5641,7012,7407,7409,5651,5609,5583,5584,5610,7010,7011,6998,6999,7000,7619,7001,7620,7621,7622,7623,5607,5622,5643,5645,5649,7408,7383,7386,7612,7352,5600,5601,7377] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [5977,5980,5981,6001,5964,5965,5979,3567,5695,6014,6002,6015,5998,6009,5414,5415,5416,5063,5065,5923,5412,5107,5963,5966,5675,5709,5708,5676] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3808,3820,3821,3777,3804,3807,3783,3771,3770,3499,3515,3815,3514,3226,3228,2880,2881,3729,3772,3769,2919,3481,3482] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4926,4958,4959,4784,8505,8532,8533,4775,4785,4747,8472,8475,8478,8483,4334,4808,4810,8396,8397,4342,4927,4942,4944] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1666,1669,1670,1677,1639,1645,1648,1649,1683,1361,1682,1377,731,732,1376,1079,1077,1343,1633,1631,1634,1588,1591] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4708,4714,4748,7948,4680,4681,4717,7425,7427,8500,7452,7453,7454,7947,7423,4747,8479,8482,7959,8484,8488,8491,7944,7946] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [8098,8101,7242,8099,8100,7547,7548,8058,7202,7203,7549,7550,8106,8136,8137,8112,7843,7844,7810,7551,7811,8144,8150] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3495,3845,3976,3520,3660,4158,4159,4160,3846,3977,3663,4015] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [264,265,267,255,3269,3299,2704,3316,2725,2821,263] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1996,1708,1994,1522,1525,1382,1812,1995,1555] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        