
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
        
        load "data/5WB7.pdb", protein
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
 
        load "data/5WB7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [15573,15575,3121,15527,15528,15529,15530,3132,68,168,169,337,76,79,322,119,64,66,69,3130,15594,15596,15598,50,51,3123,3124,318,60,63,65,196,199,200,201,223,224,227,58,230,15514,15507,15508,166,156,15506,163,192,193,195,194,220,15593,15595,2392,2393,2394,2617,3108,2386,2615,2599,2616,2884,2885,70,71,54,2401,2457,15566,2447,2453,15576,15531,2430] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [10305,10795,10796,7754,9894,9895,9893,9824,10157,10161,10106,10108,10167,10586,10800,10815,10812,10813,10814,16279,16281,16236,16237,16245,16272,10822,16234,10587,10294,10295,10321,10163,10100,10323,10322,10114,10290,10291,5758,5763,10116,10293,5760,5762,9887,9903,9911,9904,9879,9889,5757,5735,9912,5719,5721,5722,9875,9888,5740,7769,7770,7771,7775,7778,7802,16244,7803,16240,5736,5737,10571] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.494,0.902]
select surf_pocket3, protein and id [14576,14090,14092,14356,14357,14583,14587,14591,16639,16641,16643,11571,11565,11568,11569,11570,14592,11566,11567,11594,11595,16598,16607,16640,16642,16633,16595,16596,16638,16597,11611,14597,14599,11609,13870,14075,14093,13876,13877,13878,13914,13927,14091,14089,13933,11562,11561,13917,13918,13919,13937,13931,14572,14570] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.353,0.702]
select surf_pocket4, protein and id [6972,15894,15962,3899,15893,15896,6967,6969,6970,15963,3884,3887,3889,3891,3890,3885,3871,3872,3879,4051,6296,15938,15940,6300,15931,6235,6290,6273,6442,6229,6458,6459,6460,6727,6728,6951,6964,6966,6974,6236,6244,6237,6945,6947] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.412,0.902]
select surf_pocket5, protein and id [5503,5505,5506,5429,5438,9322,9326,9327,9309,9227,9329,5336,5343,5348,5430,5431,5428,5435,5434,9319,9320,9321,9226,5408,5409,9335,9336,9338,9535,9536,9537,5445,5447,5448,5453,5454,5455,5439] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.286,0.702]
select surf_pocket6, protein and id [492,278,38,288,290,294,13404,1786,2038,39,1787,1785,479,279,20,480,682,666,667,668,1745,1751,1762,2024,13376,13377,13378,2027,2031,1742,1746,1783,13386,1740] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.392,0.361,0.902]
select surf_pocket7, protein and id [4012,4013,4014,4015,4017,3900,3938,3940,3984,3976,3977,4010,3884,3886,3885,3989,3990,3937,4040,4041,4045,4048,4049,4051,15957,15958,15960,15962,15892,15893,15871,15872,15873,15961,15959,15963,4022,4139] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.337,0.278,0.702]
select surf_pocket8, protein and id [5860,5857,5861,5868,3859,3860,9613,5584,4313,4111,4112,4115,4114,9612,9614,4503,9622,4502,4300,4301,4100,4099,5568,4488,5573,4487,5564,4489,5558,5562,5601,5605,5607,5608,5609,3841] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.475,0.361,0.902]
select surf_pocket9, protein and id [12292,12299,12030,12033,16482,16462,16536,16538,16539,16328,16329,16341,11837,11839,12032,11632,11634,11858,11603,12031,12035,12036,11585,16534,16535,16537,11584,12278,16481] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.400,0.278,0.702]
select surf_pocket10, protein and id [11721,11557,11571,11568,11570,14593,11719,11810,11829,11688,11687,11682,11683,11685,11612,14594,11684,11658,11660] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.557,0.361,0.902]
select surf_pocket11, protein and id [2140,13342,13343,13344,2189,2208,2135,2163,2127,2299,2300,2125,2126,2298,13415,13419,13420,13422,2187,2188,2178,2186,13414,13418] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.467,0.278,0.702]
select surf_pocket12, protein and id [8243,8244,8047,16177,16125,16175,16124,15983,16104,8238,8239,8241,8045,8240,7811,16190,8487,8488,8507,8506,16140,15981,8500] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.639,0.361,0.902]
select surf_pocket13, protein and id [5968,5818,5841,5978,5685,5688,5689,5674,5680,5671,5675,9658,9576,9582,9585,5983,5984,9593,9565,9573,9578,9577,5668,5669,5670,9563,9562,5969,5970,5972] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.529,0.278,0.702]
select surf_pocket14, protein and id [9854,5775,5776,5777,9862,9864,9915,9919,5720,9846,9847,9888,9903,9906,9911,9929,9930,10015] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.722,0.361,0.902]
select surf_pocket15, protein and id [13340,13341,13326,2140,13352,13327,13357,13421,13422,2011,2149,13353,1777,1778,2144,2143,2139,1988,1847,1849,1852,1853] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.596,0.278,0.702]
select surf_pocket16, protein and id [1630,13102,13294,13299,13301,13282,13286,13289,13290,1631,1632,1633,13091,13092,13093,13084,13099,1616,1617,1626,1683,1623,1625,1624,1613,1612] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.804,0.361,0.902]
select surf_pocket17, protein and id [1633,13090,13093,1608,12994,12995,1586,12990,13073,1587,13068,1518,1609,1519,1613,1612,1684,1606,1607,1683,1616,1617,1593] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.659,0.278,0.702]
select surf_pocket18, protein and id [13661,14559,14572,14342,14064,14065,13884,13886,1935,14060,14061,13885,13669,13670,13678,14063,13654] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.890,0.361,0.902]
select surf_pocket19, protein and id [7760,7763,7765,7758,7929,7930,7778,7766,7779,7761,7927,7893,7892,7820,7894,10800,10816,10825,10817,10826,10818,7750] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.678]
select surf_pocket20, protein and id [7868,7820,7894,7927,7896,7893,7895,7776,7779,8022,7765,8035,8019,8018,8032,7902,7901,10818] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.827]
select surf_pocket21, protein and id [8192,9740,9474,9742,9743,9744,9741,9748,8382,8366,8179,8367,7991,7990,7993,7994,7978] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.612]
select surf_pocket22, protein and id [13246,13247,13511,13519,11970,11971,11972,12159,13512,13496,13518,13500,13502,13505,13508,11984,11514,11515,11770,11771,11529,11786,11517] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.745]
select surf_pocket23, protein and id [2571,2572,2573,2225,2855,2352,2210,2213,2221,2179,2586,2587,2870,2228,2359,2183,2206,2363,2180,2184,2224,2853,2854] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.549]
select surf_pocket24, protein and id [13504,13505,13506,13507,13508,11972,12159,13512,11782,11984,12174,12158,11783,11786,11771,13238] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.663]
select surf_pocket25, protein and id [6429,6430,6206,6713,6207,6415,6416,6017,6040,6014,6060,6063,6059,6698,6044,6047,6055,6013] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.482]
select surf_pocket26, protein and id [10189,10351,10353,10389,10168,10171,10165,10392,10414,10415,10416,10155,10160,10149,10164,10166,10186,10349,10350] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.580]
select surf_pocket27, protein and id [10678,10679,10924,11445,10953,11472,11444,11446,11462,10670,10917,11095,11436,11437] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.420]
select surf_pocket28, protein and id [13645,13655,13652,13654,13669,13670,13653,1914,1911,1913,13659,1897,1899,1900,1915,13641,13640] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.498]
select surf_pocket29, protein and id [8192,9732,9744,9754,9755,9748,8179,8367,7738,9738,7978,7719,7994,7979,9736,9739] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.357]
select surf_pocket30, protein and id [14922,14707,15197] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.416]
select surf_pocket31, protein and id [4973,4976,4977,4764,4776,5578,5577,4763,5576,4780,5294,5296,5365,5355,5356,5357] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.290]
select surf_pocket32, protein and id [6322,6319,6489,6487,6301,6293,6297,6299,6552,6553,6529] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.388,0.361]
select surf_pocket33, protein and id [6059,6923,6694,6696,6697,6698,6187,6188,6905,6906,6055,6185,6409,6685,6058,6117,15303] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.333,0.278]
select surf_pocket34, protein and id [13404,2103,2105,2172,3090,3112,3113,293,294,2021,2022,13402,2024] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.471,0.361]
select surf_pocket35, protein and id [4015,4017,3900,3940,3984,3884,3886,4140,4143,3885,3989,3990,4158,4022,4139] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.396,0.278]
select surf_pocket36, protein and id [15626,15627,4362,4361,3963,4187,4186,4621,4380,15635,15633,4168] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.553,0.361]
select surf_pocket37, protein and id [13959,14185,13956,14159,14203,13935,13925,13934,14186,14184,14162,13938,13941,13942,13936,14119,14120,14121,14125,14123,14124] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.463,0.278]
select surf_pocket38, protein and id [12428,13000,12942,12997,13005,13007,13106,13214,12444,12627,12630,12631,12440,13008,13112] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.635,0.361]
select surf_pocket39, protein and id [13969,13971,13894,13899,13976,13906,13929,13959,14202,13979] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.525,0.278]
select surf_pocket40, protein and id [1730,1741,22,23,480,1785,1742,1747,1824,1809,1810,1784,1801,1724,1736,1710] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.718,0.361]
select surf_pocket41, protein and id [13703,13705,13712,14326,14325,14327,13822,13823,13819,13820,14317,13826,14040,13725,14531,14522,14548] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.592,0.278]
select surf_pocket42, protein and id [5955,5956,6012,5997,6042,6018,6019,6133,6015,6020,5964,6129,6132,5957,5946,5951] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.800,0.361]
select surf_pocket43, protein and id [7320,7331,7288,7650,7285,7565,7651,7652,7283,7116,7589,7099] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.655,0.278]
select surf_pocket44, protein and id [6757,6482,6756,7038,7037,6761,15726,15886,15725,15727] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.882,0.361]
select surf_pocket45, protein and id [10805,10828,9814,9897,11004,11005,11189,11190,11191] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.678,0.702,0.278]
select surf_pocket46, protein and id [7688,7689,7697,7699,7698] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.835,0.902,0.361]
select surf_pocket47, protein and id [15968,15945,15948,7018,6962,6973,6996] 
set surface_color,  pcol47, surf_pocket47 
   
        
        deselect
        
        orient
        