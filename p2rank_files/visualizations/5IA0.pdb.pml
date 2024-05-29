
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
        
        load "data/5IA0.pdb", protein
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
 
        load "data/5IA0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3220,3239,3210,3224,3219,3312,3240,3313,2284,2288,2446,2447,2281,2682,2816,2811,2444,2445,3315,3318,3321,2584,3314,2609,2268,2270,2321,2322,2323,2266,2860,2863,2867,3241,2838,2837,2834,2430,2828,2830,2267,2890] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [723,726,1104,730,753,125,1083,1084,1175,1176,1082,1087,1102,1103,1073,1177,1178,1181,1183,140,131,143,697,701,700,129,693,127,180,181,182,126,437,435,297,298,299,300,679,283,691,674,675] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5436,5437,5362,5363,5364,4981,5333,5441,5443,4560,4925,4926,4930,4796,4444,4445,4446,4576,4577,4698,4401,4404,4575,4389,4391,4390,4392,4393,4942,4944,4946,4951,4974,4977] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3820,3827,3819,909,1950,1978,954,3799,1924,1953,500,501,502,511,517,529,3816,3822,3823,3824,933,953] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4849,4894,4674,4895,4683,4684,4840,4676,4834,4281,4835,4836] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4364,4365,3741,3742,3706,3770,3801,3804,4374,4375,4376,3724,3847,3856,3869,3837,3842,4379] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4385,4436,4457,3720,4439,3656,3654,3678,3878,3884,3680,4601,4599,4600,3623,3873] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5142,5143,5144,5167,5397,5403,5408,5173,4771,4773,4781] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3899,3891,4596,4601,4597,4599,4600,2948,2947,3656,3651,3652,3653,3654,3664,3645,3666,3884,3887,4439,3888,3680] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [530,913,912,883,884,886,1137,1143,885,517,521,529,1148,882,905,907] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2656,2658,3300,2820,2692,2817,3256,3253,2850,3270,2825] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [515,519,1163,4032,555,684,713,4031,688,680,1119] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3849,3851,3852,3976,490,487,491,3972,3995,3973,4011,470,995,3984,4014,3952,965,994] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [470,471,995,473,3951,3952,3976,3975,994,989,991,992,484,474,990,3941,3942,1003] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        