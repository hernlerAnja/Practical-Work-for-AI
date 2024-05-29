
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
        
        load "data/5IF1.pdb", protein
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
 
        load "data/5IF1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4626,4568,4574,4624,4625,4577,5114,5115,5117,5116,5118,5119,4742,4878,5633,5639,4586,4587,4982,5558,5559,5560,5631,5632,5171,5174,5200,4981,5159,5167,5531,4727,4572,5140,5143,5151,5113,5123] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [7450,7451,194,230,7860,7885,7892,7884,536,538,36,35,535,630,527,551,7849,7850,7851,7852,7853,16,17,25,1,5034,5048,5049,24,7821,7819,7848,7883,526,530] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [83,646,658,663,666,431,641,639,503,504,1155,1159,1160,1066,1162,636,1054,1083,682,683,690,1082,674,1151,1154,640,265,266,267,139,140,141,111,102,250,637,638,85,87,84,95,89,401] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5012,5013,5015,3409,3432,3433,3434,3400,5003,4520,4521,4507,4510,4486,4501,4502,3402,557,565,571,5028,5029,2990,2999,3000,4707,4708,4671,5004,5007] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1227,1226,1228,3522,3677,3701,3703,3682,3556,1234,3586,3588,3675,3670,3672,2853,2861,2857,2860,2848,2851,4373,4375] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [7973,8152,8153,8154,5703,5704,5705,5709,8007,8008,5712,7308,7309,7311,7304,7302,8123,8133,8830,8832,8818,8834,8037,8039,8126,8122,8129] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2571,2580,2581,2915,2916,2888,3507,2919,2922,2563,2913,2950,3796,3797,3747,3870,3826,3812,3756,3497,3502,3848,3849,3508,3513] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1216,2425,2427,2463,1454,1457,2402,2408,2435,2437,3596,3597,1459,1458,1464,1210,1211,1214,1444,1230,3557,1234,1235,3565] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5931,5934,5936,5941,8047,6892,6859,6865,6884,6920,6882,5691,5693,6919,8016,8005,8008,5687,5698,5711,5706,5707,5710,5921] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4752,5090,4538,4633,4635,4636,4637,4753,4491,5092,4489,4535,4536,4632,4634,4513,4514,4515,4734] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5909,5858,5895,5896,6345,5897,6317,6339,6343,6344,6352,5934,5935,6659,5859,6660,6668,6310,6315,6652,6301,6316,6304] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [50,52,149,151,152,276,4,29,30,46,47,147,5,6,613,615,274,257] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [649,651,668,1141,650,1099,1124,2341,1112,480,479,490,655] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [7364,8202,8208,8299,8300,7965,8200,7401,8248,8321,8263,8277,7370,7373,7367,7339,7366,7948,7953,7956,7959] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1418,1868,1866,1867,1824,1833,1838,1840,2181,2190,2191,2175,2183,2182,1382,1415,1420,1432,1433] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7848,4779,5040,4819,7810,7811,7842,4816,7812,4790,4793,7817,5051,7850,7821] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5317,6793,6795,6537,6794,6787,6538,6536,6555] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7943,7982,5683,7603,7604,7936,7937,7320,7612] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        