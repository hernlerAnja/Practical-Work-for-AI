
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
        
        load "data/5G2N.pdb", protein
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
 
        load "data/5G2N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1056,1082,1084,1077,1080,1108,1116,4882,4904,4905,3357,3359,4906,4907,5046,4931,4933,4934,4844,4871,5051,5060,5061,4908,5044,4424,4434,4437,4438,4439,5147,925,4440,4846,4847,3387,5067,5077,4972,1106,1107,541,4929,4936,4930,4971,4998,512,533,3346,3358,460,1042,1043,3325,3348,1054,461,1037,1038,1039,1044,3345,3661,3662,3663,3664,4448,3628,3629,943,4449,3706,3708,3659,3660,3349,3326,476,489,1069,1071,4935,5028,5008,5010,5047,4874] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5185,5675,5676,5160,5184,5758,5761,5762,5763,5764,5753,5755,5756,4614,4756,4548,4550,4549,4613,4775,4776,4798,4592,5737,5154,4755,5139,5143,5150,5157,5155,4839,4840,4842,5069,5053,5054,5056,5058,5138,5055,5161,5163,4561,4562,4536,5198,5660,5648] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3614,3615,3621,3622,439,440,441,3625,4444,4445,4446,3626,3627,943,935,422,1205,3616,3618,944,4403,4467,3949,3940,3948,3974,3976,4404,3941,3975,1232,1234,3620,3943,3942,3648] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [191,200,207,208,2262,2270,2276,197,199,2000,2090,2002,2006,2008,2263,2264,3490,231,221,226,217,2269,3820,2266,179,3819,3821,185,190,224] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3167,2575,6215,6216,2574,2585,3165,3166,6191,6246,6247,1562,3159,6248,3128,2589,2607,2843,2844,2845,3164,3125,3153,3177,2807,2809,2808,6290,6288] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3301,3332,3333,3334,490,489,3091,3093,3078,3087,3085,3094,3074,488,3370,6164,6165,6166,6141,6143,4947,4940,4941,4939,4979] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5602,5587,6281,5768,5785,5787,5788,5769,4864,4866,6232,6240,6210,4829,4830,4833,6266,6267] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3759,4823,3766,3769,3770,2232,2233,2234,3788,3790,6244,6252,2227,3741,6258,3441,6268,6269,6272,6270,2197,4806,6259,6262,6263] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4437,4438,5146,5147,5148,924,925,4440,4458,4459,4703,4687,4690,4702,4691,4697,4716,4730,4735,4657,4734,922,923,914,910,5169,4717,4725,5171,5152,4740,4737] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5211,5234,5635,5636,6626,5253,5263,5232,5209,5212,5641,5651] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [466,3318,3611,445,467,447,448,3311,3598,403,405,3596,3605,402,468] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5773,5775,5537,4899,5559,5560,5556,4898,5535] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4567,4568,4561,4562,5660,5659,4577,4797,4775,4776,4798,4574,4576,5776,5762,5763,5764,5777] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        