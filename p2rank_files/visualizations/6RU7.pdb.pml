
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
        
        load "data/6RU7.pdb", protein
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
 
        load "data/6RU7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1881,1882,1884,2011,2037,4427,1435,1843,1854,1856,4220,4221,2032,2033,2034,2035,2036,2038,2046,1467,1443,2050,1524,4266,3835,4224,1852,1866,1871,1874,1877,1893,3956,4406,4407,4408,4410,4412,4414,4416,3954,3803,4211,4218,4250,4252,4256,4384,4234,4238,4239,4245,4281,4242,4243,3811,3802,4431,1586,1908,1689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3561,3463,2559,3560,3042,3464,2651,2511,2512,2514,2516,2504,2505,2507,3045,3040,2509,2506,3053,3065,3066,3091,2558,2560,2660,2666,2649,2650,3004,2820,2889,3048,2888,3017,3019,3023,3566,3567,2668,2521,2517,2520,3563,3558,3562,2787,2821,3433,3444,3434] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [108,109,110,112,160,162,114,117,161,163,254,638,639,645,657,1025,1054,1055,1056,1036,1153,1158,1159,1161,120,123,124,127,119,640,1152,1150,420,616,615,387,269,271] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3083,4935,4936,3081,3082,3991,3080,3420,3436,3437,4934,3756,4067,3770,4937,3782,3783,3150] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3099,4736,4738,4751,3059,3469,3060,3484,3476,3508,3510] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [651,1102,652,1076,1068,1100,691,2355,2357,1061,2352,2370] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [673,674,1028,1029,675,1402,4842,4840] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        