
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
        
        load "data/4YKN.pdb", protein
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
 
        load "data/4YKN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14309,14734,14308,14330,14347,14349,14377,15508,14774,14775,14901,16767,16768,16771,16772,16774,16752,16754,16755,15625,15677,16548,14773,15551,15540,15554,15594,15596,16596,15536,14735,15351,15523,15557,15507,16595,14417,14267] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [9483,1278,1279,1346,1347,2729,2727,2678,2679,1232,1234,1177,2730,1345,9740,9484,9739,9816,9818,9799,9813,2680,8009,9832,8002,12852,12853,2604,9800,1381,1382,2603,2601,2571,1401,9768,1395,1398,1394,9801,9493,9457,9458,9479,9480,9485,9094,2746,9496,9497,2791,9114,9831,9465,9467] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [12641,12640,12642,11982,11983,12571,11991,11995,12636,12637,12638,12639,12035,11984,5531,11993,14907,14910,14911,14913,15372,12052,14909,14979,14980,14983,15330,15343,15344,14960,12724,12725,12053,14040,14046,15386,15369,15363,14042,14063,14064,14065,14041,14062] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [452,710,890,891,893,889,887,888,978,844,451,332,609,607,608,705,708,369,635,828,370,784,845,846,842,29,787,827,785,938,971,484,485,974,886,940,937] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [12876,9685,9686,9131,9679,9663,9665,9662,9661,9678,9666,17825,17834,17836,17799,17908,9510,9513,9514,9637,9523,9482,9638,12178,12839,12840,12841,12874,12875,12889,9689,12174,12176,12200,12198,17816,17818,17833] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4942,4943,4944,4970,9187,9238,9241,9244,9170,9171,9383,9382,9348,9333,9334,9330,9726,12216,12231,9188,9191,9706,9704,12918,9715,9716,9722,9184,12936,12271,12272,12273] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4262,4263,4275,3039,13408,4261,13407,13869,13870,13406,13873,13877,13845,13880,3394,3042,13392,13350,13401,13404,13405,4307,3027,3028,3029,3030,13526,13789,3024,13467,13464,13474,13475] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [15035,5562,5563,15110,15112,15095,15096,15111,15098,15168,15169,7181,7182,15109,15166,15186,5637,5638,15167,5677,5574,5575,15038,15097,7179,7180,7115,7118,5584,5585,5609,5581,7116,7135] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [8273,538,256,262,505,9615,9586,9585,9593,246,241,245,9588,8234,8235,9616,9650,9651,9612,8354,9618,8298,8297,8353,9664,9666,8271,8272,17940,17942] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [12804,12821,12817,15439,15465,13447,13448,15430,15436,15440,13466,13514,13328,13332,13390,13330,13386,13372,13385,13393,4767,12755,12759,12760,12704,15413,4784,4785,4786] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [13153,13154,5466,12556,5465,14075,14087,6839,6840,13221,13150,13223,13224,14001,14002,6843,13161,13163,14076,5482,5484,5486,7452,7473,7454,7491,5463] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7139,7074,7076,7071,6856,5532,6855,14104,14105,14638,14065,7078,6830,14616] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7056,11982,15036,15037,7054,7055,15038,11991,11995,11998,11932,5532,14976,15330,15343,15344,14958,14959,14960,14975,11993,14979,15362,15363] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [12524,12525,12523,5425,11919,11921,12477,5501,12541,5517,6955,5514,5515,5424,5426,5439,5429,5516,6954,11918,11920] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [417,419,785,805,46,48,50,49,420,421,1,5,47,51,29,786,369,784] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [12793,14860,14861,14829,12839,12841,17834,17836,14827,14828,15432,15448,15442,12824,12825,12826] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [5365,5366,5367,5368,6684,7364,7365,7366,7426,7427,6907,6911,6737,5364] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [50,49,420,421,51,417,419,683,684,785,790,784] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [9571,9574,2837,2839,2856,2834,2851,2852,9526,9541,9542,2893,2894,2835,1096,1098,2895,2789,2792,1175,1176,1177,1174,1195,1142,9531,9532] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5907,7319,6038,6040,6042,6650,5864,6298,6297,6309,6311] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [11212,11213,11158,11161,8778,8749,8777,10077,7726] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [18410,18411,18413,17264,18443,18409,18448,17117,17118] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [13086,13097,4642,13181,4640,4643,7529,4700,13201,4574,4575,7548,7552,7524,7553,13141,13142,13140] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        