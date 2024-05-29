
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
        
        load "data/5UWQ.pdb", protein
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
 
        load "data/5UWQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2107,2109,2190,2191,2192,1555,1557,1500,1501,1502,9546,8944,8945,8964,8965,8898,8138,8057,8058,8060,8122,8123,8124,8125,8139,8140,9030,9027,9029,8963,2165,2185,9597,9598,1558,2187,1627,1623,1624,1637,1696,1638,8901,8059,7988,7989,1567,1571,1642,1644,1691,2168,9664,9665,9028] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [944,949,965,1023,966,969,970,972,973,1062,1063,8193,1595,1597,1060,1061,6533,1056,1059,1079,6531,1085,6468,6520,1574,1594,1596,1641,1083,1084,1086,7306,7350,6521,8073,8074,8075,6466,6469,6518,6519,164,1532,1533,1534,1536,1537,934,1128,1129,1667,1593,1057,6590,6591,6592,7418,7474,7417,7419,20221,953,20236,954,956,166,172,488,490,1400,20263,20265,20267,1473,1518,158,1474,1515,1360,1363,1364,1416,1399,156,159,167,157,20259,19407,20285,20286,19408,19409,20230,20231,20232,20266,1321,1324,174,1350,19406,19418,19411,19419,19432,1348,19436,19438] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [192,193,482,171,172,485,486,487,488,489,533,225,227,505,462,528,522,531,953,199,203,221,226,532,165,207,941,1841,174,1842,1893,1843,1844,178,440,1829,238,239,240,234,411,412,425,1880,1881,2354,2356,2350,1827,1828,2340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7760,7902,7711,6994,6995,6996,7759,7383,7650,6933,6931,6935,6936,7600,7702,7645,7648,7597,7697,7698,7710,7699,7888,7845,7041,6973,6989,6990,7846,6974,6976,7952] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2246,2287,2247,2548,2603,2285,2468,2473,2474,2627,11367,10575,2702,2470,2543,2546,2599,2530,2528,2601,2699,11366,11347,11365] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [8267,7470,7493,7494,7496,8269,21771,6589,21772,21773,8189,6587,6590,6592,7418,7474,7414,7473,21712,21804,21810,21814,6677,6678,8194,8204,8207,8220,8266,21696,8190,8226,21856,21857] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [16228,16227,16240,16244,15280,15279,15299,16324,16325,15227,15231,16232,16229,15830,15351,15768,15787,15102,15106,15109,15159,15782,15785,15764,15765,15766,15781] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [13656,13703,13704,13705,13723,13724,13726,13727,13707,13769,14446,14447,22190,22191,22192,14378,14379,14380,14381,14406,14407,13654,13657,13658,13780,14493,14327,22185,22186] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [20143,21048,20137,20138,20080,20081,20141,21050,21049,20197,21123,21108,20121,20123,20119,20120,21067] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [8899,8901,8900,8787,8788,7875,7217,7215,7216,1692,1694,1695,1696,7291,7290,7934,7989,8854] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1736,1737,1740,1742,2626,2622,2623,2625,1709,10537,10513,1750,2209,10642,2627,10571,10584,10589,10542,2222,2239,2240,2553,1720] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [19166,19129,19839,19877,19838,19133,19167,19168,19170,19892,19895,19889,19888,19132,19953,19970,19971,19836] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [14437,14435,14436,13779,14486,14487,14490,14491,13780,13725,13726,13727,14422,12225,13055,13739,13734,12228,12229,12230,12149] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [312,2390,2440,2442,309,381,383,4271,3896,4251,4253,3887,3893,4274,4275,3855,3898] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4394,4174,4743,4175,3643,4953,4422,4983,4741] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [20303,20304,20305,20266,21678,8175,8176,8174,21603,21676,21599,21601,21597,20260,20262,20263,20264,20265,20267,1453,8178,21750,21751,20306,21605] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4937,3087,4932,3033,3035,3732,3736,3085,3084,3703,4905,4913,4914,4906] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4758,3034,4781,2925,4514,4498,4500,3031,2993,2991,2938,4496] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        