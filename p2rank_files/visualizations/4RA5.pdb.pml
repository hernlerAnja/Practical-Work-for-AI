
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
        
        load "data/4RA5.pdb", protein
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
 
        load "data/4RA5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [146,116,119,148,168,743,740,115,166,167,111,113,734,297,444,478,479,718,576,578,746,1169,577,294,290,716,715,722,281,1143,1144,1146,1142,1168,1170,1153,1253,1254,1255,1247,109,110,2454,2452,2463,2464,2492,2493,2456,2441,785,834,770,771,784,788,789,792] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3934,3960,3961,3962,2983,4046,2982,3096,3109,3105,2925,5196,5198,2931,2926,3571,2961,3112,2962,2963,3945,4045,4047,3541,3523,3544,5200,4039,3378,3519,3113,3259,4040,3294,3293,3517,3518,3379,3516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1278,1112,391,389,390,1269,1271,388,412,413,1113,1252,1253,1255,1250,1251,1268,1267,1130,375,142,144,311,310,351,414,415,419,298,443] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2954,2957,2958,2959,2960,2956,3126,3905,4045,4047,3188,3190,3156,3158,3155,3160,3202,3227,3125,3166,3234,4061,4070,3203,3161,3206,3113,3258,4044,4059,4060] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3978,5081,5082,5083,3348,3351,363,4025,3524,3527,3388,3386,3407,3408,3995,3987,3979,3984,374,3986,3975,3532,3548,373,375] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [363,3066,3067,3069,3524,3527,3407,3408,3090,3091,374,3986,367,355,361,364,365,357,3532,3548,3529,3533,3073,3074] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [726,747,1233,1234,585,587,505,1183,1184,1203,731,1194,2299,2300,538,546,547,550,1186] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3617,4220,3929,4440,4441,4442,4211,3588,3937,3587,3624,4439,4472,4480,4485,4438,4469,4470] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2211,2210,2221,930,932,937,939,2316,2321,907,908,2338] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3806,3807,3808,3835,3837,3834,4325,4361,4326,4328,4358,4884,4327,3811] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3699,3722,3724,3700,4993,4994,5004,5006,5099,5100,3731,5104,5120,5121,5122] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3317,5409,3384,3385,3386,3408,3406,5418,3324] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        