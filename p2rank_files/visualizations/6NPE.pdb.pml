
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
        
        load "data/6NPE.pdb", protein
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
 
        load "data/6NPE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [639,1087,1180,1178,146,309,511,634,635,510,147,177,179,167,168,148,149,1166,1172,1174,1175,200,411,434,435,436,173,172,653,655,659,651,646,667,199,321,323,616,619,221,674,683,684,687,1088,694,715,1163,1167] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2306,2274,2304,2778,2758,2436,2434,2435,2437,2448,2753,2754,2735,2738,2770,2772,2774,3291,3296,3297,3288,3294,2450,3282,3290,2529,2272,2275,2276,2326,2444,2273,2327,2294,2813,2803,2806,2786,2802,3203,3204,2779,2629,2775,3278,3279,2628,2554,2553] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3286,2544,2545,2546,2552,2554,2553,3134,3275,3276,3277,3279,3283,3132,2628,2550,2626,3128,2522,2525,2526,2527,2529,3073,3111,3113,3110,2580,2579,2622,3072,2576,3126,3120] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [434,436,427,462,1166,408,409,411,508,510,1160,1163,504,1018,1167,1014,1016,953,1010,1004,1012,994,995,997,1168,1170] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [120,220,130,221,295,296,297,4036,4037,4038,4040,4064,4067,665,667,3851,4070,4073,3880,3852,669,4072,4100,4098,654,655,3888] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2940,3821,3833,3834,3820,2937,2939,3827,2959,2961,3571,3573,3574,3812,3538,3858,3859,2969,3568,2964,2963,2967] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [821,1824,1834,1835,1860,1859,840,1563,844,845,848,850,876,818,820,1529,1533,842,1568,1566,1569,1821,1822] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [729,808,1123,1125,1126,1115,799,800,681,727,1107,3840,1110,3829,3832,3833,801,3835] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [495,885,911,912,4186,910,4211,4213,932,934,4182,4184,931,2051,2052,4222,2049,2086,933,487,4187,480,481] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2999,3002,4058,4091,4093,3031,2599,2613,3008,2604,2605,3004,4116,4118,2979,268,4092] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3031,3029,3051,3053,3054,3055,2599,4058,4091,4093,2597,2605,3058,3060,268,259,281,282] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [710,1555,1061,1062,1242,747,1241,1237,1619,1609,1611,1346,1347,1603] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        