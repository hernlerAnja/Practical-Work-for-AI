
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
        
        load "data/5MO5.pdb", protein
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
 
        load "data/5MO5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1121,1124,1358,1050,1878,1879,1880,1092,983,1015,985,987,1011,967,1340,1339,1314,1315,1316,1165,1853,1135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3751,3753,3755,4080,4082,4083,4084,3933,4628,4654,3783,3818,3735,3731,4133,3889,4114,4116,3788,4653,4624] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3147,3148,3156,3197,4225,4090,4124,4125,3730,4230,4231,4233,3212,3316,3317,3712,4222,3553,3331,3332,3333,3329,3684,3686,3687,3688,3689,3213,4226,3211,3150] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1349,1449,1321,1326,783,785,548,549,382,380,379,385,921,918,920,444,1450,443,445,563,564,565,429,1456,1458,1325,1327,784,1447,1451,1455,940,383,944,956,960,961,962] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [748,3024,3027,3048,792,3388,3389,3390,791,3049,3641,3642,738,747,741,742,743,3424,3422,3425,3453,3015,3019,3021,3416,3387,3415,3656,3657] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [640,419,407,408,409,410,411,1294,1482,1483,1484,1609,1621,638,646,581,676,403,412,413,414,416,428,415,585,564,565,1457,429,1458,400,1310,1325,1327,390,399,391,1334] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3408,4259,4252,4257,4231,4232,4233,3407,4258,4062,4078,3180,3182,3183,3196,3168,3197,3184,3187,3175,3176,3171,3346,3349,3414,3444,4249,4250,3332,3333,3353,3416] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3049,3641,3642,744,741,742,743,792,3388,3389,3390] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4939,4999,5002,4809,4482] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3040,3579,3580,3581,3254,1203,3052,3055,3098,3087,3268] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [656,619,620,621,654,259,647,648,277,280,836,837,889,595] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [71,2660,1764,1779,1782,2638,1770,1778,1228,2661,1805,2649,2655] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        