
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
        
        load "data/7MN6.pdb", protein
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
 
        load "data/7MN6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7877,7880,7881,7882,7650,7670,7674,7675,7676,7699,6655,6667,6669,6742,7654,1882,6741,8088,8089,8091,6658,6642,7883,7703,7697,8101,8102,8114,1872,6636,4644,4633,4638,4642,4643,4647,4648,4884,4652,4660,4661,4662,5275,4894,4636,4628,4819,8103,1884,4877,1870,1864,1868,6584,6585] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3048,3053,3052,3054,34,35,36,39,9408,9435,46,9395,9396,9397,78,9462,9461,24,155,157,26,27,32,29,30,31,280,47,284,44,45,63,281,186,187,196,148,149,150,117,76,77,71,67,68,70,73,115,118,297,119,2817,3030,2818,3036,3041,3047,3043,3045,2542,2541,9443,2383,2387,2560,9442,2339,2342,2381,2384,2385,2386,2561,9440,2346] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1785,6397,6411,6398,6573,6710,1783,1806,1808,6719,6720,6721,1805,1820,1826,6390,6392,6322,6388,6394,6703,1836,1859,6324,1832,1835] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [7164,6949,6950,6984,6750,7167,6806,7166,7158,7437,7438,7439,7440,7161,6975,6933,6784,6759,6754,6790,6798,6738,6747,6748,6753,7669,7655,7667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6582,4865,4866,4631,4858,4622,4624,4882,4879,5070,5054,6280,5053,5055,5045,6329,6295,6332,6350,6294,6286,6290,6274,6352,6590,6593,6594,6599,6600] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2637,2639,2656,9418,2608,2387,2395,9432,2376,2380,2384,2385,2386,2388,9431,2575,2576,9435,9416,9433,2422,2407,2410,2392] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2138,2140,2516,2526,3025,3026,2345,2349,2351,2350,2356,2135,2136,2147,2515,2802,2509,2510,2327,2329,2322,2330,2511,2323,2324,2326] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [7684,7688,7686,7673,7006,7455,7668,7190,7026,7031,7033,7454,7456,7034,7035,7209,7208,6960,6958,6959,6965,7176] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1413,1496,895,1395,1396,1398,1614,1607,896,1608,1609,1611,876,877,593,594,595] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [691,669,9296,9297,715,717,680,681,682,693,9311,9312,731,9282,9278,9281,9283,951,953,968,979,1168] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5110,5445,5429,5190,5425,5173,5174] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [562,865,864,470,548,846,724,706,705] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3388,3389,3698,3703,3707,3708,3665,3688,3689,3690,3693,3694,3660,3716,3659,3390,3654] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5865,5868,5871,5874,5611,5875,5920,5921,5922,5637,5876,5939] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1582,6174,6175,6182,6183,6184,6181,1459,1466,1470,1532,1581,1468,1562] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [462,646,651,662,463,656,668,48,49,658,660,38] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        