
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
        
        load "data/7K6N.pdb", protein
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
 
        load "data/7K6N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5979,5270,5271,5899,5981,5982,5370,5372,5397,5353,5360,5364,4801,5366,5369,4984,4986,5349,4966,5348,4965,4753,4754,4755,4758,5874,4779,4742,5414,5439,5395,5900,5438,5049,5983,5984,5987,5048,5050,5988,5989,5990,5266,5268,5269] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5114,5115,1133,1135,1134,3871,4615,4616,4617,3902,3903,3904,3953,3954,5058,3586,3905,3906,3585,3587,3588,3877,3907,3908,4603,4605,3868,5086,5087,5113,3590,3592,3594,5088,5090,3596,5112,3589,5149,3625,3618,3624,5078,5273,5274,5277,4609,5257,5259,5052,5280,5054] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5775,5798,5801,5802,5803,5773,6234,5776,6205,6206,6212,6671,6672,6675,6215,6664,6665,5795,5777,6038,6041,6042,6183,6081,6674,6185,6233,6648,6650] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2362,179,193,177,178,194,2155,2157,2149,2148,4016,2368,2370,2373,2367,2114,2365,2111,2112,2120,2117,2118,2133,2142,2196,2145,2374,2224,2218,2219,2220,3730,3732,3707,195,3715,3725,3719,2358,4058,4055,4059,3698,4025,3721,4050,4042,4051,4046] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5892,5848,5849,6038,6049,6072,5775,5801,5773,5776,5973,5974,5750,5795,5777,5850] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2352,2331,2342,2343,2346,2348,2332,2349,4012,4011,4027,4028,2356,2358,2091,6420,6411,6412,6405,2347,3691,6417,6413,3678,6421,6423,2267,2282,2283,2279,2285,6463] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [491,1130,1131,1161,1167,1168,1171,1172,489,490,487,1164,1158,1191,1192,1159,1170,1133,1134,5141,5140,5110,5148,5149,5189,5177,5178,553,1193,5188,530,5112,5233,5241,5259,5142] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5300,5329,4264,4296,4297,5303,4242,4269,4272,5306,5309,3968,3970,3971,4244,95,3943,3966] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3864,4176,4201,4202,440,441,3863,438,1334,1318,1327,4587,4588,4648,4174,4200,4164,450,452,1015,1018,451] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4617,4638,4639,1010,1027,475,1136,1137,1140,1142,1144,4907,4908,1171,1172,4918,5356,5358,5357] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [5380,5381,4917,4918,4919,4915,4914,4916,5356,5358,5354,5357,4594,4606,4608,4636,5355,4941,5362,4945,4942,4614,4617,4638] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5749,6204,5708,5714,6206,6101,6065,6066,6081,6067,6042] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3391,3389,2340,2338,1659,2336,1661,1662,1658,1663,1664,6480,3398,2345,2347,3387,3390,3689,2341,2344,2346] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1557,1558,2071,2073,1583,1584,1805,1806,1987,1559] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        