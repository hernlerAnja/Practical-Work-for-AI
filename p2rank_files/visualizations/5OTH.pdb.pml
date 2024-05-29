
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
        
        load "data/5OTH.pdb", protein
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
 
        load "data/5OTH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [977,1016,1018,1020,978,974,976,1921,1335,1352,956,1333,961,1349,1351,962,964,979,980,1115,1118,1159,1843,1872,1874,1044,1045,1129,1075,1076,1081,1082,1871,1120,1006,1005,1367,1370,1365,1366,1368,1009,1847,1844,1306,1308,1309,1310,1866,1334,1842] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4080,3745,3748,3751,3787,4081,4613,4614,4637,4642,4643,4645,4619,4620,3858,3747,3815,4691,4693,4692,4077,4079,4104,3930,4106,4123,4618,3900,3884,3779,4122,3891,3886,3889,3853,3732,3780] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3386,736,737,3042,3045,3600,3602,3634,3638,3639,3419,3421,3022,742,786,735,785,790,3018,3021,3385,3382,3384,3387,3413,3410,3412,3654,3655] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3194,3328,3329,3208,3209,3210,3145,3330,4216,4220,4221,4223,4212,4215,4115,3726,3728,3313,3549,3683,3548,3550,3684,3685,3686,3727,4091,4092,4090,4086,3155,3156,3164,3165,3150,3153,3149,3143,3144] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4247,4248,4249,4092,4059,4074,4075,4088,4090,4099,4100,4386,4374,3168,3156,3165,3178,3172,3173,3174,3175,3177,3184,3330,4222,4221,4223,3402,3403,4241,3441,4239,4240,4242,3401,3179,3180,3181,3189,3193,3194,3329,3343,3346,3411,3399,3400] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1197,2666,2668,1196,2665,2664,76,74,754,1198,1199,1202,1171,1230,1231,3084,3578,3055,3083,3073,3076,3266,3048,3049,3052,3576,3577,3028,2692,3569] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [670,1451,1468,423,575,1450,1452,394,397,406,1304,402,634,410,413,415,635,640,579,572,1319,1321,385,1469,1476,1288,1477,1615] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4529,4543,4544,4547,5414,2819,5420,5423,5425,2836,2818,4535,3993] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1491,212,213,222,1492,1497,1523,1525,1544,196,184,201,191,193] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [542,912,914,915,439,1444,779,777,778,1441,1445,1344,1343] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2643,2649,2654,54,2632,2601,2611,65,48,2655,1764,1772,1758,1773,1776] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [762,1110,1150,1393,1176,3031,3032,3033] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        