
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
        
        load "data/6ATH.pdb", protein
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
 
        load "data/6ATH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3570,3572,3540,3423,3426,3455,3457,3541,3466,3390,3391,2722,2730,2726,2720,2729,3547,3516,4245,1056,1065,1066,1094,1095,1096,1098,1090,3396,3398,3425,3395,1079,1081,1086,2260,1082,1052,1057,2734,2735,3031,2736,2738,3400] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [339,487,929,507,515,501,1,5,7,6,477,113,114,115,118,124,338,481,235,1003,1007,1009,1002,1006,480,482,483,128,130,132,1001,930,901,523,913] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2431,2432,2449,2450,3679,2757,2785,2791,2819,3371,3377,3718,3713,3719,3696,2782,3617,3621,3627,3683,3666,3667,3668,2760,3383,3619,3740] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1675,1718,1719,1684,1689,1690,1691,1708,1712,1717,2040,2041,2042,2253,2264,1283,1269,1284,1287,1266,1271,1275,2254,1232,2032,2033,1293,2034,2026] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4522,2910,2911,3252,4487,4511,4514,2913,2914,2873,2877,2881,2882,2883,3279,4509,4510,2869,4549] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3475,3476,3887,3910,2310,2268,2308,3922,3925,3430,3474,3921,3908,3918,3917,3463,3465,2314,2318,2280,3462] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [943,946,971,961,2192,987,313,314,988,496,509,492] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1999,2008,2005,1993,1970,1971,1822,1823,1821,2004,2006,1665,1666,2015,2007] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3633,3613,4122,4124,4135,4121,4097] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3293,3263,397,182,161,3229,3266,3267,3268,393,444] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4061,4065,3652,3641,3642,3643,4124,4126,4125,4089,4091,4094,4095,4063,3663] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        