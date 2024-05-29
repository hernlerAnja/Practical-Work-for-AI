
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
        
        load "data/8EXU.pdb", protein
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
 
        load "data/8EXU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5233,5425,6427,5255,5426,5190,5201,5202,6344,6345,6426,5863,5865,5837,5882,5907,5172,6428,6429,6432,6433,6435,6319,6424,5816,5821,5832,5834,5838,5840,5507,5510,5817,5737,5739,5738,5734,5736,5445,5446] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4302,4303,4304,4305,4352,4353,5742,5745,5748,5757,5725,3986,3987,4271,522,5049,5053,5059,5061,4306,4307,5060,5068,521,523,4269,4270,4023,3991,5558,3989,4017,3985,3988,5555,5517,5521,5544,5550,5551,5554,5546,5581,5582,5545,5732] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2619,2359,4106,2625,2624,2627,218,2474,2631,216,234,4118,4120,232,233,2383,2387,2393,2395,2380,217,2386,4097,4457,4458,4424,2615,2503,2630,4129,4130,4449,4454,4131,2345,2352,2355,2356,2371,2350,2435,2462] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3996,5618,537,538,5617,5578,5580,5581,5608,5609,5610,5583,1315,1316,5649,5656,581,582,1284,1286,1290,1293,1294,1313,539,1254,1255,1256,5709,5700] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [4602,4603,4604,4605,1460,1473,1466,1463,1453,1470,5015,5025,5030,5032,5091,498,1133,1136,500,5031,5065,1132,4573,4575,4262,486,488,489,478,480,4559,4563,4566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [7005,7059,2329,2588,2589,2509,2600,2607,2608,2609,2606,2603,4088,4090,2601,2524,2525,2545,7063,7062,7064,4427,4426,2610,2613,2502,2496,7011,4411,7013,4077] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5774,5777,5768,4704,4645,4678,4679,4365,4390,4369,4647,4370,128,130,4703,5797,4342,4667] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [522,1257,539,1253,1254,1255,1256,3996,5618,3973,3992,3993,3995,3963,538,5580,5581,5582,5583,3989] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2619,4106,4114,4124,2625,2624,2627,218,233,4097,4457,4458,4424,2615,2630,4129,4445,4449,4454,4450,4131,2646] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4103,4101,4141,4144,4135,2390,2412,2413,4119,4121,4112,4148,4153,4154,3822,3823,3824,2184,2185] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [2474,2631,2466,2460,2359,2624,2627,2383,2380,2345,2352,2355,2356,2350,2435,2434,2461,2462] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3554,3570,3571,3573,2918,2921,2922,2942,3582,3579,3031,3032,2974,2975,3044,2952,2955,3057,3058,3059,3350,3603] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3996,5616,5618,3973,3995,3963,538,5580,5581,5583,1257,539,1254,1255,1256] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1473,453,1470,451,489,478,480,390,4552,4559,4563,4556,1482,1485,1486,391] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5776,5785,4402,4403,5778,4382,4374,5491,7021,7023,4385,4409,4411,5490,5473,5489] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1176,1172,435,436,438,440,1191,1087,1407,1408,1440,1442] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1104,1394,1378,1458,5316,5317,5318,5319,5324,5326] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1078,1079,1386,734,1000,1001,962,963] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [7333,7334,6629,6628,6712,6711,6760,7335,7355,7353] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        