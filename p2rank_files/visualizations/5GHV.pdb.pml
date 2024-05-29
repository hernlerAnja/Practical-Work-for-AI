
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
        
        load "data/5GHV.pdb", protein
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
 
        load "data/5GHV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1070,131,179,180,1173,1174,1175,128,129,126,303,161,162,648,651,315,650,1168,317,318,319,428,667,672,692,1056,1086,655,669,1085,1166,124,125,700,701] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2691,2810,3245,3326,3328,3333,3334,3335,2616,2811,2463,2815,2827,2692,2829,2339,2340,2475,2588,2321,2479,2322,2477,2478,2852,2832,2860,2861,3246,2288,2285,2286,2291,2290,2837,3230,3216] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [688,689,690,3591,733,735,737,1116,4108,3550,3554,3587,4130,4131,3589,772,792,793,3611,3613,3588,3590,4118,4122,4123,4125,4124,4112,3547,3580,4114,1103,1106,1109] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3957,3899,3812,3826,3844,3845,3900,3823,3827,3898,3956,267,3959,258,3733,3736,260,261] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3347,2316,2319,2321,2479,2587,2322,2310,3357,3348,3351,3356,3349,3350,2556,2557,2558,3358,2552,2553,2559,2554,3331,3332,3335,3194] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [161,159,1172,1175,1034,1187,1188,1190,317,318,319,427,428,396,397,398,392,393,394] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [914,2127,2128,881,883,2115,2116,2150,2151,2126,859,856,890,893] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        