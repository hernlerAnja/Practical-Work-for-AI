
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
        
        load "data/5X2C.pdb", protein
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
 
        load "data/5X2C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [208,1240,755,757,1123,1160,162,156,165,782,748,750,1246,1247,1271,1242,1249,1252,1253,1256,189,190,358,699,700,588,589,701,702,1239,587,157,206,207,341,685,525,521,519,522,344,350,354,720,723,746,747,1159,731,159,160,706,707,1126,1128,1144,1124,168,188,781] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2661,3643,3230,3233,3207,2662,3206,2663,2819,3189,3203,2806,3201,3606,3607,3238,3240,2823,3265,2616,2617,2622,2623,2626,2618,2620,2621,3627,3723,3724,3725,3730,3759,3722,3071,3072,3208,3642,3182,3185,3184,3183] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3098,3094,3095,3096,3100,3101,2504,2505,2506,2565,2707,2701,2702,2703,2704,2705,2706,2708,2709,2525,2526,2800,2801,3176,3175,2786] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [104,246,247,249,250,251,252,254,64,65,43,44,692,693,615,613,336,253,326,335,321] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [155,3517,156,3480,142,143,145,149,146,150,4519,4548,4549,3455,3485,3453,3456,3042,3048,3049,3487,3057,3059,3457,3458,3459,4918,4917,4916] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [793,829,889,890,891,892,893,894,2238,2248,792,1199,2332,2263,2264,2267,1188,1189,858,865,2241,852,2242,862] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3275,3276,3312,3314,3671,3414,3672,3341,3372,3373,3374,3375,3377,3682,3376,4750,3335,3348,4743] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2823,2636,2640,2641,2642,2645,3791,3611,3613,3615,2633,3583,3767,3764,3627,3755,3731,3763,3800,3813,3814,3815] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1128,1130,1132,1345,1301,1311,1331,1346,1617,1609,1613,1627,1624,1619,810,773,774,1566] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [219,218,364,366,367,662,124,127,3537,200,3524,3525,3526,3019,3017,3018,2999,3000,3521] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1530,1496,1499,1638,1721,1765,1770,1922,1924,1927,1760] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [175,179,188,1296,1100,1098,1097,1273,1276,1301,1316,1085,181,186,184,1270] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3995,3998,4029,4135,4419,4421,4137] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        