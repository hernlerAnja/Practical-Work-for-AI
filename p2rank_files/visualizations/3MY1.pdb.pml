
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
        
        load "data/3MY1.pdb", protein
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
 
        load "data/3MY1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1238,751,754,1162,1163,760,781,782,1239,729,1240,1243,1244,1245,1147,735,591,592,213,321,214,159,155,156,157,746,336,338,730,161,726,727,728,741,731,1139,780] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [425,3613,417,419,420,368,369,370,670,391,3612,682,681,680,677,678,679,691,686,3579,3581,3582,3584,3606,416,3558,415] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4132,4197,4194,4174,4111,4108,4113,4141,4139,4135,4268,4286,4356,4357,4256,4258,4266] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2589,3059,2591,3685,2608,2558,2559,2561,2560,3697,2552,2563,3709,3712,3713,3019,3058,3702,3707,3020,4050,4051,2609,4006] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3998,4000,3982,2794,3984,4429,4431,4432,4433,2757,2756,2758,2761,2762,2793,3985,3991,2791,4464,4466,4428,2662,2660,2637,2664,4025,3990,2661] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1258,1259,1260,1261,1262,1244,1246,1245,1147,167,1269,196,188,189,190,195,361,186,187,338,1267,1113,1130,1129] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2882,2881,2883,3965,3967,3968,3969,3944,4521,4522,3964,4523,2858,4499,4551,3937,3945,2884] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3170,3180,3539,3541,3542,3543,3372,3370,3371,3373,3374,3402,3347,3379,3411,3413,3538] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        