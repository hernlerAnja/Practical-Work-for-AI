
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
        
        load "data/7WCL.pdb", protein
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
 
        load "data/7WCL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1395,1388,1394,259,208,213,220,1295,202,204,257,258,394,784,644,1310,1387,535,408,409,410,406,645,761,762,569,1389,1396,1407,1405,1403,1311,815,1281,1550,200,201,205,804,805,808,787] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2633,2626,2671,2672,2615,2617,3588,3593,3689,3608,3609,3579,2614,3231,3234,3255,3203,3206,3224,3227,2954,3180,3181,2821,2823,3688,3699,3678,3681,3682,2809,3185,3062,3064] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [931,934,4429,4430,904,905,3918,3898,3899,3916,3917,1045,1043,1044,1048,1033,1037,1049,1053,1077,944,2059,2061,2060,4428,2383,2384,915,918,942,922,3847,3850,3886,3851,4415] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3780,3247,3284,3823,4039,4094,4081,4075,4076,4077,4083,4086,4087,3285,3767,3762,3584,3580,3581,3582,3233] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1259,1295,1256,1258,1244,1395,1701,1477,1618,1476,1478,1482,1417,1578,1579,1535,1563,1577] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [240,241,242,479,502,505,231,426,480,228,409,410,510,512,536,1417,1418,507,506,213,220,223,243,227,1393,1395,1394,259] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4104,4105,4250,4238,4195,4196,4000,4396,4397,3970,4395] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3909,3910,3730,3732,3833,3717,3719,3714,3715,3716,3720,3891] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        