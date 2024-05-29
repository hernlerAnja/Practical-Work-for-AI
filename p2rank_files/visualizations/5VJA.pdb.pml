
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
        
        load "data/5VJA.pdb", protein
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
 
        load "data/5VJA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [280,279,145,146,159,161,110,111,112,114,115,118,119,142,122,361,131,107,160,103,104,106,109,691,266,674,278,398,432,298,299,402,390,360,1218,543,1216,1219,1220,1221,1224,1225,1227,1226,1240,1242,391,1249,696,542,544,679,699,1105,1076,1088,1048,722,1104,675,463] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2423,2837,2845,3250,3251,2260,2261,2263,2264,2317,3362,3365,2318,3366,3234,2435,2437,3367,3370,3371,3372,3373,2842,2316,2266,2267,2268,3364,3222,2269,2275,2818,2821,2820,2690,2825,2688,2689,2609,2610] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5516,5515,5517,5355,5372,5539,4430,4429,4457,4433,4442,4444,4445,4590,4591,4752,5530,5531,5533,4711,5532,4610,4609,4710,4680,4681,4712,4714,4716,4472,5354,5540,5371,5664,5395,5384] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [6734,6735,6886,7639,7638,7640,7478,7495,7787,6573,6574,6577,6569,6588,6597,6754,6601,6589,7653,7654,7655,7656,7662,7663,6850,6848,6753,6814,6815,6616,6844,6845,7477] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4986,4353,4355,4356,4368,4370,4516,4517,4518,4897,4358,4345,566,549,550,551,682,684,677,680,681,685,4569,4570,4571,4886,4888,4884,240,568,4894,4895,260,256,258,564,244,238,4883,236,494,497,498,500,488,4515,4528,4529,4523,501] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6659,6660,6661,6662,6673,6514,6499,6500,6502,2644,2645,2646,6715,7021,2695,2697,2826,2827,2828,2830,2822,2823,2696,2634,2395,2415,2417,2712,2710,7028,2714,7029,7031,2397,7017,6713] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5509,4420,4992,4994,4862,4864,4470,4471,4472,4589,5510,5514,5515,4590,4591,5511,5016,4417,5412,4414,4418,4415,4413,5011,4577,4999,5013,5019,5411,5039,5506,5508,5395,5383] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [7147,6721,7128,6998,7133,7153,6558,7535,7632,6615,6616,6561,6614,6559,6564,6733,6734,6735,7629,7633,7634,7639,7518,7637,7638,7640,7145,7150,6562,7126,6996,7534,7173,7506,7631] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2318,2436,2437,2456,3194,3371,3372,3373,2578,3386,3388,3395,2299,2455,2507,2288,2295,2506,2302,2303,2272,2271,2275,2276,2279,2283,2537,2544,2536] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1065,1046,1047,1048,1250,1366,1365,1367,1368,1374,1064,1077,1079,1080,1081,1088,1226,1240,1249,1227,118,119] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2276,3193,3210,3211,3511,3512,3513,3514,3520,3194,3372,3373,3386,3395,3192] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [543,1216,1220,1221,542,675,463,464,674,278,280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2191,2202,2204,6864,6830,6892,2374,6893,7039,6894,6857,7097] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        