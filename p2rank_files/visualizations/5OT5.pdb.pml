
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
        
        load "data/5OT5.pdb", protein
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
 
        load "data/5OT5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1168,1405,1931,1098,1171,1097,1930,1932,1933,1014,1030,1031,1032,1033,1028,1029,1037,1069,1038,1398,1212,1387,1900,1896,1182,1895,1362,1363,1924,1388,1980,1386,1361] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4679,4141,4142,4675,4703,3876,3877,3918,4705,4706,4704,4754,3806,3809,3805,3808,3840,3914,3919,3960,3961,4698,4752,4753,4181,4184,3945,3947,3950,3991,4140,4165,3793,3841,3955] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3109,796,1224,1225,3110,1226,1250,2751,2725,2724,795,3143,3144,3145,3327,3134,76,1249,2723,74,1255,1284,3113,3117,3118,1251,1252,1283,3120,3089,3637,3638,3643,3116,3639,3156,1227,3630,3093] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [777,778,3103,3106,3082,775,3663,3696,779,780,784,827,828,3077,3079,3083,3482,3695,3447,3448,3473,3446,3441,3443,3444,3445,3480] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4282,4283,4284,4120,4151,4153,3466,4308,4309,4310,3235,3236,3237,4135,4136,3234,3226,3229,3255,3241,3233,3238,3242,3245,3404,3407,3390,3254,3391,3411,3465,3472,3502,4300,4301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1395,1397,1497,1368,1371,1373,1374,374,479,481,372,373,379,1503,1505,404,406,1502,1010,377] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3389,3746,3742,3744,3271,3374,3767,3375,3751,3390,3391,3609,3610,3611,4175,4273,3747,4277,4281,4284,4276] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4176,3789,4174,4276,4147,4150,4152,4153,3206,3205,3210,3211,3270,3271,3208] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2714,2691,2708,2713,65,48,55,2660,2670,1811,1817,1825,1826,1829] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [821,584,1397,819,1494,1497,481,965,967,968,1503,1505,406,1502] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        