
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
        
        load "data/4BCH.pdb", protein
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
 
        load "data/4BCH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [717,316,326,327,328,329,313,204,206,149,151,738,181,182,183,184,205,146,153,186,148,147,476,713,714,715,718,719,1227,1228,1231,1135,185,1232,1234,1127,1151,748,756,757,764,768,769,770,1233,1235,583,584,1226,1150,742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [411,361,359,383,415,3563,417,3564,3597,362,666,667,668,671,665,3530,3532,408,409,3557,3533,407,3510,3509] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4150,4152,4083,4125,4137,4141,4148,4145,4059,4090,4092,4207,4209,4219,4237,4062,4064,4307,4308] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [475,701,345,346,354,330,328,329,180,443,426,448,1247,1248,1256,1233,1101,1232,1234,1249,1255] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2560,3010,2971,3955,3957,3958,3664,3663,4001,4002,3653,3658,3660,2970,3009,3959,2511,2559,3636,2536,2540,2542,3648] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3930,3933,3935,3936,3942,3924,2742,2744,2745,4380,4381,4382,4383,2709,4417,4443,2783,4416,4415,4414,4378,4379,2611,2613,2617,2615,3941,3976,2588] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3685,3686,3689,3690,3692,3682,3684,3881,3683,3879,3880,3909,3908,2944,3882,3883,3887,2910,3672] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3323,3298,3490,3492,3494,3149,3121,3353,3331,3362,3364,3388,3325,3489] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        