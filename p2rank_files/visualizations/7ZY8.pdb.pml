
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
        
        load "data/7ZY8.pdb", protein
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
 
        load "data/7ZY8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1309,1310,1016,1018,1866,1867,1860,1868,1087,1913,1333,1349,1306,1308,1113,1115,1159,1352,1841,1123,1129,1006,1009,1010,1044,1086,1082,1118,1128,977,978,980,1915,976,957,961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4095,4097,4068,4071,4609,4114,3743,3744,3745,4070,3741,3742,3718,3739,3740,3920,3921,3890,3891,3877,3806,3918,4178,4634,4681,4635,4636] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3138,3200,3135,3136,3134,3141,3701,3702,4105,4206,3700,3718,4077,3541,3305,3304,4214,3156,3185,3199,3201,3320,3321,3155,3144,3146,3147,4203,4090,4211,3319] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [866,3498,3499,3500,868,3474,830,831,863,864,589,590,883,884,3497,3470,3503,247,650,651,614,615,616,648,649,3686,271,274,269,613,611,639,641,642,3548,3547,3504,3685,250,245] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [423,397,1288,394,1304,1452,422,558,575,559,1451,632,633,634,1476,1478,409,406,408,410,413,401,402,403,404,640,670,1328,1477] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [438,439,542,914,779,1328,1315,1344,1444,373,379,938,939,940,1343,374,376,543,423,1449,1450,1452,555,557,558,559,1445] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4214,3156,3184,3185,3159,3163,3164,3168,3171,3169,3170,4050,4090,4212,4213,4065,4066,3432,3337,3175,3172,3396,4238,4239,4240,3394,3397,3402,3165] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3993,3959,3960,3961,3964,3992,3958,281,285,288,3966,302,311,312,313,2836,2838,5428,5427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3984,5417,5421,4526,4534,4535,4538,2837,3958,2827,5405,5411,5416,4520,2810] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3517,3516,257,278,806,807,281,284,3966,3964,313] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3242,3086,3265,3278,3280,3281,3686,3561,3679,3683,3297,3286,3566,3567,3569,3560] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        