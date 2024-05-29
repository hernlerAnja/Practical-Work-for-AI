
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
        
        load "data/5MQV.pdb", protein
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
 
        load "data/5MQV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4289,4291,4292,8708,17993,17994,17915,17916,17859,17860,17992,17974,17975,17913,4382,18082,18083,18085,18084,18105,8822,8764,8821,8785,8840,8933,8934,8935,8836,8839,8841,15242,8951,8952,8962,8931,18121,8930,8932,4213,4210,4211,4158,4236,4157,1504,4214,18086,18088,4419,17989,17990,18087,8968,4380,4383,4384,4385,4386,6071,6065,6116,8763,8707,8680,8762,8760,8761,4381,4287,4231,1433,4403,4272,4273,6047,6048] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [19787,13508,13511,19834,22518,22519,22520,22521,22517,22597,22598,22599,22464,22465,22543,13507,22688,22689,22709,22719,22720,22726,22580,22692,22579,22594,22710,13398,13509,13510,13397,13416,13417,13528,10556,10626,10627,13412,13413,13414,13361,13340,13283,13284,13337,27115,27116,27114,13544,27206,27207,27208,27210,27096,27209,27060,27036,27034,27035,22690,22691,22693,24349,27037,27038,27097,27242] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [14816,14832,13812,13808,13825,13831,15880,15892,15893,13834,15636,15899,14784,15879,15671,15877,13946,13811,13905,13826,13904,14116,14118,13906,13843,14087,14085,14086,14782,14785,14095,14112,14748,14752,14397,14328,14120,14873,14921,14851,14869,15670,15621] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [706,1093,1094,2189,2205,2201,2202,1091,705,1061,225,227,164,427,425,637,2206,429,2208,394,396,131,133,226,402,404,267,395,421,1057,1107,1138,1142,1143,1125,128,129,130,132,1930,1979,1980,1945,155,1141,1160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [9261,9263,9343,9344,9260,11103,11309,11312,11324,11325,11328,9259,9284,9342,9285,9293,9294,11331,10248,10261,9523,9525,10230,10216,10217,9760,10184,9556,9558,9533,9550,9554,9524,10214,9531,10180,9829,10264,10283,10305,11101,11102,10353,11053] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [18406,18407,18408,18409,18410,18544,18432,18501,18502,18503,18504,18441,20228,20488,20489,20491,20485,19424,19421,19443,20263,20213,20472,20469,20484,19408,18685,18693,18710,18714,19344,18718,19374,19376,19377] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [23073,23074,23075,23257,23566,23567,23939,23940,25031,25034,25046,25047,24790,23026,25051,25053,23987,23985,23986,24005,24823,23983,24825,24824,23076,23282,23286,23288,23907,23498,22995,23116,23970,22992,22991,23017,24775,24776,23952,23937,23256,23903] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [6546,6497,4687,4688,4779,4780,4710,4782,4719,6775,4684,4685,4686,4781,5727,5797,5749,5692,6547,5660,6756,5705,5708,4962,4963,5658,4988,5624,4992,4994,5661,6768,6769,6772,6773] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1400,1401,4354,5372,5376,5377,4356,4526,6638,6639,1434,1432,1430,4525,4475,6632,6636,6678,6681,6680,4373,6612] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [11168,27350,11188,11193,11194,24279,27197,11234,11236,11237,27178,27180,27230,11195,9933,9923,9928,24245,24246,24271,24275,27299,24277,27261,27349,9943] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [20355,20352,20354,20434,20435,19088,19092,19093,19103,20328,20394,20396,20397,13498,10557,13531,10555,13561,13479,13651,13532,13650,10523,10524,10553,13481,13648,13600] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2069,2071,2072,18075,2111,2114,809,18056,18058,810,15125,15123,18177,15092,15091,18227,18228,805,820,800] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [19683,19684,24959,22661,22663,24958,23681,23671,23666,24910,24914,24917,24916,23661,19713,19714,19715,19717,22675,22743,22832,22680,22713,22714,22744,22833,24890,22782,19736] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [6001,9075,8955,8956,8922,15756,15761,15762,15805,15736,8917,15804,8903,8905,14496,14500,14501,15802,14511,15763,14491,9024,5967,5968,5974,8985,5993,5997,5999,8986,9074] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [10097,10098,10099,10165,10166,10095,10096,10167,9112,10132,9146,9148,10100,9113,9118,9132,10068,9188,9190,9191,9578,9579,9184,9143,9538,9142] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [4613,4615,4616,5016,5017,5609,5610,4567,5544,5540,5611,4976,4975,4568,4571] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [19326,19256,19257,19258,19259,19260,19327,18290,18293,19228,18280,18289,18337,18738,18739,18698,18331,18332,18335] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [22890,22892,22891,23270,23819,22895,22874,23820,23889,23890,22933,22937,22939,23269,23311] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [9036,5860,5862,5863,5864,5865,5809,5859,5736,5737,5793,5794,11146,9498,10249,9033,9107] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [11135,11210,11212,13612,13614,11119,11120,10292,10293,10365,13636,13637] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [19081,13428,13452,19966,19968,19970,20023,20024,19087,13456,13457,10537,13450,20038] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [27311,24841,24857,24932,24934,27313,24086,24087,24014,24015,27335,24868,24862,24880] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [24059,24060,25554,25555,25965,25502,25529,24061,24058,24779] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        