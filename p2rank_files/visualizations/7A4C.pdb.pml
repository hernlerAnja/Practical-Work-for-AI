
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
        
        load "data/7A4C.pdb", protein
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
 
        load "data/7A4C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1444,957,1315,1342,1343,1344,954,543,376,377,935,938,939,953,372,379,380,382,437,439,384,385,373,374,438,393,394,1303,1304,1328,1316,1445,1446,1441,1443,1449,1450,1452,423,557,558,559,913,915,909,910,911,912,914,542,777,779,919,941] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [260,261,262,4458,4460,250,4471,3244,4117,4130,4131,4133,4431,4432,4434,4435,4438,4132,4305,4307,4306,278,263,269,267,266,279,280,281,3821,3214,4146,4148,4149,4150,3223,4145,3242,3252,3404,4157,4279,4280,4281,3387,3388,4297,4298,4299,3499,831,868,4141,4144,3811,3812,3800,3801,4473,4742,4140,4743,4745,4744,4129,4747,4750,4689,3818,3820,245,3232,3230,3226,3235,3238,3239,3240,3241] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4274,4275,4281,3386,3387,3742,3743,3744,3208,3209,3202,3268,3384,3739,3741,3370,3371,3372,3738,3203,3206,3266,3267,3205,3740,4171,4172,4173,4270,4272,4273,3606,3608,3768,3770,3786,3782,3783,3762,3767,3748,3764,4144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4752,807,4780,4782,4784,4779,4867,798,804,4797,799,278,4733,4735,495,4740,313,4749,480,503,520,494,324] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [238,712,167,236,688,4803,4804,4814,4805,4806,4821,4823,240,243,164,166,720,170,175,4448,4447,4800,4807,4813] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [423,1468,410,406,413,415,1451,1452,1476,1477,1288,1287,1303,1304,1328,1316,385,397,394] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [559,671,1468,1469,409,410,575,411,413,1451,1452,597,412,1476,1478,1470,598] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4735,4736,5216,4898,4886,5218,5220,4867,4889,4865,503,494,493,500] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3219,247,253,251,271,650,274,616,613,614,615,612,830,831,863,269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3988,4181,3849,4696,4697,4670,3957,3942,3952,3944] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1159,1113,1123,1115,1018,1020,1352] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        