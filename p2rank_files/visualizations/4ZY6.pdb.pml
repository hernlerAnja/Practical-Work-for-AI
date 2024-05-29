
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
        
        load "data/4ZY6.pdb", protein
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
 
        load "data/4ZY6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2722,3395,3397,3398,3425,3426,3427,3429,2927,2794,2799,2796,2806,2932,3424,2720,2715,2716,2718,2686,2452,2453,2454,2562,2928,2547,2939,2563,2564,3396,3401,3403,3327,2953,2968,2950,3326,2410,2404,2405,2406,2408,2944,2416,2411,2413,2975,3405,3411,3234,3407,3408,3410,3413,3414,3415,2710,2712,2713,3235,2790,2746,2747,2691,3216] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [706,1090,352,703,679,685,350,351,1063,1091,1160,1159,1165,367,368,369,214,216,258,721,217,697,699,728,259] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [241,3483,368,369,451,452,453,1168,1166,1167,1181,1192,1194,417,419,426,1074,1165,3468] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3474,3475,3476,3431,3434,3470,3460,3566,3568,3862,3863,3864,1326,1654,1655,1656,3840,3561,3586,3587,3536,3501,3535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3473,394,3481,3825,3831,3832,1297,1303,1306,1307,1309,1312,1026,3469,3839,392,420,1185,1191,1193] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [266,267,269,270,186,188,375,378,657,133,374,658,655] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        