
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
        
        load "data/6GL7.pdb", protein
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
 
        load "data/6GL7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [20190,20211,20233,20246,20212,20250,2063,2099,20253,20254,2575,2577,2620,2623,2626,2628,2636,2639,2640,2737,2736,2733,2725,2264,2553,2554,20835,20836,20837,20238,2288,2758,2759,2754,2760,20869,20870,2607,2605,2246,2247,2098,2167,2168,2169,20249,2112,2116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [21291,21292,21293,21253,20968,21294,21295,21296,21297,19573,21670,21671,2706,2707,5820,2681,2697,2701,2704,2683,5821,2677,2662,20213,20215,20216,21255,20178,20174,20179,20187,20188,20193,2700,20168,20169,20208,20936,20937,20935,20938,5766,21722,19532,19533,19542,19541,19530,21158,19529,21186,5818,5819,5778,21172,5733,5781,21173,21182,19576,19579,19581,21683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [8430,8431,8724,8749,8795,8798,8726,8799,8800,8796,8797,8915,8917,8926,8909,8932,8459,8460,8927,8918,8930,8436,13749,13750,13751,13147,13160,13104,13125,13105,13784,13783,8269,8271,8417,8339,8341,13168,8415,8792,8270,8775,8808,8811,8812,13164,13068,8920] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [20178,4928,4968,4916,4918,20195,20196,20197,20174,20179,20187,20188,20193,4967,2700,4913,4969,20208,5034,20917,20936,20937,5000,20935,20938,21294,21296,2706,2701,2704,5114,20885,20919,2824,2867,4930,4931,2748,2796,20886,20868,20866,20883,2287] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [8873,14211,13088,13083,13101,13102,13128,13129,13130,13127,14167,12493,12495,14206,14207,14208,14209,14210,14204,14205,12456,13851,13849,13850,13852,12487,12488,8869,8872,8834,8849,8876,8878,8853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [9143,9144,9091,9092,11409,11410,11411,11420,11372,9024,9025,8981,8982,11116,8969,9142,10148,10213,11360,10214,8512,8513,10078,10080,8516,10060,10195] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [2852,2853,2809,2919,2340,2342,2343,2344,5239,5285,5237,2339,3906,3908,3911,2971,2972,3971,3976,4040,4041,4042,5279,3888,3944] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [11989,8878,8879,8853,8854,8855,8856,8857,8859,11990,11991,11992,11993,11937,11950,14597,14635,14636,14637,14584,14585,11953,14671,12445,12446,12447,14670,12495,12456,12422,12455,12420] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [16459,17276,17273,16297,16943,16460,17022,17023,17295,17782,17783,17257,16362,16311] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [24834,24467,24288,24289,24149,24538,24042,24041,23924,24045,24494,24803,24491,24103,24120,24121,24122,24102] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [23383,23544,23545,23546,24029,24108,24109,24343,24091,24089,24320,24362,24358,24349,24359,23411,23397,24868] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [17017,17018,17015,17016,17035,17036,17202,17203,17408,17748,17381,17717,17716,16959,17033,17034,16838,17063,17452,16935] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [8874,8876,8878,8879,11139,11140,11141,11102,13833,11206,11172,13111,13093,13088,13091,13109,13101,13780,8873,13092] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [20214,21148,21147,21010,20092,21008,21009,21118,21124,21125,20086,21126,20097,2062,2063,20117,20252,20254,20155,20152,20211,20212,20154,2643,20115,21136] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [3871,3873,3875,3872,3874,3381,3383,3448,3426,3812,4364,4347,4383] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [14860,14861,12469,12725,12707,12486,12710,12515,14872,12722,12495,12424,14556,14622,14889,12494,14937] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [17887,17921,19337,19114,19268,18235,18236,18233,18785,18237,18787,19338,18206,18205,18213,17949,17951,18190,18203,18204,19115,19113] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [25321,25322,25323,25299,25319,25873,25037,25347,26354,24973,25007,26201,26199,26200,26423,26424,25276,25035] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [9039,11102,11103,8968,11141,11115,8920,13111,13780,13782] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [14415,14340,14490,14936,14988,14414,14357,12526,12528,14494,14491,12571,12514,12525,14972,14973] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [19793,19796,19808,19811,21642,21975,22023,21946,21947,19555,19601,19569,19572] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [13665,13866,13535,13046,13604,14257,14260] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [10956,10957,11534,10908,10857,10845,10911,10909,10910,11515,11503,11508,11511,11527,11533,11513,11532,10004] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [9555,10253,10255,10522,10517,10519,10521,9604,9556,9354,6552,7544,10435,10432,10433] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [3383,3384,4347,1372,1373,4258,4345,4349,4350,3182,3130,380,4260] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [20751,20952,21343,21344,21346,20132,20621,20353,20380] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [10271,10272,11488,11590,11605,11607,10293,11434,11436,11608,11744] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        