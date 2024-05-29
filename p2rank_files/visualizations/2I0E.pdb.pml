
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
        
        load "data/2I0E.pdb", protein
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
 
        load "data/2I0E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [112,1169,113,114,116,118,1086,707,680,79,80,85,86,136,137,138,81,83,84,671,673,115,117,258,407,1164,1167,1168,1170,516,654,655,1162,1163,515,659,683,1087,677,256,254,652,653,242,1066,1071,1060,1063,704] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2754,2809,2810,2756,2915,3344,3346,3339,3350,2752,2753,2757,3836,3835,3188,3189,3356,3354,3332,2784,2788,2790,2791,2811,2759,3843,3840,3744,3841,3842,3837,3844,2927,3307,3325,3115,3116,3851,3327,3328,3326,3080,2928,2929,2930,3733,3377,3760,3759,3353] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1265,1233,1270,1261,1267,1272,5007,5016,5033,1259,3097,3088,3095,3096,3120,3121,5045,1266,3089,3090,5047,3135,1207,1208,3061,3099,3062,3064] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3443,3451,4917,4919,3509,3483,3450,3473,3475,3511,3412,4915,4916,4918,4921,3546,3415] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4870,3337,3821,3822,3776,3341,3161,4869,5101,5107,5108,5109,5111,3196,3198,5093,5094,5097,3782,3788,3790,3773] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [837,839,802,873,872,800,777,2242,2243,2244] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [448,2604,415,416,417,2606,2592,421,447,423,424,426,392,2575,3894,3943,3945,3932,3934,3938,3939] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2670,2671,1109,664,683,678,668,487,1148,1149,1103,2197,1100,1115,522,2656,523,525,2653,2654,485,488,2195,2196,2652] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [105,383,377,352,353,355,274,273,1183,1184,1185,375,258,408,1170] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4120,4119,4123,4132,4136,4137,4601,4602,4646,4607,4603,4054,4103,4108,4604,4606,4128,4129,4645,3910,3931,3932,3936,3929,3930,3946,3922,3927] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3524,3529,3499,4777,4778,4891,4886,4793,3531,3500] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2705,2707,2693,2694,2695,2696,3222,3221,5055,2850,2851,5054,3215,3216,3233,3234,3236,3226] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [553,548,549,561,563,2614,542,177,178,20,21,23,22,32,34] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1254,1455,1972,1973,1256,1273,1464,1929,1930,1931,1430,1237,1447,1263,1446,1249] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3026,3028,3858,3050,3081,2931,2946,2947,3056,3025] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1186,1190,1192,1193,1183,1184,1185,105,106,107,1170,1031] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4240,4243,4244,3396,4013,4014,4015,4016,4027,4026,4271,4272,4279,4283] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        