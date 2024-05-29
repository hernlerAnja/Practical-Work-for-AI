
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
        
        load "data/7AT5.pdb", protein
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
 
        load "data/7AT5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3289,3291,4293,4296,4304,4194,4295,3275,3225,4167,4172,4173,4156,4196,3806,3809,4195,3230,3231,3246,3234,3237,3290,3394,3224,3226,3228,3229,3395,3787,3791,3793,3786,3790,3407,3764,3766,3767,3409,3411,3631,4297,4298,4301,4302,3761,3771] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1329,1323,1328,1336,1452,1350,1351,1352,1460,1454,1457,1458,1461,915,1449,1453,1451,777,393,394,423,557,439,559,413,437,914,438,376,542,543,938,911,912,909,910,779,919,934,671,913,379,384,373,957,954,374,377,410] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4160,4185,4186,4187,4204,4158,4161,4162,4693,4725,4727,3967,3975,3934,3832,3833,3834,3835,3830,3831,3861,4165,3829,3870,3871,3872,3896,4712,4775,4011] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1884,1885,1018,1020,1045,1044,1883,1087,1082,1075,1076,1317,979,981,1009,1857,1135,1167,1084,1123,1133,1115,1360,1118,1316,1342,1343] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3355,3370,3371,3651,3372,3163,3165,3174,3176,3659,3332,3164,3345,3347,3346,3650,1985,1986,1966,2055,1937,1968,1969,1967,1924,1921,1923] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3249,3256,4139,4140,4304,3246,4172,4173,4156,4303,4320,4328,4329,3262,3263,3264,3265,3267,3481,3522,4322,3449,3427,3411] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [413,415,1484,1485,1486,1295,1622,1296,1311,1312,394,1325,1329,1326,1328,1336,1460,1458,1459,1327,397,406,410] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3095,3090,3565,3088,3540,3561,3560,1991,1992,1994,3092,3022,3567,3572,3025,3027,3017,3018,3019,2010,2012,1980,1635,1636,1988,1995,2002,2000] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [423,558,575,559,1460,1458,1459,413,1484,1486,629,1477,1478,1476,670,574,410,411,412,409,597,598,640] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1019,1884,1885,1014,1015,1016,1017,1018,1020,1877,1875,1906,1317,1930,1931,1932,1929,985,3140,3157] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4072,4074,4608,4610,4618,4609,5512,5509,5506,5521,4619,4622,5511,4048,4645,2912,2920,2922] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1775,1787,1230,1810,2657,2660,2658,2659,1783,1769,2637,71,54,58,59,65,2664,81] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3064,4344,3036,4377,4375,3065,3072,3074,4396,4397,3043,3045,3053] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4893,4918,4929,4916,4917,5249,5251,4894,4920,4767,4787,4766,4793,4794,4765,4801] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        