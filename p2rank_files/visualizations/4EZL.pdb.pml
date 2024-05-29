
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
        
        load "data/4EZL.pdb", protein
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
 
        load "data/4EZL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4429,4431,4430,5016,5027,1143,1073,4892,4893,4891,4919,4920,4921,4922,3384,3385,3386,4923,5035,4895,4896,5032,4894,1089,1116,1117,1119,1150,1112,1115,960,4834,4870,3378,4871,3349,472,1076,1077,3352,3376,3655,3656,3688,3690,3691,3373,473,979,1074,1080,1072,1079,3734,3371,3372,3377,4924,4928,4917,4918,4925,4956,4957,4958,4960,543,545,4959,4986,4996,4997,553,1103,1142,1141,1078,1104,5049,5055,4413,4416,4838,4415,3685,3686,3689,5065,3687,3735,3733] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5138,5142,4600,4602,4744,5143,4743,4540,4830,4784,4786,5791,5792,5790,5793,5127,4762,4764,4579,4580,4538,5045,5046,5782,5784,5704,5786,5785,5172,5705,5145,5148,5787,5681,5187,5677,5679,5680,4551,4550,5043,5126,5131,5041] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4439,4436,4393,4394,4395,4003,4457,967,968,969,970,4458,3675,3677,3641,3977,4437,434,1240,1269,3969,3643,3645,1277,3647,3975,3968,4000,4002,3970,4459,450,451,452,453,3652,3648,3649,989,990,979,3653,3654,3656] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2233,6262,6263,6352,6354,6231,6232,1597,6320,6317,6318,6319,3180,3186,3191,3192,3193,3194,2616,2601,2602,2612,6207,2836,3155,2872,2844,2834,2835,3203,3205,2634,2871,6311,6310] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [3786,5089,3796,3797,6274,4792,4793,4794,4811,6268,6275,6277,3468,2248,2261,6278,6279,6284,2260,3815,6290,6285] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [216,233,2067,3517,240,2293,2296,2297,3847,2291,3516,2289,2029,208,209,217,2117,2035,194,198,200,2302,188,207] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3120,3105,3328,3359,3360,3361,502,4931,4935,6158,4928,4929,4927,4967,6160,3396,3397,3114,3118,3103,6181,6182,3101] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [6283,5624,5631,5616,5622,6224,6226,6305,6343,6344,6345,6282,4821,6280,6306,6248,6256,6255,5797] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1878,1887,1881,1885,2091,2447,1875,1869,2441,3219,2952,2953,2986,2985,2448,2923,2925,2451,2927,2930,3228,3236,2955,2983,2956,2959,2051,2052,2442,2089,2050] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [979,471,1074,1080,1083,1072,1079,3653,3654,3656,473,451,453,978,3652,4431,4430,1073,960,1091,1089,1116,1117,1119,1120,1115,4439,4437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [4429,4431,5134,5135,5136,4430,5032,960,959,1091,1119,1120,4420,4449,4723,5133,4725,4728,5140,4718,4415] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [960,958,959,4709,1091,1090,1120,1161,4686,4692,1162,1164,957,945,1185,951,4450] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [3623,3632,3625,3626,459,460,415,417,419,420,414,413,3636,3338,3342,3345,3638,478,457,462,475,480,481,458,454,467,1025] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5234,5228,5231,5235,5665,6723,5672,5200,5292,5199,5227,5664,6688,5266,5271,5681,5679,5680,5678] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2245,2246,2248,2258,2261,6295,3817,2262,3815,2206,2003,2267,3798,3806,3786,3793,3797,2225,6285] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1006,791,817,901,915,884,1007,1008,408,1009,1019,794,795] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [969,4659,4657,4658,932,1225,1237,1240,930,988,990,931,1221] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2286,3844,2292,2293,2296,3847,2291,3516,3517,2284,3812,3820,3483,3856,3857,3849] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5948,5953,5954,5951,6581,5881,5908,5945,6579,5877,5880,5882] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [668,670,688,669,947,4670,1205,685,4680,4685,4677,4663,4668,4669,4671,4673] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        