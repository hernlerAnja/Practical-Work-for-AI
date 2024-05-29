
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
        
        load "data/6SRH.pdb", protein
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
 
        load "data/6SRH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1538,2300,2537,519,2538,2680,2681,2297,2322,2268,1477,1478,2298,2532,2535,2237,280,255,282,284,285,251,279,630,632,515,517,511,1334,322,324,323,217,218,220,219,784,2525,2531,1056,2358,1055,1467,1473,2360,1420,1330,1370,1371,489,1402,1404,1417,1382,231,2269,2678,2700,2725,2720,2721] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [7042,4997,5103,5104,5105,4983,4984,4985,4986,5060,5061,5063,5062,5298,5064,5065,5066,5292,5296,6069,7043,7045,7561,7562,7563,7582,6982,7262,7263,7266,7269,7014,7067,7607,5300,5547,5548,6073,7602,7603,5040,5383,7560,5409,5411,5413,7101,6216,6217,6212,7100,7256,5797,6109,6110,6121,5270,6156,6270,6159,6206,6174,6176,6141,6143,6145] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1892,1894,4701,974,8702,1844,1830,1831,1832,988,990,2469,2470,1769,2471,1750,1767,1771,1949,2002,2037,7810,1935,1943,8699,8700,8701,8703,2036,2035,1951,972,1003,982,987,944,1937,1936,4638,7774,8746,8747,8745,8833,8834,8682,8680,8681,8683,8684,8685,7627,8679,7584,7585,7791,4771,7809,7793] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [7335,6959,6955,6958,7307,7595,6954,7760,7761,7700,7704,8027,7493,7596,7602,7837,7838,7494,7963,7965,7809,7758,7807,7871,7872,7706,8683,7584,7558,7530] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [7660,7661,6248,6250,6252,8501,7662,8502,7043,7044,7045,7046,7047,5063,5065,7686,7608,6982,7012,7014,7607,8639,8644,8653,8656,5039,5040,7621,7033,8252] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2210,2213,2214,2882,3078,2992,3080,2209,2236,2713,2714,2720,2821,2825,2827,2676,2698,2701,2702,2879,2881,2958,2993,3807,2231,2959,3165] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2269,259,3754,2725,2809,2726,2807,3353,3640,2781,2782,2783,3624,3625,3626,3748,3779,3761,3762,2300,2301,2302,2267,2268,2288,1509,2299,1511,1513] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4613,3142,3052,3054,3099,3105,3050,3140,3095,3135,3193,4591,4608,4611,4567,3097,2003,3107,4636,4637,4612,1982,1983,1985,3103,4621,4625,4631] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6736,6737,6738,6740,7980,7982,7983,7984,7937,7939,7938,8055,8003,8005,9420,9444,6756,9484,9488,9461,9464,9465,9466,9474,8006,7936] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [983,968,985,2404,2405,2406,1017,1069,1070,1384,1385,1387,1425,1426] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [474,1102,405,406,407,408,409,410,411,412,1352,1353,1119,124] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5774,5748,6164,6165,7135,7137,5810,5809,6124,6126,5731] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6050,6051,6092,4887,4888,4890,6054,4886,6052,4921,5879,5882,5880] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2548,785,2505,2522,2531,1052,1053,1056,1371,1023] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        