
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
        
        load "data/3Q96.pdb", protein
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
 
        load "data/3Q96.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [467,479,1131,2533,478,1115,2499,2500,1080,624,625,629,1083,1082,650,2501,226,227,223,632,651,653,230,509,511,512,2488,2496,2493,2494,2513,212,198,492,236,472,473,480,889,2233,2241,891,487,488,868,869,870,3097,3099,3100,1114,1091,3125,3131,1090,2645,3148,2646,3132,2508,2509,2885,2886,2887,2909,3121,2858,2888,1092,2908,2879,2247,2650,2653,1104,1108,871,2647,837,860,2244,2248,3106,2859,2674,3108] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [636,116,117,159,638,118,160,119,1173,1174,620,242,615,616,601,257,254,255,598,1061,1034,1156,669,670,1038,1154,1155,698,425,504,503,1157,1159,1161,424,1144,1146,1153,399,1147,1166,644,658,660,1063,643,663,696,637,665,695] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3176,3178,3195,3170,3196,2664,2679,3080,3082,2131,2132,2659,2658,2180,2181,2525,2636,2637,3164,2277,2420,3158,3161,3165,2522,2524,2263,2641,2275,2657,2661,2445,2446,2622,2417] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [392,415,416,417,396,399,1147,1148,1150,425,495,1135,1141,1142,423,1144,452,969,974,980,982,987,932,931,986,988] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2948,3003,3005,3158,3159,3161,2999,3165,3167,2991,2420,3151,3152,2522,2445,2446,2516,2473,2949,2415,2413,2436,2437,2438,2986,2417] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [363,364,367,369,271,273,274,335,600,256,258,253,1168,142,143,1173,360,362,398,1166] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [71,72,73,74,576,572,265,266,89,594,248,552,55,75,56] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3023,3024,3040,3041,3256,3181,3184,3191,3168,3248,3251,3212,3215,3247] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [210,4010,209,2929,3984,3987,215,217,219,4038,190,3988,2964,201,67,188,195,62,4008] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        