
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
        
        load "data/6PME.pdb", protein
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
 
        load "data/6PME.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [307,675,199,201,1173,200,295,671,672,673,1105,702,681,703,547,699,1178,1179,1181,676,677,471,546,1171,1172,1174,470,1077,1104,729,736,1106,1185,1193,1194,1197,1202,1203,1205,1206,1210,1182,309,441,1246,143,144,150,739,764,149,145,147,148,693,695,1234,1235,1237,1236] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4567,4569,5592,5593,5596,5602,4671,4568,5057,5075,4515,4511,4512,4513,4518,4516,5071,5078,5633,5634,5635,5636,5051,5053,4683,5047,5048,5049,4685,4687,4816,4817,5571,5572,5476,5504,5505,4923,5079,5575,5581,5583,5584,5605,5608,5609,5490,5123,5126,5116,5119,5646,5644,5577,5585] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2928,2372,2374,2373,2316,2317,2322,2318,2320,2898,2901,2892,2894,2323,3428,3394,3296,3297,3364,3268,2902,3401,3385,3388,3390,3396,2931,2935,2938,2961,2962,3427,2872,2874,2875,2876,3376,2497,2498,2499,2870,2871,2873,2485,2880,2745,3367,3373] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2384,2385,5416,2833,2834,5414,2519,2520,2521,2522,2523,2506,2850,2491,2382,2363,2504,2505,4836,4838,2364,2365] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4838,5410,5411,5413,4839,5420,5578,5580,5590,5429,5591,5431,4869,5378,5412,4814,5377,5425] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [329,331,332,333,634,635,3206,190,192,186,191,193,2659,2661,2685,3208,107,108,316,209,211,212,315,301] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4774,4777,4545,4547,4746,4779,4687,4784,4816,5035,4699,4700,4749,4543,4544,4546,4548,4549,5595,5585] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5941,6182,5971,6375,6085,6088,6230,6231,6221,6208,6217,6225,6373,6376,5768] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4140,4142,3992,3975,3984,3988,3852,3945,3948,3949,3951,3560,3705,3706,3950,3708,3738] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [373,372,398,401,175,176,178,180,323,310,311,440,1196,409,403,406,324] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1531,1675,1678,1772,1794,1798,1774,1963,1965,1528,1959,1821,1815,1820,1966,1807] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2662,3211,3212,3217,3204,3372,2692,3205,3170,3203,3202,3382,3383,3223,3221] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2413,2426,2427,2417,2217,2219,2200,2201,2773,2775,2774,2464,2465,2479] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1026,1011,1020,1021,1030,1032,1191,1192,463,1181,1012,493,1014,977,979] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2501,2514,2348,2531,2349,2351,3384,2639,3379,2586,2587,2593,2596,2592,2588,2591,2562,2563,3387] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4460,4474,4475,4476,4579,4692,4677,5026,5027,5010,5011,4427,4429] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [914,920,940,2091,2092,2122,2125,518,530,532,512,513,520,521] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1353,1418,1423,1751,1752,1294,1296,1316,1338,1420,1387] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        