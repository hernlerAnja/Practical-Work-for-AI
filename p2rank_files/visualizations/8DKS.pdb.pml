
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
        
        load "data/8DKS.pdb", protein
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
 
        load "data/8DKS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [878,890,3384,3390,3391,3392,3393,1207,925,927,951,1201,921,926,2808,2809,914,895,2927,2954,891,894,1918,1919,1921,1911,1912,1913,2573,2574,2577,2578,774,1213,2777,871,873,874,1209,1211,1212,1199,2807,2789,2801,2805,2806,3430,2758,2755,3429,2948,2932,2955,2928,2933,2774,3415,2761,2770,1202,2759,2762] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3451,2968,3367,3368,2972,3343,3344,3351,2464,2973,3044,2997,3006,2800,3443,2608,2453,2450,2452,2457,2458,2459,2461,2443,2505,2471,2504,2506,2606,2916,2918,2607,2917,2914,2925,2915,2939,2454,2456,2592,2527,2944,2964,2965,2952,2799,2945,2946,2798] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [770,776,777,1172,1171,784,785,1147,1148,1155,1248,1255,1256,610,611,612,729,1247,808,809,818,856,756,757,737,764,226,227,228,229,231,279,280,281,728,381,382,383,233,236,238,239,245,246,751,183,367,726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2255,2257,2259,2216,2218,2219,2221,2824,2573,2547,2548,2549,2554,2555,2571,2572,1952,1953,2209,2210,2215,1933,1934,1917,2558,916,918,2825,914,902,911,913,943,944,945,974,2822,2821,2231,2250,2254,2256,2274,2276,2586] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2768,3192,1197,1193,1195,1196,2767,3213,3251,4343,4367,3218,3250,3189,765,766] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [247,249,250,262,263,252,471,472,1120,1137,1367,1278,1360,1361,1272,1277,1252,1253,1255] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2776,2784,3191,3193,3172,3173,4402,2768,3192,1193,2785,2767,764,765,766,774,2775,2777] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3465,3468,3473,3474,3313,3316,2659,2476,2477,2475,3447,3448,3464,3449,3452,2486] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        