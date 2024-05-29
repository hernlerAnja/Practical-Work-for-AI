
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
        
        load "data/5D41.pdb", protein
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
 
        load "data/5D41.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1132,1133,1134,1135,174,179,180,1241,1131,1145,1249,1146,1108,346,168,169,171,172,218,219,730,349,220,347,348,712,713,1160,1161,1240,183,184,187,206,192,203,365,1248,198,200,1109,361,364,351,357,191,766,767,750,758,759,760,762,788,791,732,735] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3154,3155,2560,2561,2556,2557,2558,2563,3628,3629,3548,3549,3519,3533,3150,3179,3123,3146,3147,3131,2761,2754,2758,2762,3637,2564,2566,2569,2568,2572,2573,2595,2609,2607,2608,3101,3636,2581,2585,2588,2745,3118,3100,3497,3522,3523,3524,2576,2574,3702,2580,3683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1189,1190,1200,2283,2690,2693,867,801,802,837,898,899,900,901,902,903,2654,2669,2244,2281,2675,861,2682,2200,2201,2202,2203,2204,2205,2196,2199,862,2448,2245,2248,2672] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [335,2732,723,4749,4750,2311,2312,2313,2314,727,744,745,746,2317,1176,1175,2725,2726,2733,2305,4717,4721,720,4722,333,336,329,3133,3134,4732,2334,3563,3564,4727,4728,4729,4730,3108,3109,3111,3115,2730,2731,328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [613,530,532,534,619,1260,502,505,471,501,496,361,363,364,382,695,697,698,474,365,1248,1271,1243,1250,1253,1269,1272,499,614,713,714,599,604,1240,1259,1242] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4706,627,4715,4718,4714,4675,609,608,567,552,562,564,557,561,592,722,607,1226,597,602,605,606,610,42,2339,4747,4748,4751,2341,2342,2343,4705,4707] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [286,3287,3289,3291,4636,4632,4611,4618,4621,4631,300,3578,3189,3190,3224,3225,3227,3286,3288,3290,3577,3587,4635,4700,4701,3249,3259,3255,3260,3262,4614,4615] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2990,3614,2955,2950,2952,2945,2951,2300,3110,2940,2995,2996,2997,2998,3016,2333,4757,4760,2980,2985,2297,2298,2301,2330,2331] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3650,3669,3461,2890,2916,3465,3644,3646,3458,3462] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1500,1887,1466,1469,1608,1884,1885,1691,1886,1888] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3916,4023,4024,3882,3885,4306,4163,4308] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        