
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
        
        load "data/4FZD.pdb", protein
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
 
        load "data/4FZD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [562,585,586,589,592,699,718,721,696,720,719,617,584,618,411,273,378,272,932,594,595,722,723,724,725,752,742,445,404,403,439,440,430,50,49,406,409,432,560,225,226,227,198,48,73,46,245,246,247,374,262,264,265,10,376,33,32,30,375,380,394,460,468,441,442,443,461,564,765,444,743,446,499,623,958,957,701,706,928,930,931,979,971,976,763,764,766,770,747,796,995,997,978,996] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2556,2558,2559,2560,3541,3542,3543,3545,3458,3408,3442,3528,3531,3407,3423,2524,2579,2580,3434,3127,3435,3106,3107,3126,3128,2522,2525,2526,2537,2826,3540,2857,3536,3537,3538,3544,3546,3532,3534,2700,2829,3059,2858,2698,2699,3060,3044,3457,3086,3097,3098,3099,3076,3078,3080,3082,3085,3093,4485,4487,2683,2925,3064,2924,2926,3057,2549,3547,3618,3619,3425,2550,2551,2554,3603] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1410,1420,1422,1341,1692,1596,1599,1723,1628,1719,1720,1721,1690,1722,1724,1260,1617,1619,1315,1314,1666,1667,1664,1665,1264] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3742,3743,3744,3399,3695,3773,3696,3693,3611,3617,3662,3669,3615,3666,3667,3400,3385,3780,3397,3772,3771,3809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1508,2413,2421,2985,2967,2971,2982,2986,1142,1153,1156,1134] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [563,565,480,483,459,564,537,538,872,898,881] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1002,1004,983,1005,1225,1080,1045,1047,1256] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        