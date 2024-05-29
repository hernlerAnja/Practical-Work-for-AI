
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
        
        load "data/5OY4.pdb", protein
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
 
        load "data/5OY4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4019,4020,4101,3565,3591,3991,4100,3367,3556,3144,2997,3558,4106,4107,4108,4102,4103,3540,3159,3161,3260,3292,3293,4003,4109,3030,3048,3029,3046,3047,2993,2999,3572] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [763,775,196,198,759,761,768,345,748,194,200,247,248,249,358,743,229,1194,1195,1206,1304,1309,1303,1305,1306,568,744,794,1223,1222,1312,230,231,1310,1311,361,362,822] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [5148,5462,5440,5439,5452,5143,2409,2411,5117,5144,5145,5146,5147,5482,2677,2681,2682,2380,2410,2364,5164,2435,2679,2433,2436,2437] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [5207,5208,5209,5210,5232,5234,5471,5163,5175,5179,5235,5479,5480,5481,5476,5478,5482,2663,2661,2662,5474,2373,2367,2344,2345,2346,2347,2349,2641,2318] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3059,3170,2818,2831,3431,3432,3449,2804,3057,3168,3169,3518,3450,2973,3058,2948,2950,3055,3151,2817] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4063,4032,4038,4040,4060,3754,4041,3663,3665,5300,5284,3788,3749,3750,3751,3752,3753,3790,3628,3627,4027] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [953,955,956,957,1241,1243,1244,1263,952,954,866,868,991,993,1230,831,830,2501] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [258,259,260,369,371,370,720,632,633,32,651,173,172,174,353,149,151,18,19,352] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1183,1312,230,1311,1325,1326,228,225,1206,1182,1166,1333,1328,1453] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3489,3490,3437,3438,3440,3442,3206,3441,3439,3420,3443] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        