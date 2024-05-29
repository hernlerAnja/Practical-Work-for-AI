
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
        
        load "data/7AK2.pdb", protein
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
 
        load "data/7AK2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [414,415,3912,24,2936,2937,3927,3929,3910,3928,3911,3942,3943,3944,13,14,16,17,18,19,402,23,15,2,12,8,9,3945,2929,2932,2938,4181,4197,4200,4206,4207,4186,4212,4216,4220,4211,4231,4229,4228,4230,4232,4233,3185,4158,4159,4160,4161,4162,4157,4090,3186,4082,4083,4084,4089,4068,3160,3162,2939,2942,2944,2946,3097,4069,3191,3194,3219,3157,3190,4190,4195,4193,4176] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1200,1379,1488,1495,1496,1499,1500,1486,2721,1532,1519,1521,1445,1446,1447,1378,221,1199,1201,1216,1218,1241,1358,223,1231,1232,1234,1230,433,465,461,463,464,1371,1357,372,373,495,2747,2749,3138,3139,212,213,198,205,208,2741,2748,2736,2737,2738,2739,436,438,215,218,1489,1501,1505,1543,1509,1507,1522,1518,1520,1465,3136,3126,3164,3163] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4061,3969,4059,4060,3550,2946,2948,3097,4069,3095,3378,3522,3524,3525,3526,2966,2967,2968,3093,3544,3547,3080,3520,3521,3523,4066,4062,4063,2910,2916,2919,2922,2914,3941,3940,3952,3968] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1348,1349,1350,657,1258,800,356,799,809,827,828,823,1241,1358,223,1351,1352,1229,1257,834,826,1230,371,373,496,369,803,804,805,801,802,198,195,224,242,243,244,192,186,190] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [206,207,208,398,199,2747,3122,209,212,2930,2931,2932,2933,2759,2925,33,35,2757,2926,2927,2748,200,201,25,24,2936,440,397] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1489,1505,1543,1509,1507,1829,1832,1465,1466,1467,1468,3144,3136,3140,3126,3132,1496,3138,3139] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        