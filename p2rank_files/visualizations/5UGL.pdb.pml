
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
        
        load "data/5UGL.pdb", protein
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
 
        load "data/5UGL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [381,383,384,1262,1260,385,493,514,515,516,1255,1256,549,629,745,746,548,1275,481,483,482,1276,1277,1274,192,200,209,210,204,205,207,1329,484,486,211,213,214,203,230,1178,173,1177,750,768,771,229,369,174,176,177,179,180,182,184,191,1162,1254,1259,1261,1148,1126,1163,1284,1283,1285,2561,1151,1153,2577,2349,1345,2615,1325,1324,2589,1346,796,789,799] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3448,3450,3452,2324,2667,3442,3334,2950,2943,2947,2534,2535,2532,2379,2381,2380,2536,2325,2328,2342,2330,2335,3440,2780,3363,3364,2901,2699,2700,3441,2919,2922,2939,2940,2896,2897,2520,2327] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2343,3452,2358,2360,2667,3446,3465,3442,3466,3616,3476,3467,3468,3474,3633,3611,3612,3632,426,3337,3338,3312,3475,3348,3349,2355,2635,2637,2634,2342,2362,2365,2364,2335,2351,2353,2535,2381,2536,2665,2666,2632,2633,198,199,2346,208,2361,438] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3567,3568,3588,3731,3696,3726,3608,3624,3302,3547,3549,3550,3728,3751,3757,3727,3739,3738,3625,3615,3616,3476,3489,3490,3587,3605] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2359,2361,453,3613,486,209,210,206,207,208,463,2614,1327,1325,1326,2604,1324,2589,2349,1285,3614,2357,2607,2637] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3245,3781,3783,4342,4324,4326,3217,4331,4338,4327,3244,3774,3778,3784,3789,3791,3790] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4251,4252,4253,3822,3825,4254,4256,4095,3958,4100,3960] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        