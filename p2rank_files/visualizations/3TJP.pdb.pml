
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
        
        load "data/3TJP.pdb", protein
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
 
        load "data/3TJP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4733,4734,4870,4886,4291,4293,4730,4731,4732,4872,1052,4672,3313,4708,4709,4887,4890,4277,4903,4290,4674,4893,4759,4760,1048,1050,1078,1047,4824,4794,4795,4796,4797,4835,518,527,1035,1071,4729,4754,4757,4758,4762,4780,4756,4763,497,517,3270,3275,3554,3555,3585,3587,3589,3590,3588,3586,445,3272,3274,4292,446,1021,890,1023,3271,3632,3634,1008,1010,1009,4798,1038,1034,1036,476,3283,3284,3285,474,4761,4854,4846,4837,4830,4786] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5532,5025,5505,5508,5509,5613,5010,5533,4400,5618,5619,5620,5621,4602,4410,4581,4965,4458,4582,4624,4600,4879,4880,4882,4884,5610,5612,4964,4969,4983,4981,4986,4667,4668,5615,5614] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2519,2520,2535,2514,2546,2515,2525,6042,6044,2156,2158,2159,2160,3092,3093,6101,6102,6069,6070,6076,3091,3090,3102,3079,3052,3055,2745,3104,2547,2753,2743,2744,2749,2780,2781,2586,2521,6153,6181,6154,6175] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3542,422,423,424,425,920,3544,3546,407,3540,922,1164,4298,4299,4296,4297,4301,4302,426,910,911,899,900,901,902,3553,3548,3541,3896,3874,3868,1201,3876,3897,4257] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5033,5752,5754,5541,5566,5342,5344,5306,5197,5195,5203,5565,5552,5305,5051,5540,5163,5165,5166,5032] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3415,3416,210,2204,3711,3755,3756,3752,2211,3391,1938,1940,2022,2206,2210,1934,3747,2209,175,177,217,165,171,193,194,212,2213,2216,2217,183,185,186,3382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3295,3296,3019,3227,3258,3259,3260,476,3281,3282,4805,473,474,475,3004,3013,3017,3011,3000,3280,4773,5995,5997,6021,4767,4768,4769,4766,4764,4765,4804,4803] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5109,5110,5097,6497,6461,5111,5112,6427,6433,5118,5059,5035,5037,5038,5069,5066,5492,5493,6523,6454,6455,5498,5499,5500,5057,6435,5058] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4338,4484,4326,4328,4332,4337,4215,4191,4194,3955,3985,3976,4247,4486,4219,4245,3956] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2181,3685,3695,3692,3714,2168,2180,4649,6106,3367,3696,6122,6123,6126,6127,6116,6117] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [6465,6466,6467,6468,6469,6425,5111,5112,5125,5127,6427,6433,5117,5118,6470,6437,5128] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4870,4973,4291,4293,4974,1051,1052,4290,4311,4561,890,892,1023,4978,4546,4997,4551,4566] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5584,5605,5374,5712,5403] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1895,1897,1886,1367,1372,1373,2116,1400,1592,1593,1885,1354,2286] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [491,975,978,488,490,561,563,977,1037,1065,1030,598,552,556,1066,527] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1092,1088,878,1106,1109,1110,1111,1113,877,892,872,1019,1022,1058] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1136,625,791,788,789,793,768,626] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        