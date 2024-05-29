
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
        
        load "data/8BCY.pdb", protein
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
 
        load "data/8BCY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4281,4286,4288,4567,4601,4256,4285,4287,4568,1266,4257,4258,4259,1253,1259,4296,5740,4295,4297,5741,5742,5743,5744,5775,1870,1871,1267,1270,5686,5683,5685,5711,5715,5705,5707,5719,5706,5712,5716,5334,5332,5333,5335,5905,5898,5899,5902,5323,5986,5987,5889,5882,4597,4599,4643,4644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5521,5594,5595,5523,5990,5455,5500,5501,5613,5614,5615,5454,5473,5996,6000,5999,5679,6558,6559,6562,6563,6565,5894,5896,5979,5651,5978,5452,5453,5499,5436,5515,5518,5519,5520,5522,6472,6557,6042,6539,6473,6445,6027,6034,6554,6556,6538] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3014,3019,3020,7782,7784,8559,3017,2803,4715,4716,4702,4710,7783,2818,3004,2821,7754,7755,7792,7789,3160,8560,8522,8523,8558,3175,2249,2255,3012,4709,3159,3172,3202,7850,7815,7816,7814,2809,2995,3010,3206] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4118,4125,4131,4132,4133,4448,4449,4078,4154,4155,4364,4401,4402,4403,4072,4074,4385,4395,4396,4387,4116,4386,4082,4107,4442,4433,2680,4410,4417,4419,4134,4135,2670,4439,4440,4444,2883,2907,4145,4144] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3144,2843,2934,944,2963,2960,2961,2933,2876,961,957,2979,3142,943,945,3151,3152,2969,3132,3134,3147] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6652,6362,6420,6674,6419,6465,6418,6342,6548,6549,6528,6667,6671,6672,6670,6673,6688,6317,6344,6719] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [4658,4633,5926,4926,4949,5931,5934,5958,5959,4928,4947,4946,4927,4978,4660,842,4661,845,856,834,4955,4956] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4715,4716,4702,3017,3119,3122,3126,2821,2818,3004,3103,3033,3010,3012] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5805,5806,5843,5844,5861,1282,1897,1899,1924,5768,5867,5885,5864,6520,1870,1283,5743,5884,1902,1903] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6726,6760,6761,7452,6696,6698,6787,7455,7416,7417,6797,6838,7415,6700,6725,6728] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3164,3165,7877,865,866,867,897,893,891,894,895,896,922,3166,7851,898,7885,7847,7846,7873,7880,7876,7875,7908,7907,7906,7850,931] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1922,1924,1282,1895,1897,1840,1916,1841,5841,5844,1296,1317,5802,5803,1279,1280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6578,5678,5679,6558,6559,6562,6563,6564,6565,5979,5632,5639,5651,5633,5634,5455,5613,5614,5615,5469,5635,5473] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [4083,4086,4095,4097,4103,7161,4055,4057,4059,4062,7043,7045,7070,7095,7185,7184,7032] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4557,1757,1758,2056,5303,4890,1195,1231,2052,2053,4850,2079,4851,1194,4854] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1794,1170,1204,1700,1793,1167,1686,1669,1667,1173,1174,1175,1177,1538,1540,1544,1568,1789,1792,1800] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4835,4838,4861,4851,4857,4833,1120,4853,4845,1132,4840,1122,1097,1096,1224,4554,1223] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [813,816,4906,784,518,835,837,517,4904,579,576,549,618,610,616,621,535,4937] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        