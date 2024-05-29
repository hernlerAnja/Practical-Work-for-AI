
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
        
        load "data/3APC.pdb", protein
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
 
        load "data/3APC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4761,4760,4762,4904,4790,4791,4885,1113,1114,1084,1085,1086,4763,4764,4765,4901,4903,4739,4918,4707,4924,4921,3306,4703,4792,4861,4877,4880,516,518,4864,4865,4866,4867,4881,1106,1105,5355,4793,4794,4785,4786,4787,4788,3265,3268,3277,3278,3547,3548,449,450,1040,1055,1057,943,944,1081,1082,4740,3264,3276,3582,4303,4302,4287,3583,4301,926,3627,3580,3578,3579,3581,1042,1043,1044,526,1070,1072,1078,1069,1068,4797,4796,4798,4827,4828,4829,479,3245,478] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5015,5556,4613,4475,5010,4473,4474,5637,4698,5638,5641,5642,5644,4655,4914,4915,5635,5633,4994,4411,4612,4631,4633,4453,5539,5555,5636,5054,5528,5039,4422,4396,4429,4421,5048,4993,4998,5012,4913,5018] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [427,430,3537,411,3539,1200,1237,3535,932,4312,935,936,4267,429,4308,4309,3534,4306,4307,4311,3869,3861,3894,3895,1227,1229,4266] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4796,4798,4836,3288,3289,6045,6047,6071,3008,3016,480,478,3251,3252,3253,479,3014,3010,2997,4804] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [175,181,197,187,189,190,1980,2240,2236,2244,2249,169,3738,3739,3740,222,180,221,216,2237,1988,214,3409,2021,1986,2070,2007,1982] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4680,3678,3698,2207,2208,2206,3709,6176,6177,2171,6156,6178,2194,2195,3660,3359,3688,3689,3360] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6091,6119,6120,6151,6152,6204,6225,2512,6150,2181,2177,2501,6126,3076,6095,3089,3088,3090,3082] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5523,5065,5066,5087,5089,5094,5095,5098,5515,5516,5099,5158,5160,6549,6551,5126,5130,5067,5529,5530,5531] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4322,4591,4582,5007,4560,4573,5003,923,925,4321,4514,917,4303,911,4548,4544,4547,915,4552] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3087,3089,3099,2768,3088,3090,3076,6095,3049,3052,2767,2740,2534,2501] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3234,3237,3530,3515,452,422,434,436,437,391,3518,3230,3517,390,392,444,3524,455,458,3225,3228] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1055,943,944,3548,450,4302,4309,4311,926,4312] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1100,600,603,604,606,1144,558,562,589,608,593,598,597,1122,553,551] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        