
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
        
        load "data/6C1S.pdb", protein
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
 
        load "data/6C1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4862,4863,4861,4864,4865,4892,5004,5005,1066,1068,1069,1070,4802,4805,4841,4866,5002,5009,5018,5019,5022,4399,3350,3289,466,467,1025,1065,1041,1039,3320,4840,3308,3321,3309,3322,3312,3626,3592,3622,3623,3625,3627,4383,3624,3342,3621,3670,3671,4398,910,4397,5025,4381,4384,5035,4808,4887,4894,4899,4890,4891,4893,4888,4889,4928,4929,4930,1091,1092,1093,4966,4967,547,537,539,4956,481,495,1026,1027,1028,482,1056,1054,493,4986,4978] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5661,5662,5739,5742,5157,5179,5634,4510,5142,4572,5743,5744,5645,5747,5748,5749,5750,4734,5012,5014,5016,5096,5101,5097,4713,4714,5108,5113,5115,5118,4756,4798,4799,4494,4520,4521,4550,4732,4733,5011,5741,5027,5178] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [918,919,4361,4363,4362,4427,3583,3938,3939,1217,1220,1227,3905,3912,3913,3904,3928,444,446,3579,917,447,880,939,940,920,881,882,3581,428,1190,1191,4403,4404,4405] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2547,2193,2195,2546,6316,3128,3129,3130,3140,3141,2808,1528,6212,6244,3116,6187,6211,2535,2537,2782,2542,2544,2552,2538,2772,3092,2770,2771,2775,2776,2780,2807,2571] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3332,3333,496,497,3295,3296,3297,495,3054,3056,3057,3050,3037,4905,4901,4898,4900,4899,6138,6163,4937,6140,4936] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [6234,6235,6236,6306,6307,6308,6305,6206,4824,5588,6228,5573,5779,6260,6261,6263,5778,6277] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [182,188,235,3783,2248,2252,228,3453,2246,2247,201,203,194,210,202,211,2066,2243,2244,2257,1985,2245] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4982,5446,5447,5453,5454,5489,5491,5461,5460,5448,5490,5487,5492,5451,533,579,4965,4968,1088,1090,580] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5169,5170,5637,5203,5204,5621,5622,5636,5638,5192,6670,5202,5205,5234,5235,5236,5241,6647,5251,5253,5191] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2225,1491,1507,1854,1871,1872,1477,2220,2221,2223,1969,2232,1506,1530,1526,1547,1508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4653,4657,4661,4418,4660,907,909,910,895,4417,901,4648,899,900,4649,4645,1040,4692,4615,4616,4674] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4039,4040,5045,5050,5077,4005,4012,3718,5053,5057,3683,115,121,123,3688,3977,3981,3982,4014,102] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        