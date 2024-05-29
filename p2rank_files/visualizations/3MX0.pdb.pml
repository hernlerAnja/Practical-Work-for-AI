
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
        
        load "data/3MX0.pdb", protein
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
 
        load "data/3MX0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [482,483,4714,473,477,479,480,1192,462,464,455,816,4695,4697,5045,5049,5032,798,799,1193,463,805,808,812,471,33,4706,4688,4700,4705,4716,4709,4710,4712,4713,4715,5426,4266] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [839,843,844,847,848,849,4333,163,164,165,161,8032,8033,7342,7343,840,841,842,129,156,157,167,4398,4394,4396,134,4401,4431,4432,4433,4434,4339,4338,4345,4551,4553,7569,7570,8049,8050,4320,4439,4442,4532,4435,4438,4369,4367] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3819,3827,214,215,216,3831,3855,221,3826,3830,3896,3880,3815,3683,3684,234,3915,3916,3918,211,218,3852] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3998,4000,3985,4009,4011,3664,3666,3924,3926,3928,1037,3917,1055,1057,3903,1029,1027,1028,1036,1039,3544,1032,3546,3547,3548,3552,3553,3556,3649,3540,3653] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [5027,5028,5059,5061,5063,5127,5079,5085,5095,4665,5449,5451,5017,5013,5125,5098,5138,5083] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7551,4434,4412,4558,7550,8067,8084,8089,4450,8087,8068,4407,4580,4571,8097,8101,8093,4562,4568,4572,8100] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5262,5263,5265,5267,4853,4900,4901,4881,5239,5242,5241,8152,8157,8162,8166,8167,8168,8169,8159,8112,8150,8170] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [8101,8103,8170,8093,8095,4580,4575,4593,4571,4594,4596,4890,4900,4901,4902] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [8157,7897,8159,8161,7899,8209,8150,5290,5291,7898,7773,7777,7781,8218,8242,8244,7786,7789,8231,8233] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [819,833,5052,445,834,835,5068,842,123,127,5075,5066,5051,4667,4681,4678] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [299,87,5082,3110,3816,3817,3799,3800,112,5074,5077,5080,106,320,206,207,209,200,205,297,212,218,137,318,136] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8024,8025,4328,8028,8044,4513,8043,4533,4531,4316] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [2792,2793,2422,2566,2567,2564,2565,2572,2568,2727,2732,2734,2735,2718,2707,2706,2704] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [4046,4050,4077,3506,4037,4115,4116,4117,4118,4120,4124,4111,4113,4125,3175,3176,3483,3508,3172,3484,3486,4127,3227] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1310,1312,1093,1094,249,604,1076,3895,3912] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [582,1309,1310,1093,1094,1311,249,293,1308,278,286,288,283,289,290,250,1317,584,585,586,66,67,68,69] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [4044,4091,4037,4111,4118,3610,3609,3628,3626] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3935,3936,3929,3933,3937,1032,620,648,1009,3924,3926,1008,1037,1029,1027,1028,1036] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [2536,2491,2466,2460,2461,2504,2780,2469,2463,2532,2763,2529,2533,2534,2552,2554,2513,2521] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1216,1218,432,780,905,862,866,892,893,865,1219,826,828] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        