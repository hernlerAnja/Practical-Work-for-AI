
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
        
        load "data/7UP5.pdb", protein
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
 
        load "data/7UP5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [142,143,145,195,148,1153,1154,296,310,311,312,1149,672,677,512,655,656,408,436,660,1053,1081,1082,1147,1065,1146,1148,1156,679,680,149,184,194,151,153,156,178,182,180,181,308,309] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2379,2232,2282,2746,2747,2751,2770,2771,3233,3234,2604,2229,2230,3160,3161,2235,2281,3132,3144,3242,2393,2394,2395,2500,3239,3240,3235,3236,3241,2768,2763] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3612,3609,3822,3819,4231,4235,4238,4232,4206,4208,3359,3361,3856,3806,3814,3333,3334,3338,3329,3330,3331,3332,3855,3854] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2796,3126,4131,4152,4153,4133,3124,3129,3130,3128,4107,4125,4126,4129,2825,4088,4123,2810,2813,4154,3127] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2394,2395,2499,2267,2268,2410,3241,3255,3257,2458,2244,3242,3266,3267,3268,2459,2247,2250,2251,2436] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1154,1179,1180,1181,311,312,1168,407,375,376,378,1170,373,379,160,163,164,157,181,353,355,384,354,328,327] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1009,1010,2081,2067,1019,1024,2045,1008,1011,1013,1250,1251,1287,2071,2073,1249] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2951,3170,3172,2949,2916,2939,2829,2837,2838,2842,2919,2885,2887,2832,2834,2830] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3107,3121,3135,3137,3144,3242,3108,2241,3241,3267,3268,4215] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4216,3091,3092,3093,3094,3095,3096,3374,4205,4207,3337,3338,3314,4238] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [828,741,743,1106,740,1091,1093,858,860,850,738,737,746,747,751,796,1089] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        