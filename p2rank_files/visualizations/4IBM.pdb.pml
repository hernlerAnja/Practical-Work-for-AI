
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
        
        load "data/4IBM.pdb", protein
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
 
        load "data/4IBM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1322,1364,1323,1363,191,192,186,187,179,180,181,184,1329,229,230,231,183,198,188,1217,732,752,755,756,757,776,369,738,750,761,763,1302,1218,768,779,783,786,808,809] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3558,3668,3669,3679,2543,3700,3646,2975,3069,3087,3557,3081,3086,3083,2532,2534,2535,2538,2539,2530,2531,2536,2537,2727,2586,2587,2588,3649,3062,3672,3114,3117,3139,3140,3110,3108,3099,3106,3107,3094] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1094,1096,1614,1615,1616,1066,1068,1092,2185,2186,1093,1118,1119,1120,1098,1099,4491,1610,2158,2168,2166,2169,2180,3429,3430,4509,4486,4489,4492,3436,3935,3478,3944,3947,3949,3950,3954,3955,3956,3957,3958,3962,1607,3454,3453,3455,3456,1624,3457,3458,2120,2121,4481,3464,3472] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3878,3877,3884,4428,4431,4433,4449,4450,535,556,557,507,537,538,4435,3906,3907,3908,4437,4440,4441,4442,4443,4458,559,1111,4465,1127,1132,568,570,1129,1135,1156,1131,3916,1115,1106,3928,3930,3881,3882] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1164,1157,3916,1167,1314,1315,517,518,520,1307,1305,519,1344,1346,1345,1129,1135,1142,1156,1131,1147,1310,1308,3915,515,536,537,538,3908] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1031,1244,1245,1265,1001,1251,1252,2290,2291,1004,2274,2276,2278,603,592,593,1246,1248] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2962,4648,2951,2952,3612,3366,4647,4613,4614,4598,4600,3594,3607,3591,3598,3599,4616,3339,3336,4596,4597,4599,4601] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1545,1580,2129,3468,3470,3462,3472,3475,3482,1590,3497,1608,2120,2121,2122,2123,3455,1624,1607,1609] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3507,3655,3657,3487,3504,3542,3645,3651,3654,3661,3662,3544,3465,3475,3659,3660,3480,3482,3497] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [3150,3309,3310,3346,3347,3307,3311,3600,3184,3601,3151,3258,3602,3603,3312,3313,3314,3599,3564,3620] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1282,1248,742,741,743,1239,1240,1230,1238,740,747,590,592,593] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2129,2897,2896,3468,3470,3465,3475,3659,3660,3480,3482,2895,3655,3657,3654] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3889,3795,3797,3893,3895,3816,3830,3776,3778,3899,4241,3780,4205,4206] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3073,3078,3570,3593,3594,3595,3571,3576,2951,3629,3612,3628] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3889,1576,1584,3795,3797,3895,3816,3940,3942,3817,3918,3917] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1252,1224,1253,819,1000,1001,1010,1273,1012,793,1225,817,975,976,979,923,974,972] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [207,1317,1327,212,208,519,1346,517,518,520,385,1306,491,493] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        