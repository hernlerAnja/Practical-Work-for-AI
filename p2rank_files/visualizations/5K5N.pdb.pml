
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
        
        load "data/5K5N.pdb", protein
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
 
        load "data/5K5N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1123,1110,1134,1122,722,1231,1232,1233,1237,4368,737,1124,747,748,1092,1093,1094,1238,1240,1261,1239,198,1111,323,338,669,671,672,434,432,433,181,171,172,178,176,226,227,708,709,1151,696,1150,509,689,703,749,750,205,207,209,339,401,656,184,190,1387] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3898,3901,3902,3903,3904,3895,3896,3897,3815,2820,3360,3351,3353,3355,2967,3045,3335,3336,3340,3787,3798,3786,3386,3775,3774,3814,3373,3374,3367,3412,3788,2869,2870,2871,2982,2980,2828,2853,2822,2825,2816,2817,2983,2851,1710] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4037,4040,3756,3757,4036,3775,4045,3758,3774,3787,3798,3925,3901,3902,3904,4041,2842,2849,2851,2828,2834,2853,1365] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [236,237,238,348,349,23,648,591,572,573,36,151,232,233,235,234,331,127,129,152,22] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1406,1408,1419,1388,1386,1387,1697,1399,1404,1405,1407,1409,1623,1667,1666,1421,1392,1396,736,738,1127,1126,1111,4066,4067] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3458,3460,3548,3522,3546,3422,3423,3447,3547,3583,3585,3549,3835,3836,3833] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1356,1466,1351,3252,3253,3254,1483,2831,2832,2863,2855,2864,3250,3246,1474,2812,2882,2836,3295,1458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4324,3791,4281,3404,3402,4044,4046,4050,4062,4052,4053,4054,4063,4064,4065,4066,4067,4078,1408,1409] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2771,2773,2975,3217,3216,2661,2796,2794,3312,2993,3235,3234,2876,2877,2878,2879,2795,2881,2882,2880] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [795,759,758,794,796,881,1171,921,1194,1191,884,883,885,754,1158,1169,1172] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [630,632,4009,220,238,349,187,211,202] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2444,2437,2439,2468,2470,2637,2630,2632,2352,2377,2449,2453,2461,2333] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        