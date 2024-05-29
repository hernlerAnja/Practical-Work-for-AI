
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
        
        load "data/7S0Q.pdb", protein
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
 
        load "data/7S0Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14666,14671,14674,14735,14681,14685,14686,14105,14106,14108,14120,14574,14575,14122,14161,1314,1315,4859,1316,872,471,472,888,890,429,431,432,433,469,101,14560,14555,14558,873,1309,1312,14638,57,14611,14613,14042,1355,1357,14125,4823,4824,4825,1330,1333,1352,4876,4877,14733,14734,14109,14695,14675,14728,4871,4822,4856,4857,4858,14040,14096] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [10638,13215,13213,13214,11579,11583,11584,12445,11059,12499,11058,11573,12442,12458,12460,12462,12224,12225,13723,13726,12263,12264,12627,13764,13765,13249,13232,13782,13778,13763,12540,12541,12543,12577,12587,12589,12591,12498,12487,12452,12453,12472,13296,13297,13293,13354,6093,11559,11555,11543,11553,13356,11558,11560,13299,13301,13779,13840,13265,13268,13292,13262,13784,5573,5549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [7061,7062,7961,7959,8625,7759,8623,8869,8621,8622,7143,7144,8867,10585,10586,10588,10049,10052,10054,7107,7108,7975,7057,7104,7955,7962,7985,7986,8025,8022,8655,8809,8653,8654,8642,8846,8847,8848,8853,8641,7000,10558,10559,10560,10561,7003,9603,9604,10016,7723,7724,8620,10011,10557,10014,10015,8129,9599,7725,6638,6616,7048,7050,7096,6639,7119,7117,6642,7127,7131,6984,7036,6986,6628,6985,8806,8823,8827] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [13971,13972,13974,13976,13977,5099,5101,4786,4787,4752,13951,13952,14024,14027,13895,13295,13898,13953,12147,12148,5100,5135,4838,14038,14040,4727,4750,4753,14036,14022,14023,14032,14033,14855,14094,14095,14096,14797,14807,14838,4729,4730,4732,4657,4658,4660,4656,14793,14806,14778,4877,4878,14731,14732,14092,14109,14755,14751,14042,5063,5546,13314,13315,13323,13324,13327,13294,13313,13328,4714,4673,4667,4671,13282,13283,13284,13300] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [13951,13952,14024,14027,14900,14903,14905,14887,14888,14889,13971,13972,13974,13976,13977,4787,13895,13295,13898,13953,12147,12089,12090,12092,12148,12075,12076,12085,14036,14022,14023,14032,14033,14094,14095,14838,14854,4753,14902,14904,13294,13313,13316,13382,13404,13282,13283,13284] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5044,5722,5778,5529,5672,6019,5489,5080,5082,4767,5340,5626,5706,5081,5115] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [1313,1314,1315,4861,1316,1295,4191,4192,14674,4102,4230,4234,4210,4213,4226,4202,14664,4190,4215,4216,3762,3754,1287,1292,1296,4246,4911,4912,4913,4915,4914,4856,4857,4858,4243] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [12461,12462,10633,10660,10661,12444,11096,11591,11595,11603,13457,13458,11054,11573,11092,11572,10638,13214,11582,12445,11607,11140,11125,11126,11191,10662] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [907,945,487,946,1086,1125,1146,1042,1124,486,1007,183,629,685,236,686,112,237,1039] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [10416,10433,10513,10514,10954,10418,10420,10461,10462,10952,8715,8701,9952,9953,10406,7657,10955,10542,8684,8685,10512,9992,8686,11415,8752,11424,11429,11412,8745,8750,8751,8746,8749] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [13931,14012,14013,14080,14081,12106,12107,14296,14297,14300,14346,14299,14344,1915,1916,1917,1516,1497,966,968,1514,1515,984,14362,12121,12104,13955,13956] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [11543,13358,11544,11547,13355,13356,11560,6532,6517,6974,6091,11511,11488,11489,11487,6075,13342,13343,5549,6041,6074,6482,11490] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [11416,10991,10993,11415,6929,8752,11455,11458,11410,6907,6911,8749,11510,11511,11488,11489,11464,11483,6931,6932,6930,6936,6900,6901] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [11923,13158,13156,13157,13159,13560,13518,13520,11885,13558,11922,11712,11714,11713,11709,11710,11763] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [23,25,3806,358,372,3507,3508,807,3403,3502,3505,3551,3393,3540,3550] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2127,1727,1724,2951,2967,2972,3029,2971,2131,3266,3269,3036,3058,3080] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [8655,8653,8654,8680,8685,10561,10542,7003,10016,10017,7691,7724,7693,8686,9992,6986,8810] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [10241,10820,10699,10307,10701,10245] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [13933,13876,13888,12179,12120,13931,13957,14013,1915,1916,1917,13955,13956,12121] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [6441,6900,6901,5988,5989,11490,11491,5962,5960,6440,11488,11489,6930,6936] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [8569,8570,7777,8386,8430,7378,8537,8539,8419,8973,8974] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [10573,10618,10494,10529,10128,10129,10039,9974] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [9584,10161,9247,9723] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        