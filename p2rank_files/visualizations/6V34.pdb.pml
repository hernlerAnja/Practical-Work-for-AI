
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
        
        load "data/6V34.pdb", protein
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
 
        load "data/6V34.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3135,3142,3159,3168,2922,3169,2920,2921,2923,2942,2944,2889,2912,1078,1080,628,1079,240,631,1085,1086,1089,650,1087,865,1112,866,1102,1111,3136,3137,3143,3146,2685,887,864,832,853,854,855,2279,2282,2707,3162,462,474,2563,2564,2681,473,475,504,507,624,2527,2530,2531,2532,230,231,233,1127,1128,487,483,236,237,2264,2278,468,2272,2275,467,482,885,2561,3185,2539] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2451,2556,3189,3195,3198,3201,3210,3211,3212,3214,3216,2476,2477,2210,2211,2212,2302,2306,2309,2310,2654,2657,2308,2167,2171,2175,3202,3207,3208,3209,3217,2294,2671,2676,2293,2672,2555,3114,3115,3117,3213,3215,2721,2725,3119,2714,2692,2694,2160,2162,2693,3088,2726,3091,3219,3220,2165,2164,2159,2700,2696,2699] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1154,1155,1156,1157,1159,1034,1150,1153,1152,117,120,169,168,170,1170,498,614,619,639,499,252,637,250,251,1141,1031,267,268,394,264,1144,266,1171,419,600,615,664,668,669,642,643,1059,1061,1062,636,657] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [928,966,971,977,1148,979,929,410,411,389,391,394,1145,418,419,420,1131,1135,1138,1139,1141,983,985,490,1132,496] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2451,3189,3195,3196,3198,3042,3040,2985,2449,2475,2477,2446,2467,2468,2444,2448,3023,2469,3034,3036,3202,3205,2450,3028,2504,2547,2548] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [73,75,258,593,71,72,89,547,548,53,559,571,275,43,55] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2628,2604,2650,2131,2317,2113,2114,2117,2605,2095,2097] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [226,2965,3943,2966,3911,3913,3914,3915,3940,225,227,228,206,219,220,229,205,198,199,200,203,204,211,62,63,64,3973] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        