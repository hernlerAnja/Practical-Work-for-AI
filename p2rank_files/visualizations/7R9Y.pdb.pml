
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
        
        load "data/7R9Y.pdb", protein
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
 
        load "data/7R9Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5793,5897,5900,5329,5818,5327,5346,5370,5371,5819,4740,4657,4942,4688,4922,4675,4686,4687,4671,5905,5906,5907,5908,4920,4901,4902,5281,5280,5200,5201,5285,5298,5292,5296,5304,5301,4980,4981,5902,5901,5202,5203,5899,4958,4982] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5206,5189,492,493,1145,3488,3489,3769,3770,3771,1143,4543,5212,3805,3852,4539,5209,3802,3803,3804,3807,3806,3767,4558,4549,4550,4557,4551,3524,3515,3519,3523,3525,3853,3486,3487,3490,3491,3493,3485,3494,3495,3496,3498,3466,5008,5009,5045,5046,5047,4985,4986,4987,4989,5010,5014,5015,5018,5019,5196] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3946,2366,2371,2372,2374,2378,190,192,191,207,2158,2160,3951,3954,3955,3633,3615,3616,3631,3921,2264,2362,2377,2393,2394,3942,3944,3945,3947,2227,2221,2222,2223,2148,2149,2151,3607,2367,2369,2121,2124,3608,2145,2117,2120,2114,2115,2198,2200,2235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [6091,6093,6558,6557,5990,6555,6556,6566,6112,6114,6530,6533,6119,6537,6120,6139,6117] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [6089,6091,6093,5990,6555,6046,6045,6114,6025,6053,6027,6028,6054,6055,6058,6059,6060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [5073,5191,5192,5042,5044,5045,5075,5047,5071,5072,5074,5109,5110,1203,1204,5079,5080,508,5076,5081,5120,507,509,3498,1172,1141,1143,1140,1181,1182,1177,1178,1212,1201,1144,5164] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4855,4551,4572,4573,4845,4844,1150,1152,1154,1019,1033,1034,1035,1036,1139,1146,1181,1182,1147,493] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [5238,4142,4168,4172,4175,3894,3898,3900,5241,3869,3870,4144,105,3865,3890,5232,5236,3842,4164,4200,4201,4169] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1027,468,470,469,1345,1337,1336,456,458,459,4522,4555,1313,1024,4521,4064,4099,4101,4102,4060,1351,1352,1367,1368,4072,3762,3763,4070] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2257,2356,2094,2338,2339,2353,6308,2350,2352,2263,3922,3923,3924,2285,2286,3911,3910] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3592,6307,6308,2350,2351,3581,6350,6303,3290,6366,6301,6300,3594,6306] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [4853,4855,4856,4551,4572,4573,4844,4528,4548,4570,4540,4851,5313,4852,5290,4881,4876,5294,5287,5288,5289,4542] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [3100,3103,3069,3071,3072,2617,2618,2619,2620,1460,1462,3074,1918,1933,2551,2553,3101,3132,3134,2597,2559,2595,2560] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [2177,3621,3623,3331,1952,1953,3327,3330,3637,3643,3646,2155,3329] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3911,6315,3902,3903,3874,3885,3882,4965,4967,6314,6318] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [3590,2348,2351,3288,2343,3315,1974,1682,1678,1679,1680,1681,2345,1684,3289,3290,3297,6366,3286] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5634,5354,5826,5517,5487,5378] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [5088,5090,6206,6208,5083,5084,5086,5089,5121,5118,3509,5056,6229,3229,5082,3475] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [1026,995,4805,994,1047,1277,1276,4806,698,1260,1261,1275] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5004,5736,6274] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        