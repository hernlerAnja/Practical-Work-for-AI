
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
        
        load "data/3P2B.pdb", protein
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
 
        load "data/3P2B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [445,3156,3445,446,864,993,995,1024,4565,4564,4587,4588,4589,4590,3152,3153,3154,4586,4129,4130,4142,4143,4144,4145,3478,3479,3480,3522,3524,4532,3475,3476,4757,3194,3132,3165,980,981,982,4611,4612,4652,4653,4654,474,475,1016,1019,1020,1022,1043,1007,977,1006,1008,4585,3164,4618,4619,4622,4623,3162,3163,3166,3140,4650,4651,526,518,4729,4613,4615,4616,4617,4710,4691,4680,4726,4742,4743,4528,4746,4749] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5469,5470,4480,5471,5366,5463,4458,5468,4252,4314,4292,4262,4263,4250,4237,5460,5382,5383,4866,5355,5357,5358,4875,4880,5359,4820,4438,4825,4837,4522,4524,5465,4496,4821,4456,4737,4735,4736,4839,4842,4523,4738,5462,5464] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [425,426,874,4109,892,894,3787,407,408,1140,3431,3464,3796,3798,3430,3438,3766,3432,3765,3434,3436,4148,3466,4107,4150,4151,4153,4149,3757,3758,1169,3823,3784,3786,424] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4097,4178,4180,3846,4067,4039,4045,3845,3866,4071,4078,4342,4184,4188,4190,4041,4042,4043,4046,3875] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2881,5847,5849,4625,4661,2891,2893,2892,3176,3177,2900,3162,3140,4629,5873,3164,4620,4622,4623,3165,474,475,3139,3141,2885,3108,2894,2898,2882,2883,2901] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [5953,5954,2960,1436,2971,2972,2973,2974,1435,5893,5891,2390,5894,2933,2936,5896,2389,5921,5922,6024,2400,5997,5952,5999,2076,5998] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [566,580,582,567,644,659,646,715,743,718,826,645,748,749,744,747,903,827,726,581,1112] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2404,2420,2421,2422,2629,2630,2652,2655,2656,2933,2936,2389,2620,2960,2971,2972,2973,2974,2970,2410] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2131,2124,2128,3305,3306,185,186,2125,193,194,1963,217,218,210,3636,165,171,174,2132,2138,1873,1880,1875,1881,1879] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5324,5318,6344,6345,5367,6376,6369,5495,5521,5493,5330,5502,5498] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4827,4829,4830,4834,4402,4417,4406,4407,4411,4412,4419,4398,4399,4134,4422,4142,4145,4163,4416,4164,4386,4354,854,853,849] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5964,5965,5966,5968,2082,2083,4488,4505,3580,5962,5957,5958,2096,3257,2088,2095,3575,3586] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [432,433,387,388,390,430,3122,3125,3427,3412,440,3126,451,448,454,3118,3113] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [547,550,656,671,666,945,491,950,670,667,1037,553,1038,551,552,531,545,523,1002,1081] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5283,6042,6044,6045,6070,5546,5281,6177,5544,6212,6213,6214,6075] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2057,1334,1533,1791,1529,2201,1322,1329,1838,2056,1836,2055,1534,1530,1532,1827] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4925,4924,6350,6384,6351,6348,4972,5342,5343,4951,4954,4948,4949,4894] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5271,5554,5454,5455,5253,5434,5226,5561,5564] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        