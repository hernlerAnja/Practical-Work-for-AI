
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
        
        load "data/7A5B.pdb", protein
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
 
        load "data/7A5B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1264,1265,1266,1283,1439,1440,1306,1307,1256,1541,1544,1551,1554,1555,1556,1282,2762,2763,499,279,523,525,526,527,283,1432,528,531,286,438,556,1418,1419,277,273,278,263,270,1520,1537,3246,1539,1534,1525,1531,1560,3252,3255,3256,3260,3273,3264,3269,3258,2856,2836,2858,2859,1530,2769,2780,2782,1564] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4078,4187,4188,4192,4193,4195,4066,4067,3215,3216,3217,3340,3066,3068,3088,3036,3693,3637,3638,3639,3640,3641,3642,3087,3200,3495,4094,4095,4185,4186,3494,3666,3660,3664,3662,3646,3033,3034,3035,3671,3690,3720,3721,3663,3670] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [486,3282,481,485,480,4331,4038,4216,4036,4037,3308,3305,3056,3052,479,4078,4194,4195,4055,4066,4067,3217,3062,3064,3066,4068,4071,3049] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [308,309,436,867,869,1412,421,864,865,874,891,437,438,1413,1417,1419,288,289,257,255,251,263,260,870,723,1409,1410,1411,1294,1322,1323,899,918,1416,1306,921] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3301,514,3306,3309,3331,3329,4315,4214,4220,4030,515,516,4215,4262,4227,4228,4451,4254,4255,3297,3298,3300,513,536,4276,547,548,546,4277,4279,4280,4281,4282,572] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3242,3053,3057,77,79,2845,2846,2847,2848,3259,501,500,3051,67,69,68,463,461,65] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4299,4301,817,818,4338,4374,4660,819,4340,506,509,470,472,816,789,814,4296,4297,474,481,4330,4331,4332,4343,4336,4349,4320,4351] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [540,4300,4288,769,771,4302,4307,4308,535,536,537,563,770,599,4292,4267,4278,837] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4351,4352,4353,4611,4330,4331,4343,4336,4349,4348,4350,4069,4071,3710,4566,4054,4070,4363,4364,4340] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1574,1576,1835,1299,938,940,1836,1790,1281,1587,1298,1588] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        