
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
        
        load "data/7Z1F.pdb", protein
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
 
        load "data/7Z1F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1288,376,1286,1287,562,741,235,231,233,753,755,1189,1205,1206,787,1177,761,768,736,737,389,390,392,393,266,267,283,284,285,237,1294,265] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3177,3178,2944,3175,3182,3188,3199,3649,3723,3724,3090,2958,2895,2896,2954,2956,2957,3725,3730,3731,3732,3003,3733,3025,2880,2851,2894,2849,2850,2852,2853,3228,3620,3632,3648,3647,3194,3196,3202] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [714,292,400,294,295,296,644,402,648,643,624,626,59,60,186,188,1,211,384] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3160,3166,2945,2942,2949,3170,2816,2817,2818,2819,2820,2806,2814,2815,2807,2804,3117,2939,2940,3152,3154,3157,3158,2901,2918,2739,3124,3125,3126,3135,3136,3153,2728,3115,3129,2803,2911,2912] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3960,4226,4258,4232,4233,4293,4445,4256,4255,4257,2603,4200,2619,2620,2624,2706,2707,2626,4422,2625,2686,2688,4431,4430] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1582,1578,1605,2268,2277,2279,1575,1576,1577,1086,1087,1052,1054,1080,1082,1055,2292,2286,2583,2584,1078,1079] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3265,3260,3262,3264,3300,3302,3286,3287,3289,3291,3419,3667,3670,3382,3383,3669] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3556,3517,3557,3017,3044,3018,3742] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [736,737,393,462,490,1288,1302,491,1296] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1214,1226,823,824,1227,853,938,940,855] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        