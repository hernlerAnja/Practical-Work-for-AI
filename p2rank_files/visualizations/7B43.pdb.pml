
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
        
        load "data/7B43.pdb", protein
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
 
        load "data/7B43.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3313,2418,2419,2420,2422,2423,2950,2944,2417,2390,2941,2976,2977,2387,2388,2932,2933,2975,2410,3447,3449,3451,3452,2576,2892,2918,3312,3314,2916,2940,2439,2440,2560,2385,2909,2911,2924,3423,3425,2802,2574] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [259,785,782,250,258,260,262,263,791,225,1307,774,1166,638,738,759,222,757,752,765,1280,1281,1282,639,773,781,280,411,279,397,733,224,257,1305,413,1286,1303,1279] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3227,3229,3231,3235,3232,3236,3219,3222,461,462,473,2719,2754,470,472,471,2756,3210,3257,2700,2718,474,475,476,3400,3403,2726,3408,3410,3411,2722,2752,2693,3434,3435] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2624,2625,2626,2633,2635,2636,2623,556,1083,1077,1079,565,1075,1080,1063,1104,555,534,537,554,1290,1291,2637,2638,2639,2640,2644,2665,2659] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1258,1282,635,643,734,1264,1265,562,650,652] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        