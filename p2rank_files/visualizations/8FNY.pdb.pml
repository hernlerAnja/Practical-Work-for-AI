
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
        
        load "data/8FNY.pdb", protein
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
 
        load "data/8FNY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5037,5038,5035,5858,5859,5861,5088,6233,5286,5287,5791,5860,5862,5863,6226,6231,6232,6234,5445,3358,3403,3404,3405,3406,3662,3663,5023,5032,5030,5027,5029,5272,5273,5880,5881,3434,3435,5834,5857,5817,3659,3660,3661,3690,3691,3651,3683,5819,5821,5814,5795,3638,3637,3645,3650,4683,5107,4695,4684,5808,5810,5812,5827,4723,4725,4710,4724,3625,3937,3936,4711,5853,5856,3718,3719,5046,5047,5050,5054,5055,5059,5070,5071,5409,5410,5411,5405,5407,5408,5651,5913,5914,5915,6159,6246,6247,6249,5436,6238,5437,5060,5303,5305,5370,6326,6330,6334,6335,6314,6323,5063,5067,5066,5906] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [339,650,652,318,622,623,636,637,638,1293,1294,753,754,642,4109,4115,4117,4084,1136,4097,4103,4105,1292,651,653,654,656,4422,4046,4053,4055,4056,1277,1278,1285,751,337,1150,1275] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5799,5800,5265,5801,8564,8566,8514,8516,5163,5164,5165,5166,5168,8505,8883,8899,8886,5149,5150,5162,8517,8570,8578,8507,8576,8545,8558,8541,4821,4840,5657,4842,5777,5778,5785,5262,5264,5782,5154,5134,5135,5643,5784,5792] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4195,159,4221,4227,4229,158,133,165,170,157,4189,4191,1298,1302,1323,4092,731,736,728,175,740,743,174,182,183,4091,4197,4051,4052,4060,4062,4064,4065,4093,724,735,134,1291,1293,734] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [515,517,518,1341,1342,1343,1345,1347,1344,1346,1310,1301,1303,1305,1284,1312,1314,1724,762,1288,1307,1731,1729,1730,558,775,776,555,576,525,526,534,535,554,520,521,1365,1732,551] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [8521,8525,8526,4637,5829,5830,4662,4661,4668,4676,4686,4636,4660,8659,8679,8654,8658,8523,8681,8690,5805,5809,5827,5251,5254,5798,5800,8512,8513,4679,4677,4678,5239,5242,5245,5247,5246,5235,8517,5200,8650,8652,8552,8554] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1821,1812,1824,1828,1832,1748,1833,863,902,903,904,796,798,929,898,901,542,543,547,548,550,538,1397,1398,1399,1657,1656,1364,1674,1732,1731,1730,558,559,930,1736,1744,1739,900,938,1144] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [400,399,856,402,881,882,884,886,384,398,7352,7353,7355,7354,7457,885,887,1819,1817,350,352,895,918,919,920,916,382,7362,7363,7368,7369,7372,1805,896,883,955,952,7435,7436,7359,7414] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1808,1819,1817,1627,918,916,1614,1771,1807,1773,1818,1805,896,954,956,955,952,7415,7422,7414,1788] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4417,4416,8322,4434,4435,4436,8321,8331,8364,4376,4377,4447,4374,4375,8299,8333,7977,7981,8034,8036,8002,7980] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4109,4124,4125,4127,4110,4113,4126,4128,968,1135,1004,1005,4401,4389,373,978,360,362,943,976,345,355,359,947,361] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5454,5475,4858,4865,4862,4863,4864,5642,8571,4848,5450,5483,5485,5511,5512,4876,8574,8570,8586,8588,8589,8862,8850] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5567,5568,5569,5570,5571,6719,5537,5545,5603,8764,8796,8797,8798] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3348,5314,5081,5313,3318,3340,5018,5019] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        