
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
        
        load "data/4YMJ.pdb", protein
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
 
        load "data/4YMJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3372,3373,3374,3376,3384,3382,3381,3388,3389,3390,3392,3397,3391,2747,2752,3360,3366,3367,3368,3369,2753,2754,3386,3387,3383,3385,3363,3226,3401,3398,3299,2891,2873,2379,2521,2885,2332,2889,2330,2333,2887,3300,2919,2922,2926,2929,2953,2954,2894,2918,2902,3395,3396,2329,2335,3438,3428,3170,2702,3209,3211,2863,2864,2865,2533,2866,2867,2868,2869,2535,2537,2356,2360,2361,2378,2380,2363,2364,2649,2671,2679,2646,2678] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1200,1203,1204,1214,1216,1218,362,471,1198,1199,1217,1197,161,208,209,159,715,717,162,1040,1041,1042,360,358,575,692,693,694,696,695,697,576,577,346,701,713,502,525,1130,1131,722,746,747,730,1057,1194,1190,1191,1001,719,570,1207,1059,1209,1212,1213,1215,1219,1220,1221,1222,164,1237,163,157,158,1102,754,757,750] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [562,563,909,911,2150,2151,2154,962,2094,2096,2126,2130,2132,553,561,931,907,2147,2148,2149] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3993,4004,4005,3859,3998,3984,4146,4148,3958,3744,3541,3714,3711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2850,2869,2537,2549,2550,2360,2610,2649,2608,2609,2678,2588,2614,2615,2586,2589,3372,3373,3374,3376,3388,3389] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3102,3103,3076,3079,3081,3104,3105,3109,4311,4313,3083,4337,4339,4308,4329,4330,4331,4332,4333,4276,4278,2739,2740,2730] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1807,1964,1966,1350,1813,1818,1553,1810,1811,1520,1523,1772,1664,1798] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [634,640,641,663,445,447,619,667,625,664,454,457,621,54,631,633,418] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [219,220,367,654,671,80,124,655,352] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2251,2252,2295,2825,2826,2843,2371,2390,2391,2527,2542] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        