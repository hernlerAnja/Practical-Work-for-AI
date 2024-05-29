
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
        
        load "data/4WWN.pdb", protein
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
 
        load "data/4WWN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4895,4896,3380,3381,3383,4897,4898,4899,4900,467,3382,468,983,986,988,1028,1022,1025,4428,4429,1030,870,999,1001,3369,3374,3375,4874,4875,3368,3370,3373,3653,889,984,5036,5038,5039,4926,5020,5059,5053,5056,5052,5140,4413,5069,3683,3684,3685,3686,3687,3688,4423,4427,3411,3732,3730,4923,4927,4922,4990,4996,4960,4964,540,1051,1052,1053,548,1013,4999,5001,5000,4928,4929,4932,498,496,4962,4963,987,1014,1016,1012,1021] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5191,5708,5709,5152,5176,4606,5681,5786,5789,5796,5797,4538,4539,4540,4534,4537,4582,4584,4524,4525,4598,4604,4768,5788,5045,5046,5048,5050,5130,5131,5135,4746,4748,5149,4747,4594,5155,5153,5047] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6393,6391,3189,3191,2865,2868,2869,3201,3202,2669,2670,2867,2197,2199,3190,3187,2198,6357,6359,2609,6263,6382,6384,6385,2608,6294,6295,3177,6238,2603,2604,2605,2613,2598,2625,2844,2596,2599,2631,3152,2833] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [877,878,880,429,430,1150,1177,1179,4393,4000,4392,3640,3642,3967,3974,3644,1187,3966,3639,3638,4432,4433,4391,4434,4435,3964,3965,898,448,900,445,447,3645,446,889,3646] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [6214,3117,4971,3356,3357,498,497,3102,3325,3358,3109,3111,3115,3098,4939,4930,4931,4933,4934,4935,6191,6189,4909,3393,3394,3381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2252,1986,2248,2249,2250,228,211,212,2074,3514,193,183,2256,2261,203,204,3844,1992,1990] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5628,5635,6376,5620,5626,6399,6400,5826,6330,5825,4858,6279,6255,6286,6287,6257,6373,6314,6329] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2920,1270,1780,2448,2449,2923,2924,1273,1803,3217,3221,3216,3224,2950,2982,2983,3233,2949,2951,2922,1813,2423,1815,2048,1809,1797,2422] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4569,4568,4768,4567,4551,4539,4540,5821,5822,5692,5693,5681,5797,5669,5819,5665,5667,6708,5685] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1029,869,870,1000,1001,855,1078,4690,1072,1073,1074,4695,4447,4448] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4999,5508,5002,5016,5507,580,581,1050,1048,4998,534,5496,5497,5501,5536,5538,5539,5498,5499] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4447,4722,4726,4727,4708,4418,4717,4729,5137,5144,5139,869,870,4429] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3783,3790,3793,2220,3794,3803,4815,3465,6299,6321,2218,2219,6320] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1503,1542,1486,1866,1867,2186,2227,1526,2225,2228,2229,2237,1502,2183,2187,1930,1521] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [6719,6721,5238,5236,6701,6702,6707,6672,5296,5298,5273,5275,5684,5676,5683,6704,5670,6676,6709] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2903,3198,2898,2900,3240,3187,3193,3203,1512,1510] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [953,1043,513,750,751,623,1008] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        