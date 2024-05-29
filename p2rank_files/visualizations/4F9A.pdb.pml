
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
        
        load "data/4F9A.pdb", protein
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
 
        load "data/4F9A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1138,1147,1267,1272,403,1273,1275,785,760,1166,1167,1265,1266,610,1268,786,206,207,264,213,263,265,252,209,211,386,739,744,740,401,402] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3526,3527,3698,3305,6226,6259,3696,3679,3681,6235,3493,6257,3692,3704,3705,3973,3964,3676,3471,3300,3304,3306,3302,3472,3363,3366,3972,3974,3326,3327,3328,3362,6268,6261,6262,6255,6256,6307,6304,3330,3331,3332,6266,3943,3953,3955,3963,6340,3365] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3534,3670,4009,3480,3533,3655,3476,3482,4029,4032,3521,3671,3672,3879,4013,4055,4436,4407,4435,4534,4535,4536,4416,4537,4542,4544,4054] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2959,2990,2992,436,412,694,695,703,704,705,33,276,65,410,35,36,37,2967,62,63,2965,2966,2968,31,257,407,202,224,258,427,429,59,61,57,58,64,97,2963,3001,2989,3037,3040,3064] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1138,1140,1147,1272,403,1273,1274,1111,1275,242,1297,1475,1288,1139,219,226,229,234,1126,1127,1486,1478,1479,236,247,252,240,218,225,265,402,511,1469] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4380,4396,4742,4566,4395,4409,4416,4417,4543,4544,3521,4557,3509,3494,3495,3498,3516,3503,3505] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3878,3879,3880,4014,4015,3881,3882,3837,4521,3838,3839,3858,4508,3857,4036,4504,3873,3840,3868] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        