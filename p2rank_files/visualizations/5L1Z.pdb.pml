
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
        
        load "data/5L1Z.pdb", protein
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
 
        load "data/5L1Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [291,293,439,1185,1186,1189,1191,1093,1085,1184,697,702,1108,1109,715,706,700,726,727,728,729,676,677,675,547,671,672,673,674,681,687,276,144,692,694,696,145,168,169,147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1013,1014,1001,3694,489,4963,4962,2946,4995,4956,4943,2945,3728,3729,4925,454,455,456,3233,452,453,3683,3696,3679,3244,3245,451,3254,3251,4976,1236,1022,462,464,425,423,421] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4235,4237,4265,4336,4090,4092,4335,4245,4247,4194,4173,4176,4172,4165,4168,4169,4170,4171,4153,4670,4120,4121,4111,4119,4708,4709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [348,349,350,351,3560,375,372,374,378,3558,3563,3591,3592,380,3557,3567,324,625,622,637] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2895,2897,2898,2888,5055,5056,5174,2866,2867,2868,5167,5199,5200,5198,5054,5060,5071,5208,5250,5249,5251] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2945,3728,4923,4910,3717,2943,4993,4995,2969,3700,4911,3883,3884,2939,2934] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3964,3969,3970,2796,2733,2732,2638,2637,2640,4410,4412,4448,2734,4004,2767,2769,4474,2743] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2281,1877,1886,2268,1893,1516,1492,1507,1513,1524,1451,1489,1931,1452,1511,2274,2277,2275] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4029,4030,2584,2585,3985,3691,3686,3676,3035,3681,3687,3688,3692,2565,3664,2528,2534,2536,2539,2567] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3138,3139,3146,3147,5244,2811,2818,2819,3131,3134,3137,3148,2781,2815,2816,2783,2785,2813,3096,3098,3095] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        