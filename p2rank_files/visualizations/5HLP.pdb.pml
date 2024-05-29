
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
        
        load "data/5HLP.pdb", protein
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
 
        load "data/5HLP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1196,1195,752,745,725,720,1281,1282,1285,1286,1288,462,1289,1279,1277,234,235,253,364,365,252,349,198,202,736,738,199,204,1179,1168,771,1167] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3867,3868,3392,3017,3390,3393,3397,2920,3951,3237,3949,3238,2866,2870,2902,3032,3034,3959,3960,3957,3958,3130,2903,3954,3953,2878,2872,2875,2921,3417,3414,3408,3410,3839,3851,3443] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [632,634,36,23,22,357,153,155,651,652,260,262,264,375,697,263,178,356] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2906,1542,2905,1393,1388,1394,1392,1530,1527,1528,2886,2907,1398,1387,2890,1518,1519,2930,1511,1965,2862,2881,2914,2913,3043,2932] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [210,1421,1138,1139,1155,1156,1432,1427,1179,1168,1167,1287,1288,232,234,235,1302,1303,1309] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3319,3320,3042,3043,2929,2931,2932,3301,3369,2695,2846,2694,3025,2821,2823,2928,2930,2927] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [237,239,238,245,246,4208,193,218,222,4220,4071,4076,4070,4181,4206,214,4189,211,4060,4065,4066] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3479,3480,3889,3886,3888,3598,3600,3602,3638,3515,3517,3601,3568,3575] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5206,5160,5182,3214,3201,3210,3209,3215,5164,3207,3195] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        