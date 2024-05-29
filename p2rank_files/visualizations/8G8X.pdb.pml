
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
        
        load "data/8G8X.pdb", protein
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
 
        load "data/8G8X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1406,1390,1399,1400,161,163,418,381,387,389,391,1086,1244,1251,1391,1252,1268,415,416,1115,143,149,1110,1124,1229,1227,1228,181,142,167,168,170,158,156,157,165,166,385,386,347,1242,457,329,330,1387] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1141,678,1221,124,179,181,1140,130,1110,1228,127,703,694,696,700,314,682,123,125,128,180,727,728,731,711,735,736,763] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3082,3086,3461,3492,3079,2439,2440,2441,2445,2446,3491,3029,3572,3579,2495,2496,2497,2443,3045,3047,3049,3054,3051,2630,3033,2444,3062,3078,3087,3114] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2312,2313,2314,2315,2310,1999,861,863,2011,857,853,856,874,872,2007,2010,2028,4331,3212,3214,4343,4641,4642,4640,4630,4639,3223,4638,4342,4339,4360,3204,3207,3225] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3437,3577,3578,3580,3475,3466,2491,2483,2485,2486,2487,2451,2458,2459,2484,3579,2497,2789,3593,3595,2645,2646,2470,2474,2477,2663,2481,2482,2747,3603] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3989,4035,3103,3104,3782,4071,4074,4082,4088,4089,3783,3102,3462,3463,3464,3465] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1455,1662,1456,1755,1761,1762,1114,1113,1744,1747,1705,1111,751,752,753,1112,1708] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3887,3884,3885,4512,3332,4509,4518,4514,4525,3671,3886,3675,3672,3359,3360,3361] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1416,1417,1467,1402,1526,1431,1504,1855,1856,1465,1500] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1960,1961,1787,2104,2105,2101,2102,2103,1597] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        