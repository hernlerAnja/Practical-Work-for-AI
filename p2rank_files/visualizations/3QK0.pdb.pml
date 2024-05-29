
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
        
        load "data/3QK0.pdb", protein
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
 
        load "data/3QK0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1004,3234,998,999,1000,1002,1003,1028,1005,1006,1009,1030,4847,4848,1032,3264,3266,3268,3231,3265,3267,472,3538,440,3257,443,444,3569,3571,3570,3572,3573,4320,886,4312,885,905,4313,4322,902,903,904,442,1015,884,1017,3254,3285,3288,3615,3617,3258,3255,1067,1068,4808,4811,1069,4806,4807,4849,1042,1043,1044,1038,1041,1029,4818,4780,4813,4817,4814,516,4845,4784,4785,4921,4937,4314,4783,4923,4924,1045,1046,3296,4723,4759,4760,4748,4750,4781,4782,4938,4941,4944,4298,4954] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5015,5020,5674,5014,4632,4633,4422,4425,5031,5032,4490,4491,4719,5676,5679,4653,4675,4691,5680,5681,5682,4672,4651,4652,5016,4469,4930,5593,5040,5594,5034,5037,5061,5673,4931,4933,5671,4946,5076,5566,4435,4436] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2494,2483,2489,2490,2504,6114,6139,6170,6171,6261,2147,2148,2149,2150,2151,2152,3068,2718,2754,3085,3087,2750,2752,2753,3037,3062,3073,3074,3075,3076,3072,1474,1488,1492,6269] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [423,424,405,3529,1166,406,422,3523,3524,3525,3858,3527,916,4318,895,4278,896,3557,4319,4320,3531,3850,3884,3885,1193,1195,3848,3851,4276,4277,4342] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2201,165,177,187,171,188,179,180,2205,2209,2214,3729,169,211,159,168,1943,2202,2203,204,1945,1971,1977,3399,2027,1939] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3279,3277,4856,3242,3243,472,474,2996,3000,3002,2994,3003,2993,2983,2987,4818,4820,4824,6090,4817,4816,6064,6066] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6162,6249,6250,6163,6221,6188,6252,4743,5513,5520,5686,6190,6155,5714,6187,6206,5711,5505,5511,6131,6133,6275,6276] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6575,6576,6587,6588,6593,6595,6630,6629,5122,5123,5124,5121,6548,5181,5183,5088,6577,6597,5152,5089,5568,5569,5570,5559,5562] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1429,1823,1824,1841,1843,1883,1522,2178,2180,2181,2182,1483,1498,1478,1460,2190,1806,1807,1929,2177] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6173,6175,6196,6167,2171,3350,2172,4700,2173,3668,3678,3675] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5764,5464,5645,5449,5450,5459,5460,5666] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [100,92,98,3634,3664,4964,3960,4969,3985,3952] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4580,4581,4314,4332,4602,4611,4333,4593,4594,4534,875,871,883,4568,4567,886,885] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        