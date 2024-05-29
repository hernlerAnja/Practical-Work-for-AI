
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
        
        load "data/7MLK.pdb", protein
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
 
        load "data/7MLK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5454,6424,6425,6428,6420,6423,6340,6341,6404,6422,5200,5371,5777,5779,5782,5783,5810,5146,5147,5134,5135,5117,5851,5808,5852,6315,5827,5680,5761,5785,5682,5684,5178,6429,6430,5151,5762,5370,5427,5389,5390,5391] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5487,5488,3969,5491,5492,4247,4248,4250,3936,4249,3929,3930,3933,3934,3931,3932,3940,5521,5523,5525,3938,1256,1254,1255,3908,3903,4251,4252,4994,5003,5013,5004,5005,5006,4214,4215,523,522,4216,5687,5690,5693,4998,5459,5481,5483,5677,5482,5671,5670,3967,4297,4298,3961,5702] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2303,2308,2413,2415,2336,2339,2387,4042,4059,2309,2312,4051,2305,2346,2332,2333,2568,2572,2577,4021,2580,2584,4394,216,217,218,233,4075,4402,4403,4069,4074,4076,2348,224,4375,4376,4395,4399,4369,4386,4390,2583] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [4372,2556,2559,2553,4020,4022,4021,2560,2282,2542,2566,2567,4371,2562,2563,6976,2478,2477,6924,6926,6934,6918,4035,4033,2541,4355,4370,4378] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1279,1288,1289,1292,1293,1315,537,539,1282,1283,5553,5555,5590,5591,1314,538,5601,1280,5519,5521,5562,5563,5525,1253,1254,1255,5554,5654] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5717,5719,5742,4649,4648,4612,4624,4622,4623,4343,4345,5722,4287,5713,4310,4314,128,4315] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1452,1472,1132,486,488,498,4207,499,500,489,4975,4977,1135,5037,5010,4976,4506,4511,4547,4548,4549,4550,4508,1471,4520,4208,4518,4512] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1258,1263,1299,1261,5004,5005,5006,522,1142,1143,1144,1127,1265,5308,5309,5310,1141,5027,5028,1292,1293,5320,5306,1334,1322] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [7215,7207,7208,7209,7217,7219,7233,6525,6500,6237,6238,7185,7187,6512,6521,6527,6532,6533,6211,6236,6210] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5537,5569,5571,3952,6823,6825,6846,3664,3665,3667,5534,5600,5602,3918,3917,5560,3941,5601] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3769,4064,4066,2136,2137,4052,4053,4055,2365,2343,3790,3752,3765,3767,3768,3792,4046,4089,4080] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5434,5435,5436,4348,5418,5721,5730,4347,5728,5419,4356,4327,4330,4319,6936,6933,6934] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2989,2904,2905,2908,3518,2892,2868,2901,2990,3527,2988,2922,2997,2976,2977,3515,3516,3524,3499,3548] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4503,4528,4531,4537,4500,1489,4481,1491,1492,1490,1493,61,62,23,28,53,89,4504,4505,4509,4502,4501] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [2555,2557,6921,6993,6972,6919,3728,2556] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5320,5775,5794,5345,5769,5770,5768,5025,5027] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4504,4508,1469,1470,1471,1475,1481,1488,1487,4501,489,452,1472] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2320,1658,2381,2685,2692,1640,2098] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6890,6892,6257,5477,6462,6464,6255] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        