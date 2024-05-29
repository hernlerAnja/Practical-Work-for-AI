
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
        
        load "data/3Q9Z.pdb", protein
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
 
        load "data/3Q9Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3790,3190,3191,3197,3775,4138,3203,3255,3257,3375,4139,4263,3256,4259,4262,3377,3732,3733,3730,3192,3194,3360,3361,3769,3756,4162,3752,3597,3759,4160,4161,4261,3783,3787,3200,3211,3212,3376] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [938,956,957,1342,1344,1315,1319,1313,980,1308,1333,971,372,373,378,379,382,385,374,1318,1320,1321,934,376,913,914,909,910,912,1441,1443,1444,777,778,779,1343,438,394,439,557,558,559,541,542,543,1451,1445,1449,1450] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [807,313,324,4770,4772,480,798,799,4722,4724,493,494,495,503,4769,4767,4768,4856,4726,4725,4729,519,520] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4447,4449,4741,266,4427,4118,4461,4120,4119,4678,4731,4128,4129,4462,4735,4736,3808,3809,3810,4136,4121,4122,4123,4130,4134,259,262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1841,1113,1123,1867,1020,1115,1118,1352,1334,1335,1018,1044,1159] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4449,4450,4741,266,4729,254,257,256,713,4777,4779,4781,258,259,4437,806,313,265,277,278,281,4773,4772,812,815,808,4784,801] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3384,3367,3640,3707,3112,3113,3115,3135,3136,3110,3159,3158,3160,3385,3650,3654,3114] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [212,213,203,215,221,222,625,1491,184,1525,201,191,193,1544,1545,1523,1492] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4773,4770,4772,798,4786,799,4767,4768,4856,4769,4771] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3459,3469,3071,3069,3089,3092,3700,3433,3434,3701,3432] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3452,3227,3228,3393,3488,4286,3449,3219,4294,3415,4270] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        